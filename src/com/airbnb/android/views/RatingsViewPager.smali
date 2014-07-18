.class public Lcom/airbnb/android/views/RatingsViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "RatingsViewPager.java"


# instance fields
.field private mAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

.field private mLastX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private shouldBlock(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "shouldBlock":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2e

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/airbnb/android/views/RatingsViewPager;->mLastX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_35

    move v1, v2

    .line 50
    .local v1, "swipeLeft":Z
    :goto_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/RatingsViewPager;->mLastX:F

    .line 51
    if-eqz v1, :cond_2e

    .line 52
    iget-object v4, p0, Lcom/airbnb/android/views/RatingsViewPager;->mAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    if-eqz v4, :cond_39

    iget-object v4, p0, Lcom/airbnb/android/views/RatingsViewPager;->mAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/views/RatingsViewPager;->getCurrentItem()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;->canAdvance(I)Z

    move-result v4

    if-nez v4, :cond_37

    move v0, v2

    .line 55
    .end local v1    # "swipeLeft":Z
    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/airbnb/android/views/RatingsViewPager;->mLastX:F

    .line 57
    return v0

    :cond_35
    move v1, v3

    .line 49
    goto :goto_15

    .restart local v1    # "swipeLeft":Z
    :cond_37
    move v0, v3

    .line 52
    goto :goto_2e

    :cond_39
    move v0, v3

    goto :goto_2e
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RatingsViewPager;->shouldBlock(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RatingsViewPager;->shouldBlock(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_7
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 32
    check-cast p1, Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    .end local p1    # "adapter":Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Lcom/airbnb/android/views/RatingsViewPager;->mAdapter:Lcom/airbnb/android/adapters/ReviewRatingsAdapter;

    .line 33
    return-void
.end method
