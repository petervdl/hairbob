.class Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;
.super Ljava/lang/Object;
.source "ListingPhotoAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setupLongPressToAddToRecentWishList(Landroid/view/ViewGroup;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Lcom/airbnb/android/views/ClickableViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConsiderTap:Z

.field private mStartX:Ljava/lang/Float;

.field final synthetic this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field final synthetic val$addToWishListRunnable:Ljava/lang/Runnable;

.field final synthetic val$longPressAnimationRunnable:Ljava/lang/Runnable;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/ListingPhotoAdapter;Ljava/lang/Runnable;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Ljava/lang/Runnable;Landroid/view/ViewGroup;)V
    .registers 6

    .prologue
    .line 380
    iput-object p1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$longPressAnimationRunnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iput-object p4, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$addToWishListRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cancelHeartExpandAnimation(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 6
    .param p1, "viewHolder"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;
    .param p2, "longPressedRunnable"    # Ljava/lang/Runnable;
    .param p3, "addToWishListRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 431
    iget-object v0, p1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListLongPressViewContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 432
    iget-object v0, p1, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->wishListLongPressInner:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 433
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$500(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 434
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$500(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 435
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mScaleUpAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$400(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 436
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mScaleUpAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$400(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 437
    iget-object v0, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mScaleUpAnim:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$400(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 438
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 387
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_a0

    .line 427
    :cond_7
    :goto_7
    const/4 v6, 0x0

    return v6

    .line 389
    :pswitch_9
    iget-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$500(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$longPressAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->mConsiderTap:Z

    .line 391
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->mStartX:Ljava/lang/Float;

    goto :goto_7

    .line 395
    :pswitch_24
    iget-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v7, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$longPressAnimationRunnable:Ljava/lang/Runnable;

    iget-object v8, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$addToWishListRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v6, v7, v8}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->cancelHeartExpandAnimation(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 397
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long v3, v6, v8

    .line 398
    .local v3, "downDuration":J
    iget-boolean v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->mConsiderTap:Z

    if-eqz v6, :cond_7

    const-wide/16 v6, 0xfa

    cmp-long v6, v3, v6

    if-gez v6, :cond_7

    .line 399
    iget-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget v0, v6, Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;->position:I

    .line 402
    .local v0, "clickedItemPosition":I
    iget-object v1, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$parent:Landroid/view/ViewGroup;

    check-cast v1, Landroid/widget/AbsListView;

    .line 403
    .local v1, "currListView":Landroid/widget/AbsListView;
    iget-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 404
    .local v5, "selectedView":Landroid/view/View;
    iget-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {v6, v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 405
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_7

    .line 410
    .end local v0    # "clickedItemPosition":I
    .end local v1    # "currListView":Landroid/widget/AbsListView;
    .end local v3    # "downDuration":J
    .end local v5    # "selectedView":Landroid/view/View;
    :pswitch_5d
    iget-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->mStartX:Ljava/lang/Float;

    if-eqz v6, :cond_7

    .line 411
    iget-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->this$0:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    # getter for: Lcom/airbnb/android/adapters/ListingPhotoAdapter;->mInvDensityDpi:F
    invoke-static {v6}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->access$600(Lcom/airbnb/android/adapters/ListingPhotoAdapter;)F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->mStartX:Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float v2, v6, v7

    .line 412
    .local v2, "delta":F
    const/high16 v6, 0x3e800000

    cmpl-float v6, v2, v6

    if-lez v6, :cond_7

    .line 413
    iget-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v7, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$longPressAnimationRunnable:Ljava/lang/Runnable;

    iget-object v8, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$addToWishListRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v6, v7, v8}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->cancelHeartExpandAnimation(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 415
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->mConsiderTap:Z

    .line 416
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->mStartX:Ljava/lang/Float;

    goto/16 :goto_7

    .line 421
    .end local v2    # "delta":F
    :pswitch_8f
    iget-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$viewHolder:Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;

    iget-object v7, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$longPressAnimationRunnable:Ljava/lang/Runnable;

    iget-object v8, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->val$addToWishListRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v6, v7, v8}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->cancelHeartExpandAnimation(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 423
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->mConsiderTap:Z

    .line 424
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$6;->mStartX:Ljava/lang/Float;

    goto/16 :goto_7

    .line 387
    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_24
        :pswitch_5d
        :pswitch_8f
    .end packed-switch
.end method
