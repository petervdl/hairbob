.class public Lcom/airbnb/android/views/GroupedDates;
.super Landroid/widget/LinearLayout;
.source "GroupedDates.java"


# instance fields
.field private mCheckInDate:Ljava/util/Calendar;

.field mCheckInText:Landroid/widget/TextView;

.field private mCheckOutDate:Ljava/util/Calendar;

.field mCheckOutText:Landroid/widget/TextView;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mHideNightsCount:Z

.field mNumNightsText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedDates;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedDates;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedDates;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedDates;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030116

    invoke-virtual {v2, v3, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 58
    .local v1, "content":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 61
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/GroupedDates;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 64
    if-eqz p2, :cond_39

    .line 65
    sget-object v2, Lcom/airbnb/android/R$styleable;->GroupedDates:[I

    invoke-virtual {p1, p2, v2, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/views/GroupedDates;->mHideNightsCount:Z

    .line 67
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    iget-boolean v2, p0, Lcom/airbnb/android/views/GroupedDates;->mHideNightsCount:Z

    if-eqz v2, :cond_39

    .line 70
    iget-object v2, p0, Lcom/airbnb/android/views/GroupedDates;->mNumNightsText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_39
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedDates;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0494

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedDates;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/airbnb/android/views/GroupedDates;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 76
    return-void
.end method

.method private updateNumNightsText()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 119
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckInDate:Ljava/util/Calendar;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckOutDate:Ljava/util/Calendar;

    if-eqz v1, :cond_34

    iget-boolean v1, p0, Lcom/airbnb/android/views/GroupedDates;->mHideNightsCount:Z

    if-nez v1, :cond_34

    .line 120
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckInDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckOutDate:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/CalendarHelper;->getStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    .line 121
    .local v0, "numNights":I
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedDates;->mNumNightsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/airbnb/android/views/GroupedDates;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d003c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedDates;->mNumNightsText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    .end local v0    # "numNights":I
    :goto_33
    return-void

    .line 124
    :cond_34
    iget-object v1, p0, Lcom/airbnb/android/views/GroupedDates;->mNumNightsText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_33
.end method


# virtual methods
.method public getCheckInDate()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckInDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public getCheckOutDate()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckOutDate:Ljava/util/Calendar;

    return-object v0
.end method

.method public setCheckInDate(Ljava/util/Calendar;)V
    .registers 5
    .param p1, "checkInDate"    # Ljava/util/Calendar;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckInDate:Ljava/util/Calendar;

    .line 85
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckInDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1b

    .line 86
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckInText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/views/GroupedDates;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckInDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_17
    invoke-direct {p0}, Lcom/airbnb/android/views/GroupedDates;->updateNumNightsText()V

    .line 94
    return-void

    .line 89
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckInText:Landroid/widget/TextView;

    const v1, 0x7f0e06d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_17
.end method

.method public setCheckOutDate(Ljava/util/Calendar;)V
    .registers 5
    .param p1, "checkOutDate"    # Ljava/util/Calendar;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckOutDate:Ljava/util/Calendar;

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckOutDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1b

    .line 104
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckOutText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/views/GroupedDates;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckOutDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_17
    invoke-direct {p0}, Lcom/airbnb/android/views/GroupedDates;->updateNumNightsText()V

    .line 111
    return-void

    .line 107
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedDates;->mCheckOutText:Landroid/widget/TextView;

    const v1, 0x7f0e06d6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_17
.end method

.method public setHideNightsCount(Z)V
    .registers 2
    .param p1, "hideNightsCount"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/airbnb/android/views/GroupedDates;->mHideNightsCount:Z

    .line 115
    invoke-direct {p0}, Lcom/airbnb/android/views/GroupedDates;->updateNumNightsText()V

    .line 116
    return-void
.end method
