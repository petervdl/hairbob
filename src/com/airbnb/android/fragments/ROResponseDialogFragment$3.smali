.class Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;
.super Ljava/lang/Object;
.source "ROResponseDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROResponseDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

.field final synthetic val$dialogBack:Landroid/widget/FrameLayout;

.field final synthetic val$educationScrollContainer:Landroid/widget/ScrollView;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$viewFlipper:Landroid/widget/ViewAnimator;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ScrollView;Landroid/widget/ViewAnimator;)V
    .registers 6

    .prologue
    .line 194
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$v:Landroid/view/View;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$dialogBack:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$educationScrollContainer:Landroid/widget/ScrollView;

    iput-object p5, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$viewFlipper:Landroid/widget/ViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 198
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mDialogBackHeightSet:Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$700(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Z

    move-result v3

    if-nez v3, :cond_5b

    .line 199
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$v:Landroid/view/View;

    const v6, 0x7f0804a6

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 200
    .local v1, "inquiryContainer":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$v:Landroid/view/View;

    const v6, 0x7f0804a7

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 201
    .local v2, "reservationContainer":Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mForReservationRequest:Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$400(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Z

    move-result v3

    if-eqz v3, :cond_7a

    move v3, v4

    :goto_2a
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mForReservationRequest:Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$400(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Z

    move-result v3

    if-eqz v3, :cond_36

    move v4, v5

    :cond_36
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$v:Landroid/view/View;

    const v4, 0x7f08028e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 205
    .local v0, "dialogFront":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$dialogBack:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$educationScrollContainer:Landroid/widget/ScrollView;

    invoke-virtual {v3, v5}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 207
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    const/4 v4, 0x1

    # setter for: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mDialogBackHeightSet:Z
    invoke-static {v3, v4}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$702(Lcom/airbnb/android/fragments/ROResponseDialogFragment;Z)Z

    .line 209
    .end local v0    # "dialogFront":Landroid/widget/FrameLayout;
    .end local v1    # "inquiryContainer":Landroid/widget/LinearLayout;
    .end local v2    # "reservationContainer":Landroid/widget/LinearLayout;
    :cond_5b
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # getter for: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->mForReservationRequest:Z
    invoke-static {v3}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$400(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getReservationId()J
    invoke-static {v4}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$500(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/ROResponseDialogFragment;

    # invokes: Lcom/airbnb/android/fragments/ROResponseDialogFragment;->getThreadId()J
    invoke-static {v6}, Lcom/airbnb/android/fragments/ROResponseDialogFragment;->access$600(Lcom/airbnb/android/fragments/ROResponseDialogFragment;)J

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/airbnb/android/analytics/ROAnalytics;->trackRespondNowEducationClick(ZJJ)V

    .line 210
    iget-object v3, p0, Lcom/airbnb/android/fragments/ROResponseDialogFragment$3;->val$viewFlipper:Landroid/widget/ViewAnimator;

    sget-object v4, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->LEFT_RIGHT:Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    const-wide/16 v5, 0x64

    invoke-static {v3, v4, v5, v6}, Lcom/airbnb/android/utils/animation/AnimationFactory;->flipTransition(Landroid/widget/ViewAnimator;Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;J)V

    .line 211
    return-void

    .restart local v1    # "inquiryContainer":Landroid/widget/LinearLayout;
    .restart local v2    # "reservationContainer":Landroid/widget/LinearLayout;
    :cond_7a
    move v3, v5

    .line 201
    goto :goto_2a
.end method
