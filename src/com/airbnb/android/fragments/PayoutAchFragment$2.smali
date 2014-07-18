.class Lcom/airbnb/android/fragments/PayoutAchFragment$2;
.super Ljava/lang/Object;
.source "PayoutAchFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutAchFragment;->submitAchInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutAchFragment;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressCancelled()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutAchFragment;->mAchRequest:Lcom/airbnb/android/requests/PayoutAchRequest;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->access$500(Lcom/airbnb/android/fragments/PayoutAchFragment;)Lcom/airbnb/android/requests/PayoutAchRequest;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutAchFragment;->mAchRequest:Lcom/airbnb/android/requests/PayoutAchRequest;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->access$500(Lcom/airbnb/android/fragments/PayoutAchFragment;)Lcom/airbnb/android/requests/PayoutAchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/PayoutAchRequest;->cancel()V

    .line 105
    :cond_11
    return-void
.end method

.method public onProgressCompleted()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutAchFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutAchFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutAchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/PayoutActivity;->clearBackStackAndGoToList()V

    .line 97
    :cond_13
    return-void
.end method
