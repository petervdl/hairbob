.class Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;
.super Ljava/lang/Object;
.source "SlideUpFtueFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlideUpFtueFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/VelocityTracker;

    move-result-object v11

    if-nez v11, :cond_16

    .line 64
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    iget-object v12, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/VelocityTracker;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    # setter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11, v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$002(Lcom/airbnb/android/fragments/SlideUpFtueFragment;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    .line 67
    :cond_16
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_1d8

    .line 151
    :cond_1d
    :goto_1d
    const/4 v11, 0x0

    :goto_1e
    return v11

    .line 70
    :pswitch_1f
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    # setter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownX:F
    invoke-static {v11, v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$102(Lcom/airbnb/android/fragments/SlideUpFtueFragment;F)F

    .line 71
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    # setter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownY:F
    invoke-static {v11, v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$202(Lcom/airbnb/android/fragments/SlideUpFtueFragment;F)F

    .line 72
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    const/4 v12, 0x1

    # setter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mCanStillBeTapEvent:Z
    invoke-static {v11, v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$302(Lcom/airbnb/android/fragments/SlideUpFtueFragment;Z)Z

    .line 74
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/VelocityTracker;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 75
    const/4 v11, 0x0

    goto :goto_1e

    .line 78
    :pswitch_44
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/VelocityTracker;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 79
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/VelocityTracker;

    move-result-object v11

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget-object v12, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownY:F
    invoke-static {v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$200(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)F

    move-result v12

    sub-float v4, v11, v12

    .line 82
    .local v4, "deltaY":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 83
    .local v1, "absDeltaY":F
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/VelocityTracker;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 84
    .local v9, "velocityY":F
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    int-to-float v10, v11

    .line 86
    .local v10, "viewHeight":F
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mLastSetY:F
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$400(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const v12, 0x3e99999a

    mul-float/2addr v12, v10

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_b0

    const/4 v11, 0x0

    cmpg-float v11, v4, v11

    if-gez v11, :cond_f2

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->PX_PER_DP:F
    invoke-static {}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$500()F

    move-result v11

    const/high16 v12, 0x42960000

    mul-float/2addr v11, v12

    cmpl-float v11, v1, v11

    if-lez v11, :cond_f2

    const/high16 v11, 0x43480000

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->PX_PER_DP:F
    invoke-static {}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$500()F

    move-result v12

    mul-float/2addr v11, v12

    cmpl-float v11, v9, v11

    if-lez v11, :cond_f2

    .line 87
    :cond_b0
    const/4 v11, 0x0

    cmpl-float v11, v9, v11

    if-lez v11, :cond_ef

    sub-float v11, v10, v1

    div-float/2addr v11, v9

    float-to-long v11, v11

    :goto_b9
    const-wide/16 v13, 0xfa

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 88
    .local v7, "duration":J
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    neg-float v12, v10

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 90
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$1;

    invoke-direct {v12, p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$1;-><init>(Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;)V

    invoke-virtual {v11, v12, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    .end local v7    # "duration":J
    :goto_de
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/VelocityTracker;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 125
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    const/4 v12, 0x0

    # setter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11, v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$002(Lcom/airbnb/android/fragments/SlideUpFtueFragment;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;

    goto/16 :goto_1d

    .line 87
    :cond_ef
    const-wide/16 v11, 0xfa

    goto :goto_b9

    .line 98
    :cond_f2
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mCanStillBeTapEvent:Z
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$300(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Z

    move-result v11

    if-nez v11, :cond_ff

    const/4 v11, 0x0

    cmpl-float v11, v4, v11

    if-lez v11, :cond_12e

    .line 99
    :cond_ff
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    iget-object v12, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual {v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    iget-object v13, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDragBox:Landroid/view/View;
    invoke-static {v13}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$800(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0xfa

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    new-instance v13, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$2;

    invoke-direct {v13, p0}, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1$2;-><init>(Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;)V

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    # setter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v11, v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$602(Lcom/airbnb/android/fragments/SlideUpFtueFragment;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_de

    .line 121
    :cond_12e
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const v12, 0x443b8000

    iget-object v13, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mLastSetY:F
    invoke-static {v13}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$400(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)F

    move-result v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    mul-float/2addr v12, v13

    iget-object v13, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual {v13}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getView()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    float-to-int v12, v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_de

    .line 129
    .end local v1    # "absDeltaY":F
    .end local v4    # "deltaY":F
    .end local v9    # "velocityY":F
    .end local v10    # "viewHeight":F
    :pswitch_15d
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Landroid/view/VelocityTracker;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 131
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mCanStillBeTapEvent:Z
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$300(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)Z

    move-result v11

    if-eqz v11, :cond_1aa

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    iget-object v12, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownX:F
    invoke-static {v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$100(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 134
    .local v2, "delX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget-object v12, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownY:F
    invoke-static {v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$200(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 135
    .local v3, "delY":F
    mul-float v11, v2, v2

    mul-float v12, v3, v3

    add-float/2addr v11, v12

    float-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 137
    .local v5, "distance":D
    iget-object v12, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->PX_PER_DP:F
    invoke-static {}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$500()F

    move-result v11

    const/high16 v13, 0x41a00000

    mul-float/2addr v11, v13

    float-to-double v13, v11

    cmpg-double v11, v5, v13

    if-gez v11, :cond_1d6

    const/4 v11, 0x1

    :goto_1a7
    # setter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mCanStillBeTapEvent:Z
    invoke-static {v12, v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$302(Lcom/airbnb/android/fragments/SlideUpFtueFragment;Z)Z

    .line 141
    .end local v2    # "delX":F
    .end local v3    # "delY":F
    .end local v5    # "distance":D
    :cond_1aa
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    iget-object v12, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mDownY:F
    invoke-static {v12}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$200(Lcom/airbnb/android/fragments/SlideUpFtueFragment;)F

    move-result v12

    sub-float v4, v11, v12

    .line 142
    .restart local v4    # "deltaY":F
    const/4 v11, 0x0

    cmpg-float v11, v4, v11

    if-gez v11, :cond_1d

    .line 143
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    # setter for: Lcom/airbnb/android/fragments/SlideUpFtueFragment;->mLastSetY:F
    invoke-static {v11, v4}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->access$402(Lcom/airbnb/android/fragments/SlideUpFtueFragment;F)F

    .line 144
    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpFtueFragment$1;->this$0:Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-virtual {v11}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 146
    const/4 v11, 0x1

    goto/16 :goto_1e

    .line 137
    .end local v4    # "deltaY":F
    .restart local v2    # "delX":F
    .restart local v3    # "delY":F
    .restart local v5    # "distance":D
    :cond_1d6
    const/4 v11, 0x0

    goto :goto_1a7

    .line 67
    :pswitch_data_1d8
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_44
        :pswitch_15d
    .end packed-switch
.end method
