.class public Lcom/airbnb/android/adapters/SearchCalendarAdapter;
.super Lcom/airbnb/android/adapters/BaseCalendarAdapter;
.source "SearchCalendarAdapter.java"


# instance fields
.field private mSelectionTestLocal:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 5
    .param p1, "month"    # Ljava/util/Calendar;
    .param p2, "startTime"    # Ljava/util/Calendar;
    .param p3, "endTime"    # Ljava/util/Calendar;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;-><init>(Ljava/util/Calendar;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->setStartTime(Ljava/util/Calendar;)V

    .line 26
    invoke-virtual {p0, p3}, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->setEndTime(Ljava/util/Calendar;)V

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    .line 28
    return-void
.end method


# virtual methods
.method public getDates(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    if-nez v1, :cond_8

    .line 55
    const-string/jumbo v1, ""

    .line 59
    :goto_7
    return-object v1

    .line 57
    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const v1, 0x7f0e013d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    if-eqz v1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_52
    const-string/jumbo v1, ""

    goto :goto_49
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 34
    iget-object v3, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 35
    .local v0, "cellTime":J
    iget-object v3, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    invoke-virtual {v3, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 37
    iget-object v3, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    if-eqz v3, :cond_5c

    .line 40
    iget-object v3, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    if-nez v3, :cond_2b

    iget-object v3, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    invoke-static {v3, v4}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_3f

    :cond_2b
    iget-object v3, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    iget-object v4, p0, Lcom/airbnb/android/adapters/SearchCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 42
    :cond_3f
    const v3, 0x7f0a0080

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 45
    .local v2, "textColor":I
    const v3, 0x7f080069

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .end local v2    # "textColor":I
    :cond_5c
    return-object p2
.end method
