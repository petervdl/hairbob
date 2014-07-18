.class public Lcom/airbnb/android/views/DateAndGuestCountView;
.super Landroid/widget/LinearLayout;
.source "DateAndGuestCountView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;
    }
.end annotation


# instance fields
.field private mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

.field private mGroupedDates:Lcom/airbnb/android/views/GroupedDates;

.field private mIsBookItFlow:Z

.field private mViewer:Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003d

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/GroupedDates;

    iput-object v1, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedDates:Lcom/airbnb/android/views/GroupedDates;

    .line 44
    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/GroupedCounter;

    iput-object v1, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/DateAndGuestCountView;)Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/DateAndGuestCountView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mViewer:Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/DateAndGuestCountView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/DateAndGuestCountView;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mIsBookItFlow:Z

    return v0
.end method


# virtual methods
.method public init(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;IILjava/util/Calendar;Ljava/util/Calendar;Lcom/airbnb/android/models/SpecialOffer;Z)V
    .registers 14
    .param p1, "viewer"    # Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;
    .param p2, "guestCount"    # I
    .param p3, "maxGuestCount"    # I
    .param p4, "checkIn"    # Ljava/util/Calendar;
    .param p5, "checkOut"    # Ljava/util/Calendar;
    .param p6, "optionalSpecialOffer"    # Lcom/airbnb/android/models/SpecialOffer;
    .param p7, "showSectionHeaders"    # Z

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 63
    iput-object p1, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mViewer:Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;

    .line 64
    if-le p2, v4, :cond_63

    if-le p3, v4, :cond_63

    move v0, v2

    .line 65
    .local v0, "enableGuest":Z
    :goto_a
    if-eqz v0, :cond_11

    .line 66
    if-lt p2, v2, :cond_65

    .end local p2    # "guestCount":I
    :goto_e
    invoke-virtual {p0, p2}, Lcom/airbnb/android/views/DateAndGuestCountView;->setGuestCount(I)V

    .line 68
    :cond_11
    invoke-virtual {p0, p4}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckInDate(Ljava/util/Calendar;)V

    .line 69
    invoke-virtual {p0, p5}, Lcom/airbnb/android/views/DateAndGuestCountView;->setCheckOutDate(Ljava/util/Calendar;)V

    .line 70
    if-eqz p6, :cond_67

    move v1, v2

    .line 72
    .local v1, "isSpecialOffer":Z
    :goto_1a
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mViewer:Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;

    invoke-interface {v4}, Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;->getFlow()Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->BOOK_IT:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    if-ne v4, v5, :cond_69

    move v4, v2

    :goto_25
    iput-boolean v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mIsBookItFlow:Z

    .line 75
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedDates:Lcom/airbnb/android/views/GroupedDates;

    new-instance v5, Lcom/airbnb/android/views/DateAndGuestCountView$1;

    invoke-direct {v5, p0, v1}, Lcom/airbnb/android/views/DateAndGuestCountView$1;-><init>(Lcom/airbnb/android/views/DateAndGuestCountView;Z)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedDates;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    if-eqz v0, :cond_8d

    .line 97
    if-eqz v1, :cond_6b

    .line 98
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v4}, Lcom/airbnb/android/views/GroupedCounter;->disableUserInput()V

    .line 99
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

    new-instance v5, Lcom/airbnb/android/views/DateAndGuestCountView$2;

    invoke-direct {v5, p0}, Lcom/airbnb/android/views/DateAndGuestCountView$2;-><init>(Lcom/airbnb/android/views/DateAndGuestCountView;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCounter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :goto_44
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mViewer:Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;

    iget-object v5, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v5}, Lcom/airbnb/android/views/GroupedCounter;->getSelectedValue()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;->setGuestCount(I)V

    .line 138
    :goto_4f
    const v5, 0x7f0800a9

    if-eqz p7, :cond_56

    if-nez v0, :cond_9a

    :cond_56
    move v4, v2

    :goto_57
    invoke-static {v5, p0, v4}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(ILandroid/view/View;Z)V

    .line 139
    const v4, 0x7f0800a7

    if-nez p7, :cond_9c

    :goto_5f
    invoke-static {v4, p0, v2}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(ILandroid/view/View;Z)V

    .line 141
    return-void

    .end local v0    # "enableGuest":Z
    .end local v1    # "isSpecialOffer":Z
    .restart local p2    # "guestCount":I
    :cond_63
    move v0, v3

    .line 64
    goto :goto_a

    .restart local v0    # "enableGuest":Z
    :cond_65
    move p2, v2

    .line 66
    goto :goto_e

    .end local p2    # "guestCount":I
    :cond_67
    move v1, v3

    .line 70
    goto :goto_1a

    .restart local v1    # "isSpecialOffer":Z
    :cond_69
    move v4, v3

    .line 72
    goto :goto_25

    .line 107
    :cond_6b
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v4, p3}, Lcom/airbnb/android/views/GroupedCounter;->setMaxValue(I)V

    .line 108
    invoke-virtual {p0}, Lcom/airbnb/android/views/DateAndGuestCountView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    if-ge p3, v4, :cond_82

    .line 109
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v4, v3}, Lcom/airbnb/android/views/GroupedCounter;->showPlusOnMax(Z)V

    .line 113
    :cond_82
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

    new-instance v5, Lcom/airbnb/android/views/DateAndGuestCountView$3;

    invoke-direct {v5, p0}, Lcom/airbnb/android/views/DateAndGuestCountView$3;-><init>(Lcom/airbnb/android/views/DateAndGuestCountView;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCounter;->setOnValueChangeListener(Lcom/airbnb/android/views/GroupedCounter$OnValueChangeListener;)V

    goto :goto_44

    .line 134
    :cond_8d
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedDates:Lcom/airbnb/android/views/GroupedDates;

    invoke-virtual {v4, v2}, Lcom/airbnb/android/views/GroupedDates;->setHideNightsCount(Z)V

    .line 135
    iget-object v4, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/GroupedCounter;->setVisibility(I)V

    goto :goto_4f

    :cond_9a
    move v4, v3

    .line 138
    goto :goto_57

    :cond_9c
    move v2, v3

    .line 139
    goto :goto_5f
.end method

.method public initWithNoGuests(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 12
    .param p1, "viewer"    # Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;
    .param p2, "checkIn"    # Ljava/util/Calendar;
    .param p3, "checkOut"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, -0x1

    .line 48
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/airbnb/android/views/DateAndGuestCountView;->init(Lcom/airbnb/android/views/DateAndGuestCountView$DateAndGuestCountViewer;IILjava/util/Calendar;Ljava/util/Calendar;Lcom/airbnb/android/models/SpecialOffer;Z)V

    .line 49
    return-void
.end method

.method public setCheckInDate(Ljava/util/Calendar;)V
    .registers 3
    .param p1, "checkInDate"    # Ljava/util/Calendar;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedDates:Lcom/airbnb/android/views/GroupedDates;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/GroupedDates;->setCheckInDate(Ljava/util/Calendar;)V

    .line 152
    return-void
.end method

.method public setCheckOutDate(Ljava/util/Calendar;)V
    .registers 3
    .param p1, "checkOutDate"    # Ljava/util/Calendar;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedDates:Lcom/airbnb/android/views/GroupedDates;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/GroupedDates;->setCheckOutDate(Ljava/util/Calendar;)V

    .line 156
    return-void
.end method

.method public setGuestCount(I)V
    .registers 3
    .param p1, "guestCount"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/airbnb/android/views/DateAndGuestCountView;->mGroupedCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 148
    return-void
.end method
