.class public Lcom/airbnb/android/views/PicTopScrollView;
.super Lcom/airbnb/android/views/VerboseScrollView;
.source "PicTopScrollView.java"


# instance fields
.field private mCurrentViewPager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/ViewPager;",
            ">;"
        }
    .end annotation
.end field

.field private mDragStartLoc:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/VerboseScrollView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/VerboseScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/VerboseScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_48

    .line 49
    iget-object v4, p0, Lcom/airbnb/android/views/PicTopScrollView;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/airbnb/android/views/PicTopScrollView;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_52

    iget-object v4, p0, Lcom/airbnb/android/views/PicTopScrollView;->mDragStartLoc:Landroid/graphics/PointF;

    if-eqz v4, :cond_52

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 51
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 52
    .local v3, "y":F
    iget-object v4, p0, Lcom/airbnb/android/views/PicTopScrollView;->mDragStartLoc:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v2

    iget-object v5, p0, Lcom/airbnb/android/views/PicTopScrollView;->mDragStartLoc:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v2

    mul-float v0, v4, v5

    .line 53
    .local v0, "distSqrX":F
    iget-object v4, p0, Lcom/airbnb/android/views/PicTopScrollView;->mDragStartLoc:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v3

    iget-object v5, p0, Lcom/airbnb/android/views/PicTopScrollView;->mDragStartLoc:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v3

    mul-float v1, v4, v5

    .line 55
    .local v1, "distSqrY":F
    cmpl-float v4, v0, v1

    if-lez v4, :cond_52

    .line 57
    :try_start_3b
    iget-object v4, p0, Lcom/airbnb/android/views/PicTopScrollView;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_46} :catch_59
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3b .. :try_end_46} :catch_57

    move-result v4

    .line 70
    .end local v0    # "distSqrX":F
    .end local v1    # "distSqrY":F
    .end local v2    # "x":F
    .end local v3    # "y":F
    :goto_47
    return v4

    .line 66
    :cond_48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_52

    .line 67
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/airbnb/android/views/PicTopScrollView;->mDragStartLoc:Landroid/graphics/PointF;

    .line 70
    :cond_52
    :goto_52
    invoke-super {p0, p1}, Lcom/airbnb/android/views/VerboseScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_47

    .line 61
    .restart local v0    # "distSqrX":F
    .restart local v1    # "distSqrY":F
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :catch_57
    move-exception v4

    goto :goto_52

    .line 58
    :catch_59
    move-exception v4

    goto :goto_52
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    .line 39
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/airbnb/android/views/PicTopScrollView;->mDragStartLoc:Landroid/graphics/PointF;

    .line 42
    :cond_15
    invoke-super {p0, p1}, Lcom/airbnb/android/views/VerboseScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/airbnb/android/views/PicTopScrollView;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method
