.class public Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;
.super Lcom/airbnb/android/adapters/BaseCalendarAdapter;
.source "BookingDetailsCalendarAdapter.java"


# instance fields
.field private mMinimumNights:I

.field private mMinimumNightsEndDate:Ljava/util/Calendar;

.field private mSelectionTestLocal:Ljava/util/Calendar;

.field private mUnavailableDates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "minimumNights"    # I

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;-><init>(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .registers 6
    .param p1, "month"    # Ljava/util/Calendar;
    .param p2, "startTime"    # Ljava/util/Calendar;
    .param p3, "endTime"    # Ljava/util/Calendar;
    .param p4, "minimumNights"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;-><init>(Ljava/util/Calendar;)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->setStartTime(Ljava/util/Calendar;)V

    .line 28
    invoke-virtual {p0, p3}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->setEndTime(Ljava/util/Calendar;)V

    .line 29
    iput p4, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mMinimumNights:I

    .line 30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    .line 31
    return-void
.end method

.method private isWithinMinimumStayDuration(Ljava/util/Calendar;)Z
    .registers 3
    .param p1, "cellTimeMidnight"    # Ljava/util/Calendar;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mMinimumNightsEndDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mMinimumNightsEndDate:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/BaseCalendarAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 37
    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 38
    .local v0, "cellTime":J
    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    invoke-static {v7}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 42
    .local v2, "cellTimeMidnight":Ljava/util/Calendar;
    const v7, 0x7f080069

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 43
    .local v3, "dateTextView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mUnavailableDates:Ljava/util/HashSet;

    if-eqz v7, :cond_59

    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mUnavailableDates:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 45
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f0a0036

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 46
    const v7, 0x7f0a001b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_58
    :goto_58
    return-object p2

    .line 48
    :cond_59
    invoke-direct {p0, v2}, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->isWithinMinimumStayDuration(Ljava/util/Calendar;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 49
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 50
    .restart local v4    # "res":Landroid/content/res/Resources;
    const v7, 0x7f0a002e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    const v7, 0x7f0a00a4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_58

    .line 53
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_7c
    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    if-eqz v7, :cond_58

    .line 54
    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .line 55
    .local v5, "softEndTime":Ljava/util/Calendar;
    const/4 v7, 0x6

    iget v8, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mMinimumNights:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 58
    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    iget-object v8, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    invoke-static {v7, v8}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v7

    if-nez v7, :cond_ae

    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    iget-object v8, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mStartTime:Ljava/util/Calendar;

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    iget-object v7, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    iget-object v8, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mEndTime:Ljava/util/Calendar;

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 60
    :cond_ae
    const v7, 0x7f0a0080

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 63
    .local v6, "textColor":I
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_58
.end method

.method public isEnabled(I)Z
    .registers 9
    .param p1, "position"    # I

    .prologue
    .line 79
    iget-object v5, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mMillisCache:Lcom/airbnb/android/utils/EasyCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/airbnb/android/utils/EasyCache;->getEntry(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 80
    .local v0, "cellTime":J
    iget-object v5, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 81
    iget-object v5, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mSelectionTestLocal:Ljava/util/Calendar;

    invoke-static {v5}, Lcom/airbnb/android/utils/CalendarHelper;->roundDateToMidnight(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 82
    .local v2, "cellTimeMidnight":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 87
    .local v3, "cellTimeMidnightMills":J
    iget-object v5, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mUnavailableDates:Ljava/util/HashSet;

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mUnavailableDates:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    :cond_2f
    const/4 v5, 0x1

    :goto_30
    return v5

    :cond_31
    const/4 v5, 0x0

    goto :goto_30
.end method

.method public setMinimumNightsEndDate(Ljava/util/Calendar;)V
    .registers 2
    .param p1, "minimumNightsEndDate"    # Ljava/util/Calendar;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mMinimumNightsEndDate:Ljava/util/Calendar;

    .line 96
    return-void
.end method

.method public setUnavailableDates(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "unavailableDates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/airbnb/android/adapters/BookingDetailsCalendarAdapter;->mUnavailableDates:Ljava/util/HashSet;

    .line 92
    return-void
.end method
