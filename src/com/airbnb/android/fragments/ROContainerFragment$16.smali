.class Lcom/airbnb/android/fragments/ROContainerFragment$16;
.super Ljava/lang/Object;
.source "ROContainerFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ROContainerFragment;->createProgressDialogIfNeeded(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

.field final synthetic val$selectMessageTab:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ROContainerFragment;Z)V
    .registers 3

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/airbnb/android/fragments/ROContainerFragment$16;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/ROContainerFragment$16;->val$selectMessageTab:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressCancelled()V
    .registers 2

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$16;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1432
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$16;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 1434
    :cond_11
    return-void
.end method

.method public onProgressCompleted()V
    .registers 3

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$16;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1419
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$16;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # getter for: Lcom/airbnb/android/fragments/ROContainerFragment;->mProgressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2500(Lcom/airbnb/android/fragments/ROContainerFragment;)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 1422
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$16;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ROContainerFragment;->setRespondNowButtonVisibility(Z)V

    .line 1423
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$16;->val$selectMessageTab:Z

    if-eqz v0, :cond_20

    .line 1424
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROContainerFragment$16;->this$0:Lcom/airbnb/android/fragments/ROContainerFragment;

    # invokes: Lcom/airbnb/android/fragments/ROContainerFragment;->selectMessageTab()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ROContainerFragment;->access$2600(Lcom/airbnb/android/fragments/ROContainerFragment;)V

    .line 1427
    :cond_20
    return-void
.end method
