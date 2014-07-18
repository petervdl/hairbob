.class public Lcom/airbnb/android/adapters/ListingPhotoAdapter;
.super Lcom/airbnb/android/adapters/BaseListingAdapter;
.source "ListingPhotoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;,
        Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;,
        Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;,
        Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    }
.end annotation


# static fields
.field private static final HEART_ANIMATION_DELAY:I = 0xfa

.field private static final HIDE_HINT_DELAY:I = 0xfa0

.field private static final HINT_ANIM_DURATION:J = 0x1f4L

.field private static HINT_ICONS_MARGIN_TOP:I = 0x0

.field private static final SHOW_HINT_DELAY:I = 0x1f4

.field private static final TAP_DIST_THRESHOLD_INCHES:F = 0.25f

.field public static final TAP_THRESHOLD:I = 0xfa


# instance fields
.field private mAddToWishListListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;

.field protected mCurrentPage:Landroid/util/SparseIntArray;

.field private final mHandler:Landroid/os/Handler;

.field private mHideHintRunnable:Ljava/lang/Runnable;

.field private mInvDensityDpi:F

.field private mListingShownListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;

.field protected mNumColumns:I

.field private mScaleUpAnim:Landroid/view/animation/Animation;

.field private mSelectedDrawable:Landroid/graphics/drawable/Drawable;

.field private mShowHintRunnable:Ljava/lang/Runnable;

.field private mSwipedToMapAndPhoto:Z

.field protected mTrackingPosition:Ljava/lang/String;

