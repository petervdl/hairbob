.class public Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;
.super Lcom/airbnb/android/activities/AirActivity;
.source "ReviewRatingsActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/reviews/ReviewRatingFragment$RatingUpdatedCallback;


# static fields
.field private static final KEY_EDIT_FLAG:Ljava/lang/String; = "edit"

.field private static final KEY_EDIT_RECOMMEND_FLAG:Ljava/lang/String; = "edit_recommend"

.field private static final KEY_REVIEW:Ljava/lang/String; = "review"

.field private static final PAGER_SCROLL_DURATION:I = 0x190

.field private static final SHOW_NEXT_RATING_PAGE_DELAY:J = 0x1f4L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEditMode:Z

.field private mGuestName:Landroid/widget/TextView;

.field private mHeader:Landroid/widget/FrameLayout;

.field private mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

.field private mHostImage:Lcom/airbnb/android/views/HaloImageView;

.field private mListingName:Landroid/widget/TextView;

.field private mReservationDates:Landroid/widget/TextView;

.field private mReview:Lcom/airbnb/android/models/Review;

.field private mViewPager:Lcom/airbnb/android/views/RatingsViewPager;

.field private mViewPagerAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/airbnb/android/activities/AirActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;)Lcom/airbnb/android/views/RatingsViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPager:Lcom/airbnb/android/views/RatingsViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;)Lcom/airbnb/android/adapters/ReviewRatingsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPagerAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    return-object v0
.end method

