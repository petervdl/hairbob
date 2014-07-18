.class public Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;
.super Ljava/lang/Object;
.source "HackBornViewTouchEventHandler.java"


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
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOnInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    .line 19
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mDragStartLoc:Landroid/graphics/PointF;

    .line 21
    :cond_15
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 24
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_af

    .line 25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_af

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_af

    .line 26
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v19, v0

    .line 27
    .local v19, "location":[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->getLocationOnScreen([I)V

    .line 28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 29
    .local v20, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 30
    .local v21, "y":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mDragStartLoc:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v1, v1, v20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mDragStartLoc:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v2, v2, v20

    mul-float v15, v1, v2

    .line 31
    .local v15, "distSqrX":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mDragStartLoc:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, v1, v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mDragStartLoc:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v2, v2, v21

    mul-float v16, v1, v2

    .line 33
    .local v16, "distSqrY":F
    cmpl-float v1, v15, v16

    if-lez v1, :cond_af

    .line 39
    :try_start_5b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    const/4 v7, 0x0

    aget v7, v19, v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v18

    .line 40
    .local v18, "event":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 41
    const/4 v1, 0x1

    .line 57
    .end local v15    # "distSqrX":F
    .end local v16    # "distSqrY":F
    .end local v18    # "event":Landroid/view/MotionEvent;
    .end local v19    # "location":[I
    .end local v20    # "x":F
    .end local v21    # "y":F
    :goto_a7
    return v1

    .line 43
    .restart local v15    # "distSqrX":F
    .restart local v16    # "distSqrY":F
    .restart local v18    # "event":Landroid/view/MotionEvent;
    .restart local v19    # "location":[I
    .restart local v20    # "x":F
    .restart local v21    # "y":F
    :cond_a8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_af} :catch_b1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5b .. :try_end_af} :catch_ba

    .line 57
    .end local v15    # "distSqrX":F
    .end local v16    # "distSqrY":F
    .end local v18    # "event":Landroid/view/MotionEvent;
    .end local v19    # "location":[I
    .end local v20    # "x":F
    .end local v21    # "y":F
    :cond_af
    :goto_af
    const/4 v1, 0x0

    goto :goto_a7

    .line 45
    .restart local v15    # "distSqrX":F
    .restart local v16    # "distSqrY":F
    .restart local v19    # "location":[I
    .restart local v20    # "x":F
    .restart local v21    # "y":F
    :catch_b1
    move-exception v17

    .line 48
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_af

    .line 49
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    :catch_ba
    move-exception v17

    .line 51
    .local v17, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    goto :goto_af
.end method

.method public setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->mCurrentViewPager:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
.end method
