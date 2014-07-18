.class public abstract Lcom/airbnb/android/utils/CalendarHelper;
.super Ljava/lang/Object;
.source "CalendarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/CalendarHelper$GingerbreadCalendarHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarHelper"


# instance fields
.field protected calendar:Ljava/util/Calendar;

.field protected context:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/airbnb/android/utils/CalendarHelper;->context:Landroid/content/Context;

    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/CalendarHelper;->calendar:Ljava/util/Calendar;

    .line 73
    return-void
.end method

.method public static formatHour(I)Ljava/lang/String;
    .registers 5
    .param p0, "hour"    # I

    .prologue
    .line 99
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/text/SimpleDateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v1

    .line 100
    .local v1, "format":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 101
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 102
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 103
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;
    .registers 6
    .param p0, "time"    # Ljava/lang/Long;

    .prologue
    .line 45
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_16

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 47
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 51
    .end local v0    # "calendar":Ljava/util/Calendar;
    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static getCalendarFromYearMonthDay(III)Ljava/util/Calendar;
    .registers 5
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 56
    .local v0, "date":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 57
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 58
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 59
    return-object v0
.end method

.method public static getNext(I)Ljava/util/Calendar;
    .registers 4
    .param p0, "day"    # I

    .prologue
    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 112
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int v1, p0, v2

    .line 113
    .local v1, "daysToAdd":I
    if-gez v1, :cond_13

    .line 114
    add-int/lit8 v1, v1, 0x7

    .line 117
    :cond_13
    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 118
    return-object v0
.end method

.method public static getStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .registers 8
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    .line 26
    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    .line 27
    :cond_4
    const/4 v2, 0x0

    .line 32
    :goto_5
    return v2

    .line 30
    :cond_6
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 32
    .local v0, "duration":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_5
.end method

.method public static isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .registers 7
    .param p0, "c1"    # Ljava/util/Calendar;
    .param p1, "c2"    # Ljava/util/Calendar;

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 14
    if-ne p0, p1, :cond_7

    .line 20
    :cond_6
    :goto_6
    return v0

    .line 16
    :cond_7
    if-eqz p0, :cond_b

    if-nez p1, :cond_d

    :cond_b
    move v0, v1

    .line 17
    goto :goto_6

    .line 20
    :cond_d
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2b

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2b

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_6

    :cond_2b
    move v0, v1

    goto :goto_6
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CalendarHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Lcom/airbnb/android/utils/CalendarHelper$GingerbreadCalendarHelper;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/CalendarHelper$GingerbreadCalendarHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 4
    .param p0, "date"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 37
    .local v0, "cellTimeMidnight":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 38
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 39
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 40
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 41
    return-object v0
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/utils/CalendarHelper;->calendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public abstract getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
.end method

.method public setTime(Ljava/util/Date;)V
    .registers 5
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/utils/CalendarHelper;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 77
    return-void
.end method