.method public static intentForEditRecommend(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->intentForEditReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "edit_recommend"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method public static intentForEditReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 66
    invoke-static {p0, p1}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "edit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    return-object v0
.end method

.method public static intentForReview(Landroid/content/Context;Lcom/airbnb/android/models/Review;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "review"    # Lcom/airbnb/android/models/Review;

    .prologue
    .line 58
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "review"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 61
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 62
    return-object v1
.end method

.method private setupCustomScroller()V
    .registers 6

    .prologue
    .line 156
    :try_start_0
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v4, "mScroller"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 157
    .local v2, "scrollerField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 159
    new-instance v1, Lcom/airbnb/android/views/CustomSpeedScroller;

    iget-object v3, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPager:Lcom/airbnb/android/views/RatingsViewPager;

    invoke-virtual {v3}, Lcom/airbnb/android/views/RatingsViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v1, v3, v4}, Lcom/airbnb/android/views/CustomSpeedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 160
    .local v1, "scroller":Lcom/airbnb/android/views/CustomSpeedScroller;
    const/16 v3, 0x190

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/CustomSpeedScroller;->setScrollDuration(I)V

    .line 161
    iget-object v3, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPager:Lcom/airbnb/android/views/RatingsViewPager;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_27} :catch_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_32
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_27} :catch_3c

    .line 170
    .end local v1    # "scroller":Lcom/airbnb/android/views/CustomSpeedScroller;
    .end local v2    # "scrollerField":Ljava/lang/reflect/Field;
    :goto_27
    return-void

    .line 163
    :catch_28
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    sget-object v3, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unexpected error in setting up Review ViewPager custom scroller"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 165
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_32
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unexpected error in setting up Review ViewPager custom scroller"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27

    .line 167
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3c
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unexpected error in setting up Review ViewPager custom scroller"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 79
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/AirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v6, 0x7f03000d

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v6, "review"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/Review;

    iput-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReview:Lcom/airbnb/android/models/Review;

    .line 85
    const-string/jumbo v6, "edit"

    invoke-virtual {v1, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mEditMode:Z

    .line 87
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v4

    .line 88
    .local v4, "reviewee":Lcom/airbnb/android/models/User;
    const v6, 0x7f080040

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeader:Landroid/widget/FrameLayout;

    .line 89
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeader:Landroid/widget/FrameLayout;

    new-instance v7, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$1;

    invoke-direct {v7, p0, v4}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$1;-><init>(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;Lcom/airbnb/android/models/User;)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeader:Landroid/widget/FrameLayout;

    const v7, 0x7f0800a2

    invoke-static {v6, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/AirImageView;

    iput-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

    .line 97
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v6

    if-eqz v6, :cond_13c

    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/models/Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    .line 98
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    :goto_60
    if-eqz v2, :cond_13f

    .line 99
    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPictureUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

    invoke-static {v6, v7}, Lcom/airbnb/android/utils/BlurredBitmap;->fetchAndBlur(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 104
    :goto_6b
    const v6, 0x7f08003e

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/RatingsViewPager;

    iput-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPager:Lcom/airbnb/android/views/RatingsViewPager;

    .line 105
    invoke-direct {p0}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->setupCustomScroller()V

    .line 107
    new-instance v6, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    iget-object v8, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReview:Lcom/airbnb/android/models/Review;

    iget-boolean v9, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mEditMode:Z

    invoke-direct {v6, v7, v8, v9}, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Review;Z)V

    iput-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPagerAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    .line 108
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPager:Lcom/airbnb/android/views/RatingsViewPager;

    iget-object v7, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPagerAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    invoke-virtual {v6, v7}, Lcom/airbnb/android/views/RatingsViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 110
    const v6, 0x7f08003f

    invoke-virtual {p0, v6}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/DotsCounter;

    .line 111
    .local v0, "dots":Lcom/airbnb/android/views/DotsCounter;
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPagerAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    invoke-virtual {v6}, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->getCount()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/airbnb/android/views/DotsCounter;->setNumDots(I)V

    .line 113
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPager:Lcom/airbnb/android/views/RatingsViewPager;

    new-instance v7, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$2;

    invoke-direct {v7, p0, v0}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$2;-><init>(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;Lcom/airbnb/android/views/DotsCounter;)V

    invoke-virtual {v6, v7}, Lcom/airbnb/android/views/RatingsViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 129
    const-string/jumbo v6, "edit_recommend"

    invoke-virtual {v1, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 130
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPager:Lcom/airbnb/android/views/RatingsViewPager;

    iget-object v7, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mViewPagerAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    invoke-virtual {v7}, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->getRecommendedIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/airbnb/android/views/RatingsViewPager;->setCurrentItem(I)V

    .line 133
    :cond_bf
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeader:Landroid/widget/FrameLayout;

    const v7, 0x7f0800a3

    invoke-static {v6, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/views/HaloImageView;

    iput-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHostImage:Lcom/airbnb/android/views/HaloImageView;

    .line 134
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeader:Landroid/widget/FrameLayout;

    const v7, 0x7f0800a4

    invoke-static {v6, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mGuestName:Landroid/widget/TextView;

    .line 135
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeader:Landroid/widget/FrameLayout;

    const v7, 0x7f0800a5

    invoke-static {v6, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mListingName:Landroid/widget/TextView;

    .line 136
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeader:Landroid/widget/FrameLayout;

    const v7, 0x7f0800a6

    invoke-static {v6, v7}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReservationDates:Landroid/widget/TextView;

    .line 138
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHostImage:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "revieweeFirstName":Ljava/lang/String;
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mGuestName:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const v6, 0x7f0e065b

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 144
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v3

    .line 145
    .local v3, "reservation":Lcom/airbnb/android/models/Reservation;
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReservationDates:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v3}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v8

    invoke-static {p0, v7, v8}, Lcom/airbnb/android/utils/DateHelper;->getStringDateSpan(Landroid/content/Context;Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mListingName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Review;->getListingName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-boolean v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mEditMode:Z

    if-nez v6, :cond_13b

    .line 150
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mReview:Lcom/airbnb/android/models/Review;

    invoke-static {v6}, Lcom/airbnb/android/analytics/ReviewsAnalytics;->trackRatingSection(Lcom/airbnb/android/models/Review;)V

    .line 152
    :cond_13b
    return-void

    .line 97
    .end local v0    # "dots":Lcom/airbnb/android/views/DotsCounter;
    .end local v2    # "listing":Lcom/airbnb/android/models/Listing;
    .end local v3    # "reservation":Lcom/airbnb/android/models/Reservation;
    .end local v5    # "revieweeFirstName":Ljava/lang/String;
    :cond_13c
    const/4 v2, 0x0

    goto/16 :goto_60

    .line 101
    .restart local v2    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_13f
    iget-object v6, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeaderBackground:Lcom/airbnb/android/views/AirImageView;

    const v7, 0x7f0200db

    invoke-virtual {v6, v7}, Lcom/airbnb/android/views/AirImageView;->setImageResource(I)V

    goto/16 :goto_6b
.end method

.method public onRatingUpdated()V
    .registers 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;->mHeader:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity$3;-><init>(Lcom/airbnb/android/activities/reviews/ReviewRatingsActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method
