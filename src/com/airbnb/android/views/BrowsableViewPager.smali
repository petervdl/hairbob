.class public Lcom/airbnb/android/views/BrowsableViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "BrowsableViewPager.java"


# static fields
.field private static final MARGIN_PERCENT:F = 0.15f

.field private static final NO_TRACK_INDEX:I = -0x1


# instance fields
.field private mIsEnabled:Z

.field private mTrackGestureIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mTrackGestureIndex:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mIsEnabled:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mTrackGestureIndex:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mIsEnabled:Z

    .line 26
    return-void
.end method

.method private updateGestureTracking(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v8, 0x3e19999a

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, -0x1

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-nez v6, :cond_33

    .line 66
    iget v6, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mTrackGestureIndex:I

    if-eq v6, v7, :cond_14

    .line 68
    iput v7, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mTrackGestureIndex:I

    move v4, v5

    .line 91
    :cond_13
    :goto_13
    return v4

    .line 71
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 72
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/BrowsableViewPager;->getWidth()I

    move-result v2

    .line 73
    .local v2, "w":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 74
    .local v3, "x":F
    int-to-float v6, v2

    div-float v1, v3, v6

    .line 75
    .local v1, "percent":F
    cmpg-float v6, v1, v8

    if-ltz v6, :cond_2e

    const/high16 v6, 0x3f800000

    sub-float/2addr v6, v1

    cmpg-float v6, v6, v8

    if-gez v6, :cond_31

    .line 77
    :cond_2e
    iput v0, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mTrackGestureIndex:I

    goto :goto_13

    :cond_31
    move v4, v5

    .line 81
    goto :goto_13

    .line 84
    .end local v0    # "index":I
    .end local v1    # "percent":F
    .end local v2    # "w":I
    .end local v3    # "x":F
    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-ne v6, v4, :cond_3c

    .line 86
    iput v7, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mTrackGestureIndex:I

    goto :goto_13

    .line 91
    :cond_3c
    iget v6, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mTrackGestureIndex:I

    if-ne v6, v7, :cond_13

    move v4, v5

    goto :goto_13
.end method


# virtual methods
.method public canScroll(Landroid/view/View;ZIII)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public enable(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mIsEnabled:Z

    .line 30
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 50
    iget-boolean v1, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mIsEnabled:Z

    if-nez v1, :cond_6

    .line 61
    :cond_5
    :goto_5
    return v0

    .line 54
    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/android/views/BrowsableViewPager;->getCurrentItem()I

    move-result v1

    sget-object v2, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_17

    .line 55
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5

    .line 58
    :cond_17
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/BrowsableViewPager;->updateGestureTracking(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 34
    iget-boolean v1, p0, Lcom/airbnb/android/views/BrowsableViewPager;->mIsEnabled:Z

    if-nez v1, :cond_6

    .line 45
    :cond_5
    :goto_5
    return v0

    .line 38
    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/android/views/BrowsableViewPager;->getCurrentItem()I

    move-result v1

    sget-object v2, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Map:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_17

    .line 39
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5

    .line 42
    :cond_17
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/BrowsableViewPager;->updateGestureTracking(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method
