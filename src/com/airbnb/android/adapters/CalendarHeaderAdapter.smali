.class public Lcom/airbnb/android/adapters/CalendarHeaderAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarHeaderAdapter.java"


# static fields
.field private static sDayAbbreviations:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 23
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    .line 26
    .local v1, "firstDayOfWeek":I
    const-class v5, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;

    monitor-enter v5

    .line 27
    :try_start_e
    sget-object v4, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;->sDayAbbreviations:[Ljava/lang/String;

    if-nez v4, :cond_46

    .line 28
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "E"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 29
    .local v2, "format":Ljava/text/SimpleDateFormat;
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/String;

    sput-object v4, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;->sDayAbbreviations:[Ljava/lang/String;

    .line 31
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    sget-object v4, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;->sDayAbbreviations:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_46

    .line 32
    const/4 v4, 0x7

    add-int v6, v1, v3

    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 33
    sget-object v4, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;->sDayAbbreviations:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 31
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 36
    .end local v2    # "format":Ljava/text/SimpleDateFormat;
    .end local v3    # "i":I
    :cond_46
    monitor-exit v5

    .line 37
    return-void

    .line 36
    :catchall_48
    move-exception v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_e .. :try_end_4a} :catchall_48

    throw v4
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;->sDayAbbreviations:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    if-nez p2, :cond_1e

    .line 57
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    const v2, 0x7f08006c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "header":Landroid/widget/TextView;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    .end local v0    # "header":Landroid/widget/TextView;
    :cond_1e
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, "tv":Landroid/widget/TextView;
    sget-object v2, Lcom/airbnb/android/adapters/CalendarHeaderAdapter;->sDayAbbreviations:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-object p2
.end method
