.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;
.super Ljava/lang/Object;
.source "CompleteProfileEmailChildFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/AirDialogFragments$DualButtonDialogFragment$DualButtonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;->this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickNegative()V
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;->this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 129
    return-void
.end method

.method public onClickPositive()V
    .registers 5

    .prologue
    .line 111
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;->this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->isVerifiedIdFlow()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;->this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->getVerifiedIdAnalyticsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->trackEmailStartChange(Lcom/airbnb/android/utils/Strap;)V

    .line 116
    :cond_15
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;->this$1:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;

    iget-object v0, v0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->mEmailAddress:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1$1;-><init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfileEmailChildFragment$2$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 124
    return-void
.end method