.field private mUnselectedDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->HINT_ICONS_MARGIN_TOP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V
    .registers 9
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "allowPagination"    # Z
    .param p3, "addToWishListListener"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    .param p4, "trackingPosition"    # Ljava/lang/String;
    .param p5, "numColumns"    # I

    .prologue
    .line 110
    invoke-direct {p0, p2}, Lcom/airbnb/android/adapters/BaseListingAdapter;-><init>(Z)V

    .line 79
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p4, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    .line 113
    const v1, 0x7f040012

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mScaleUpAnim:Landroid/view/animation/Animation;

    .line 114
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mScaleUpAnim:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 115
    iput-object p3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mAddToWishListListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;

    .line 117
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mCurrentPage:Landroid/util/SparseIntArray;

    .line 119
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 120
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 121
    const/high16 v1, 0x3f800000

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mInvDensityDpi:F

    .line 123
    iput p5, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mNumColumns:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02023a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020239

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mAddToWishListListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mShowHintRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;I)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;
    .param p1, "x1"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    .param p2, "x2"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->fadeOutHintIcons(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;
    .param p1, "x1"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->longPressToAddToWishList(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/view/animation/Animation;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mScaleUpAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    .prologue
    .line 67
    iget v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mInvDensityDpi:F

    return v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHideHintRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHideHintRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 67
    sget v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->HINT_ICONS_MARGIN_TOP:I

    return v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/view/View;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->flashHintIcons(Landroid/view/View;)V

    return-void
.end method

.method private animateWishListButtonFlip(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 508
    const-string/jumbo v1, "rotationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_16

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 509
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 510
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 511
    return-void

    .line 508
    :array_16
    .array-data 4
        0x0
        0x43b40000
    .end array-data
.end method

.method private fadeOutHintIcons(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;I)V
    .registers 6
    .param p1, "viewHolder"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    .param p2, "newPosition"    # I

    .prologue
    .line 567
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mCurrentPage:Landroid/util/SparseIntArray;

    iget v2, p1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->position:I

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 568
    .local v0, "oldHorizontalScrollPosition":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2a

    .line 571
    if-nez p2, :cond_2b

    .line 573
    invoke-static {}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markSwipedToMap()V

    .line 574
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    const-string/jumbo v2, "swipe_to_map"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/SwipeIndicatorsAnalytics;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :cond_18
    :goto_18
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHideHintRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2a

    .line 582
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHideHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mShowHintRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    :cond_2a
    return-void

    .line 576
    :cond_2b
    const/4 v1, 0x2

    if-ne p2, v1, :cond_18

    .line 578
    invoke-static {}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markSwipedToNextPhoto()V

    goto :goto_18
.end method

.method private flashHintIcons(Landroid/view/View;)V
    .registers 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v9, 0x1f4

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000

    const/4 v6, 0x1

    .line 526
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->hasSwipedToSeeMapAndPhoto(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 560
    :cond_10
    :goto_10
    return-void

    .line 532
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 533
    .local v1, "obj":Ljava/lang/Object;
    if-eqz v1, :cond_10

    instance-of v4, v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    if-eqz v4, :cond_10

    move-object v3, v1

    .line 537
    check-cast v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    .line 538
    .local v3, "viewHolder":Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    iget-object v4, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v4}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v4

    if-ne v4, v6, :cond_10

    .line 542
    iget-object v0, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->mapHint:Landroid/widget/ImageView;

    .line 543
    .local v0, "mapHint":Landroid/view/View;
    iget-object v2, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->photoHint:Landroid/widget/ImageView;

    .line 545
    .local v2, "photoHint":Landroid/view/View;
    if-eqz v2, :cond_10

    .line 546
    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    aput v7, v5, v8

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 547
    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    aput v7, v5, v8

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 548
    iget-object v4, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    const-string/jumbo v5, "show_indicators"

    invoke-static {v4, v5}, Lcom/airbnb/android/analytics/SwipeIndicatorsAnalytics;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    new-instance v4, Lcom/airbnb/android/adapters/ListingPhotoAdapter$8;

    invoke-direct {v4, p0, v2, v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$8;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/view/View;Landroid/view/View;)V

    iput-object v4, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHideHintRunnable:Ljava/lang/Runnable;

    .line 558
    iget-object v4, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHideHintRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_10
.end method

.method public static getImageHeight(Landroid/view/ViewGroup;I)I
    .registers 4
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "numColumns"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const v1, 0x3f2aaaab

    .line 265
    instance-of v0, p0, Lcom/airbnb/android/views/AirStaggeredGridView;

    if-eqz v0, :cond_11

    .line 266
    check-cast p0, Lcom/airbnb/android/views/AirStaggeredGridView;

    .end local p0    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirStaggeredGridView;->getColumnWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 270
    :goto_10
    return v0

    .line 267
    .restart local p0    # "parent":Landroid/view/ViewGroup;
    :cond_11
    instance-of v0, p0, Landroid/widget/GridView;

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isAtLeastJellyBean()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 268
    check-cast p0, Landroid/widget/GridView;

    .end local p0    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/widget/GridView;->getColumnWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_10

    .line 270
    .restart local p0    # "parent":Landroid/view/ViewGroup;
    :cond_25
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_10
.end method

.method private hasSwipedToSeeMapAndPhoto(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mSwipedToMapAndPhoto:Z

    if-nez v0, :cond_16

    .line 648
    invoke-static {p1}, Lcom/airbnb/android/utils/SharedPrefsHelper;->hasSwipedToMapAndPhoto(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mSwipedToMapAndPhoto:Z

    .line 649
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mSwipedToMapAndPhoto:Z

    if-eqz v0, :cond_16

    .line 651
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    const-string/jumbo v1, "disable_indicators"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SwipeIndicatorsAnalytics;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_16
    iget-boolean v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mSwipedToMapAndPhoto:Z

    return v0
.end method

.method private longPressToAddToWishList(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V
    .registers 12
    .param p1, "viewHolder"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 464
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getWishLists()Ljava/util/List;

    move-result-object v9

    .line 465
    .local v9, "wishLists":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    if-eqz v9, :cond_5c

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5c

    .line 466
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string/jumbo v2, "long_press"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 468
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/models/Collection;

    .line 469
    .local v8, "wishList":Lcom/airbnb/android/models/Collection;
    iget-object v1, p1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/models/Listing;

    .line 470
    .local v7, "listingToAdd":Lcom/airbnb/android/models/Listing;
    new-instance v0, Lcom/airbnb/android/requests/UpdateWishListRequest;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v1

    invoke-virtual {v7}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    new-instance v6, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;

    invoke-direct {v6, p0, v8, v7}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$7;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;)V

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/requests/UpdateWishListRequest;-><init>(JJZLcom/airbnb/android/requests/RequestListener;)V

    .line 492
    .local v0, "request":Lcom/airbnb/android/requests/UpdateWishListRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/UpdateWishListRequest;->execute()V

    .line 494
    iget-object v1, p1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 495
    iget-object v1, p1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v1, p1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->animateWishListButtonFlip(Landroid/view/View;)V

    .line 499
    .end local v0    # "request":Lcom/airbnb/android/requests/UpdateWishListRequest;
    .end local v7    # "listingToAdd":Lcom/airbnb/android/models/Listing;
    .end local v8    # "wishList":Lcom/airbnb/android/models/Collection;
    :cond_5c
    return-void
.end method

.method private setupLongPressToAddToRecentWishList(Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Lcom/airbnb/android/views/ClickableViewPager;)V
    .registers 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    .param p3, "viewPager"    # Lcom/airbnb/android/views/ClickableViewPager;

    .prologue
    .line 357
    new-instance v4, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$4;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V

    .line 370
    .local v4, "addToWishListRunnable":Ljava/lang/Runnable;
    new-instance v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;

    invoke-direct {v2, p0, p2, v4}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$5;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Ljava/lang/Runnable;)V

    .line 380
    .local v2, "longPressAnimationRunnable":Ljava/lang/Runnable;
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Ljava/lang/Runnable;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Ljava/lang/Runnable;Landroid/view/ViewGroup;)V

    invoke-virtual {p3, v0}, Lcom/airbnb/android/views/ClickableViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 440
    return-void
.end method


# virtual methods
.method public cancelAdditionalLoading()V
    .registers 1

    .prologue
    .line 461
    return-void
.end method

.method protected createRow(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "viewHolder"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    .param p3, "position"    # I
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 192
    const v2, 0x7f080033

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/ClickableViewPager;

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    .line 193
    const v2, 0x7f08030f

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->detailsView:Landroid/view/View;

    .line 194
    const v2, 0x7f080310

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 195
    const v2, 0x7f080311

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->subtitleTextView:Landroid/widget/TextView;

    .line 196
    const v2, 0x7f0803ec

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->listingPriceTag:Landroid/view/View;

    .line 197
    const v2, 0x7f080395

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListLongPressViewContainer:Landroid/widget/FrameLayout;

    .line 198
    const v2, 0x7f080397

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListLongPressInner:Landroid/widget/ImageView;

    .line 199
    const v2, 0x7f080392

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    .line 200
    const v2, 0x7f080064

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/HaloImageView;

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->hostPhoto:Lcom/airbnb/android/views/HaloImageView;

    .line 201
    const v2, 0x7f080393

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->mapHint:Landroid/widget/ImageView;

    .line 202
    const v2, 0x7f080394

    invoke-virtual {p4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->photoHint:Landroid/widget/ImageView;

    .line 203
    iput-object p1, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->listing:Lcom/airbnb/android/models/Listing;

    .line 205
    iget-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$1;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-direct {p0, p5, p2, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setupLongPressToAddToRecentWishList(Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Lcom/airbnb/android/views/ClickableViewPager;)V

    .line 225
    iget-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    new-instance v3, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;

    invoke-direct {v3, p1}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/ClickableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 227
    iget v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mNumColumns:I

    invoke-static {p5, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getImageHeight(Landroid/view/ViewGroup;I)I

    move-result v1

    .line 228
    .local v1, "imageHeight":I
    iget-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v2}, Lcom/airbnb/android/views/ClickableViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    iget-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->mapHint:Landroid/widget/ImageView;

    if-eqz v2, :cond_d3

    .line 231
    sget v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->HINT_ICONS_MARGIN_TOP:I

    if-nez v2, :cond_bb

    .line 233
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020223

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 234
    .local v0, "hintIconHeight":I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->HINT_ICONS_MARGIN_TOP:I

    .line 237
    .end local v0    # "hintIconHeight":I
    :cond_bb
    iget-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->mapHint:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->HINT_ICONS_MARGIN_TOP:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 238
    iget-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->photoHint:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->HINT_ICONS_MARGIN_TOP:I

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 241
    :cond_d3
    invoke-virtual {p4, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object v2, p2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->detailsView:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;

    invoke-direct {v3, p0, p5, p4}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$2;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    if-nez p3, :cond_eb

    .line 257
    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mShowHintRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 260
    :cond_eb
    return-object p4
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->hasRemainingData()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_15

    .line 146
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v0

    .line 149
    :goto_14
    return v0

    :cond_15
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_14
.end method

.method public getNumColumns()I
    .registers 2

    .prologue
    .line 514
    iget v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mNumColumns:I

    return v0
.end method

.method protected getOnScrollListener(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnScrollListener;
    .registers 3
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 602
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->hasSwipedToSeeMapAndPhoto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 603
    const/4 v0, 0x0

    .line 622
    :goto_b
    return-object v0

    .line 606
    :cond_c
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$9;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$9;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Landroid/widget/AbsListView;)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mShowHintRunnable:Ljava/lang/Runnable;

    .line 622
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$10;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)V

    goto :goto_b
.end method

.method public getSubtitleText(Lcom/airbnb/android/models/Listing;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 165
    .local v6, "c":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v3

    if-ne v0, v3, :cond_23

    .line 166
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->loadMoreListings()V

    .line 168
    if-nez p2, :cond_21

    .line 169
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03014c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_21
    move-object v0, p2

    .line 187
    :goto_22
    return-object v0

    .line 173
    :cond_23
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getItemAsListing(I)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    .line 174
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    const/4 v7, 0x0

    .line 175
    .local v7, "oldListing":Lcom/airbnb/android/models/Listing;
    if-nez p2, :cond_55

    .line 176
    new-instance v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)V

    .line 177
    .local v2, "viewHolder":Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030157

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 178
    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->createRow(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 183
    .end local v2    # "viewHolder":Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    :goto_47
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mListingShownListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;

    if-eqz v0, :cond_50

    .line 184
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mListingShownListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;

    invoke-interface {v0, v1, v7}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;->onListingShown(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V

    .line 187
    :cond_50
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setupRow(Lcom/airbnb/android/models/Listing;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_22

    .line 180
    :cond_55
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v7, v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->listing:Lcom/airbnb/android/models/Listing;

    goto :goto_47
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 159
    invoke-static {}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->values()[Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getItemViewType(I)I

    move-result v0

    sget-object v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected loadMoreListings()V
    .registers 1

    .prologue
    .line 504
    return-void
.end method

.method public setListingShownListener(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mListingShownListener:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;

    .line 519
    return-void
.end method

.method protected setupRow(Lcom/airbnb/android/models/Listing;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 18
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 275
    invoke-virtual/range {p4 .. p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 276
    .local v7, "context":Landroid/content/Context;
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    .line 277
    .local v3, "viewHolder":Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    iput-object p1, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->listing:Lcom/airbnb/android/models/Listing;

    .line 278
    iput p2, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->position:I

    .line 280
    iget-object v6, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->viewPager:Lcom/airbnb/android/views/ClickableViewPager;

    .line 281
    .local v6, "viewPager":Lcom/airbnb/android/views/ClickableViewPager;
    move-object/from16 v0, p4

    instance-of v1, v0, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    if-eqz v1, :cond_24

    move-object/from16 v5, p4

    .line 282
    check-cast v5, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    .line 284
    .local v5, "listView":Lcom/airbnb/android/interfaces/ViewPagerAbsListView;
    new-instance v1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$3;-><init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/interfaces/ViewPagerAbsListView;Lcom/airbnb/android/views/ClickableViewPager;)V

    invoke-virtual {v6, v1}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 321
    .end local v5    # "listView":Lcom/airbnb/android/interfaces/ViewPagerAbsListView;
    :cond_24
    invoke-virtual {v6}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/adapters/PropertyImagesViewPagerAdapter;->set(Lcom/airbnb/android/models/Listing;)V

    .line 322
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mCurrentPage:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 325
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;

    invoke-static {v6, v1}, Lcom/airbnb/android/utils/MiscUtils;->loadStaticMapIfNeeded(Lcom/airbnb/android/views/ClickableViewPager;Landroid/os/Handler;)V

    .line 327
    iget-object v1, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v1, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListLongPressViewContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 330
    iget-object v1, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 331
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/airbnb/android/AirbnbApi;->listingInWishList(Lcom/airbnb/android/models/Listing;)Z

    move-result v8

    .line 332
    .local v8, "selected":Z
    iget-object v1, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 333
    iget-object v2, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListButton:Landroid/widget/ImageView;

    if-eqz v8, :cond_af

    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mSelectedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_65
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v1, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->subtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v7}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getSubtitleText(Lcom/airbnb/android/models/Listing;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->listingPriceTag:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v1, v2, p1, v4}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->setupListingPriceTag(Landroid/content/Context;Landroid/view/View;Lcom/airbnb/android/models/Listing;Ljava/lang/Integer;)V

    .line 339
    const-string/jumbo v1, "recommendations"

    iget-object v2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    .line 340
    const-string/jumbo v1, "view_recommended_listing"

    const-string/jumbo v2, "impression"

    const-string/jumbo v4, "recommended_listing"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    const-string/jumbo v10, "listing_id"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v11

    invoke-virtual {v9, v10, v11, v12}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    invoke-static {v1, v2, v4, v9}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 343
    :cond_a1
    iget-object v1, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->hostPhoto:Lcom/airbnb/android/views/HaloImageView;

    if-eqz v1, :cond_ae

    .line 345
    iget-object v1, v3, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->hostPhoto:Lcom/airbnb/android/views/HaloImageView;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 348
    :cond_ae
    return-object p3

    .line 333
    :cond_af
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mUnselectedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_65
.end method

.method public final setupScrollListener(Landroid/widget/AbsListView;)V
    .registers 3
    .param p1, "listView"    # Landroid/widget/AbsListView;

    .prologue
    .line 589
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getOnScrollListener(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 590
    return-void
.end method
