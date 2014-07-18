.class Lcom/airbnb/android/views/PhotoRearranger$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoRearranger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/PhotoRearranger;->init(Landroid/content/Context;Landroid/content/res/TypedArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/PhotoRearranger;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/PhotoRearranger;)V
    .registers 2

    .prologue
    .line 443
    iput-object p1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 446
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoRearranger;->access$900(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 447
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveX:I
    invoke-static {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1002(Lcom/airbnb/android/views/PhotoRearranger;I)I

    .line 448
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    # setter for: Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveY:I
    invoke-static {v0, v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1102(Lcom/airbnb/android/views/PhotoRearranger;I)I

    .line 450
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v5, 0x0

    .line 515
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoRearranger;->access$900(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4c

    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoRearranger;->access$2300(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v0

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PhotoRearranger;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_4c

    .line 516
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
    invoke-static {v0}, Lcom/airbnb/android/views/PhotoRearranger;->access$2400(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$2400(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
    invoke-static {v2}, Lcom/airbnb/android/views/PhotoRearranger;->access$2400(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v2

    float-to-int v3, p3

    float-to-int v4, p4

    iget-object v6, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v6}, Lcom/airbnb/android/views/PhotoRearranger;->getMeasuredHeight()I

    move-result v6

    iget-object v7, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mContentHeight:I
    invoke-static {v7}, Lcom/airbnb/android/views/PhotoRearranger;->access$2300(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v7

    sub-int v7, v6, v7

    move v6, v5

    move v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 517
    iget-object v0, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 519
    :cond_4c
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 484
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I
    invoke-static {v3}, Lcom/airbnb/android/views/PhotoRearranger;->access$900(Lcom/airbnb/android/views/PhotoRearranger;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_12

    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mInMultiSelectMode:Z
    invoke-static {v3}, Lcom/airbnb/android/views/PhotoRearranger;->access$400(Lcom/airbnb/android/views/PhotoRearranger;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 511
    :cond_12
    :goto_12
    return-void

    .line 488
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 489
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 490
    .local v2, "y":I
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    const/4 v4, 0x1

    # invokes: Lcom/airbnb/android/views/PhotoRearranger;->findIndexForScreenPos(IIZ)I
    invoke-static {v3, v1, v2, v4}, Lcom/airbnb/android/views/PhotoRearranger;->access$1200(Lcom/airbnb/android/views/PhotoRearranger;IIZ)I

    move-result v0

    .line 491
    .local v0, "index":I
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/views/PhotoRearranger;->access$1300(Lcom/airbnb/android/views/PhotoRearranger;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_12

    .line 492
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    # setter for: Lcom/airbnb/android/views/PhotoRearranger;->mActivePointerId:I
    invoke-static {v3, v4}, Lcom/airbnb/android/views/PhotoRearranger;->access$902(Lcom/airbnb/android/views/PhotoRearranger;I)I

    .line 493
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # setter for: Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapIndex:I
    invoke-static {v3, v0}, Lcom/airbnb/android/views/PhotoRearranger;->access$1602(Lcom/airbnb/android/views/PhotoRearranger;I)I

    .line 494
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # setter for: Lcom/airbnb/android/views/PhotoRearranger;->mPrevBitmapIndex:I
    invoke-static {v3, v0}, Lcom/airbnb/android/views/PhotoRearranger;->access$1702(Lcom/airbnb/android/views/PhotoRearranger;I)I

    .line 496
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/airbnb/android/views/PhotoRearranger;->access$1300(Lcom/airbnb/android/views/PhotoRearranger;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v3}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->startSelection()V

    .line 498
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mDragAndDropListener:Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;
    invoke-static {v3}, Lcom/airbnb/android/views/PhotoRearranger;->access$1800(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

    move-result-object v3

    if-eqz v3, :cond_63

    .line 499
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mDragAndDropListener:Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;
    invoke-static {v3}, Lcom/airbnb/android/views/PhotoRearranger;->access$1800(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/airbnb/android/views/PhotoRearranger$DragAndDropListener;->onDragStart()V

    .line 502
    :cond_63
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v3}, Lcom/airbnb/android/views/PhotoRearranger;->access$2000(Lcom/airbnb/android/views/PhotoRearranger;)Landroid/os/Vibrator;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mHapticFeedbackLengthMS:J
    invoke-static {v4}, Lcom/airbnb/android/views/PhotoRearranger;->access$1900(Lcom/airbnb/android/views/PhotoRearranger;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 504
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # setter for: Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveX:I
    invoke-static {v3, v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1002(Lcom/airbnb/android/views/PhotoRearranger;I)I

    .line 505
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # setter for: Lcom/airbnb/android/views/PhotoRearranger;->mLastMoveY:I
    invoke-static {v3, v2}, Lcom/airbnb/android/views/PhotoRearranger;->access$1102(Lcom/airbnb/android/views/PhotoRearranger;I)I

    .line 506
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # setter for: Lcom/airbnb/android/views/PhotoRearranger;->mCurrentEdgeScrollSpeed:I
    invoke-static {v3, v6}, Lcom/airbnb/android/views/PhotoRearranger;->access$2102(Lcom/airbnb/android/views/PhotoRearranger;I)I

    .line 507
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # setter for: Lcom/airbnb/android/views/PhotoRearranger;->mActiveBitmapInRemovalArea:Z
    invoke-static {v3, v6}, Lcom/airbnb/android/views/PhotoRearranger;->access$2202(Lcom/airbnb/android/views/PhotoRearranger;Z)Z

    .line 509
    iget-object v3, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v3}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    goto :goto_12
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 455
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    # invokes: Lcom/airbnb/android/views/PhotoRearranger;->findIndexForScreenPos(IIZ)I
    invoke-static {v1, v3, v4, v2}, Lcom/airbnb/android/views/PhotoRearranger;->access$1200(Lcom/airbnb/android/views/PhotoRearranger;IIZ)I

    move-result v0

    .line 457
    .local v0, "index":I
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mInMultiSelectMode:Z
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$400(Lcom/airbnb/android/views/PhotoRearranger;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 458
    if-ltz v0, :cond_8b

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1300(Lcom/airbnb/android/views/PhotoRearranger;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8b

    .line 459
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1300(Lcom/airbnb/android/views/PhotoRearranger;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->toggleSelection()V

    .line 461
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mMultiSelectListener:Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1400(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 462
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1300(Lcom/airbnb/android/views/PhotoRearranger;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PhotoRearranger$MovingBitmap;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 463
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mMultiSelectListener:Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1400(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;->onSelect()V

    .line 469
    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    invoke-virtual {v1}, Lcom/airbnb/android/views/PhotoRearranger;->invalidate()V

    move v1, v2

    .line 479
    :goto_5f
    return v1

    .line 465
    :cond_60
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mMultiSelectListener:Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1400(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/airbnb/android/views/PhotoRearranger$MultiSelectListener;->onDeselect()V

    goto :goto_59

    .line 472
    :cond_6a
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mSingleSelectListener:Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1500(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;

    move-result-object v1

    if-eqz v1, :cond_8b

    .line 473
    if-ltz v0, :cond_8b

    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mPhotos:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1300(Lcom/airbnb/android/views/PhotoRearranger;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8b

    .line 474
    iget-object v1, p0, Lcom/airbnb/android/views/PhotoRearranger$1;->this$0:Lcom/airbnb/android/views/PhotoRearranger;

    # getter for: Lcom/airbnb/android/views/PhotoRearranger;->mSingleSelectListener:Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;
    invoke-static {v1}, Lcom/airbnb/android/views/PhotoRearranger;->access$1500(Lcom/airbnb/android/views/PhotoRearranger;)Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/airbnb/android/views/PhotoRearranger$SingleSelectListener;->onSelect(I)V

    move v1, v2

    .line 475
    goto :goto_5f

    .line 479
    :cond_8b
    const/4 v1, 0x0

    goto :goto_5f
.end method
