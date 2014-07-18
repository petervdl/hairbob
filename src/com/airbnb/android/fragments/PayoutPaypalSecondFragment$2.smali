.class Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$2;
.super Ljava/lang/Object;
.source "PayoutPaypalSecondFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->submitPaypalInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressCancelled()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalRequest:Lcom/airbnb/android/requests/PayoutPaypalRequest;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->access$600(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Lcom/airbnb/android/requests/PayoutPaypalRequest;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 151
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->mPaypalRequest:Lcom/airbnb/android/requests/PayoutPaypalRequest;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->access$600(Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;)Lcom/airbnb/android/requests/PayoutPaypalRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/PayoutPaypalRequest;->cancel()V

    .line 154
    :cond_11
    return-void
.end method

.method public onProgressCompleted()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment$2;->this$0:Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/PayoutPaypalSecondFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/PayoutActivity;->clearBackStackAndGoToList()V

    .line 146
    :cond_13
    return-void
.end method
