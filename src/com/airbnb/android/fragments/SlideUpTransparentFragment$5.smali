.class Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;
.super Ljava/lang/Object;
.source "SlideUpTransparentFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->makeOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

.field velocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 176
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_a

    .line 177
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->velocityTracker:Landroid/view/VelocityTracker;

    .line 180
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_1a2

    .line 252
    :cond_11
    :goto_11
    const/4 v8, 0x0

    :goto_12
    return v8

    .line 183
    :pswitch_13
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownX:F
    invoke-static {v8, v9}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$302(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;F)F

    .line 184
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownY:F
    invoke-static {v8, v9}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$402(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;F)F

    .line 185
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    const/4 v9, 0x1

    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mCanStillBeTapEvent:Z
    invoke-static {v8, v9}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$502(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;Z)Z

    .line 187
    iget-object v9, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mContentScrollPosition:I
    invoke-static {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v10, 0x41a00000

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->PX_PER_DP:F
    invoke-static {}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$200()F

    move-result v11

    mul-float/2addr v10, v11

    cmpg-float v8, v8, v10

    if-gez v8, :cond_4a

    const/4 v8, 0x1

    :goto_40
    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mShouldScrollFragment:Z
    invoke-static {v9, v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$102(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;Z)Z

    .line 189
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 190
    const/4 v8, 0x0

    goto :goto_12

    .line 187
    :cond_4a
    const/4 v8, 0x0

    goto :goto_40

    .line 193
    :pswitch_4c
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 194
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget-object v9, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownY:F
    invoke-static {v9}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$400(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F

    move-result v9

    sub-float v2, v8, v9

    .line 197
    .local v2, "deltaY":F
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 198
    .local v6, "velocityY":F
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v5, v8

    .line 200
    .local v5, "screenHeight":F
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mShouldScrollFragment:Z
    invoke-static {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$100(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Z

    move-result v8

    if-eqz v8, :cond_e0

    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mLastSetY:F
    invoke-static {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$700(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F

    move-result v8

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->PX_PER_DP:F
    invoke-static {}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$200()F

    move-result v9

    const/high16 v10, 0x43160000

    mul-float/2addr v9, v10

    const v10, 0x3ecccccd

    mul-float/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_ac

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->PX_PER_DP:F
    invoke-static {}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$200()F

    move-result v8

    const/high16 v9, 0x42480000

    mul-float/2addr v8, v9

    cmpl-float v8, v2, v8

    if-lez v8, :cond_e0

    const/high16 v8, 0x437a0000

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->PX_PER_DP:F
    invoke-static {}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$200()F

    move-result v9

    mul-float/2addr v8, v9

    cmpl-float v8, v6, v8

    if-lez v8, :cond_e0

    .line 205
    :cond_ac
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mHeaderHeights:F
    invoke-static {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$800(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F

    move-result v8

    sub-float v7, v5, v8

    .line 206
    .local v7, "visibleHeight":F
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0xc8

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 208
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5$1;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5$1;-><init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;)V

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 225
    .end local v7    # "visibleHeight":F
    :goto_d6
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->recycle()V

    .line 226
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->velocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_11

    .line 215
    :cond_e0
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mCanStillBeTapEvent:Z
    invoke-static {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$500(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Z

    move-result v8

    if-eqz v8, :cond_110

    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownY:F
    invoke-static {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$400(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F

    move-result v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mHeaderHeights:F
    invoke-static {v10}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$800(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F

    move-result v10

    iget-object v11, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mContentScrollPosition:I
    invoke-static {v11}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_110

    .line 219
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mSlideUpActivity:Lcom/airbnb/android/activities/SlideUpTransparentActivity;
    invoke-static {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$600(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/airbnb/android/activities/SlideUpTransparentActivity;->dismissContent(Z)V

    goto :goto_d6

    .line 222
    :cond_110
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_d6

    .line 230
    .end local v2    # "deltaY":F
    .end local v5    # "screenHeight":F
    .end local v6    # "velocityY":F
    :pswitch_125
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 232
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mCanStillBeTapEvent:Z
    invoke-static {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$500(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Z

    move-result v8

    if-eqz v8, :cond_16c

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget-object v9, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownX:F
    invoke-static {v9}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$300(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 235
    .local v0, "delX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget-object v9, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownY:F
    invoke-static {v9}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$400(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 236
    .local v1, "delY":F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 238
    .local v3, "distance":D
    iget-object v9, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->PX_PER_DP:F
    invoke-static {}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$200()F

    move-result v8

    const/high16 v10, 0x41a00000

    mul-float/2addr v8, v10

    float-to-double v10, v8

    cmpg-double v8, v3, v10

    if-gez v8, :cond_1a0

    const/4 v8, 0x1

    :goto_169
    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mCanStillBeTapEvent:Z
    invoke-static {v9, v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$502(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;Z)Z

    .line 242
    .end local v0    # "delX":F
    .end local v1    # "delY":F
    .end local v3    # "distance":D
    :cond_16c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget-object v9, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownY:F
    invoke-static {v9}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$400(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F

    move-result v9

    sub-float v2, v8, v9

    .line 243
    .restart local v2    # "deltaY":F
    const/4 v8, 0x0

    cmpl-float v8, v2, v8

    if-lez v8, :cond_11

    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mShouldScrollFragment:Z
    invoke-static {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$100(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 244
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mLastSetY:F
    invoke-static {v8, v2}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$702(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;F)F

    .line 245
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-virtual {v8}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 247
    const/4 v8, 0x1

    goto/16 :goto_12

    .line 238
    .end local v2    # "deltaY":F
    .restart local v0    # "delX":F
    .restart local v1    # "delY":F
    .restart local v3    # "distance":D
    :cond_1a0
    const/4 v8, 0x0

    goto :goto_169

    .line 180
    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_4c
        :pswitch_125
    .end packed-switch
.end method
