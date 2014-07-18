.class Lcom/airbnb/android/fragments/ProPhotographyFragment$5$1;
.super Ljava/lang/Object;
.source "ProPhotographyFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->clickSingleButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

.field final synthetic val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProPhotographyFragment$5;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 3

    .prologue
    .line 243
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$1;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$1;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressCancelled()V
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$1;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mProPhotoRequest:Lcom/airbnb/android/requests/ProPhotoRequest;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$1100(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/requests/ProPhotoRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ProPhotoRequest;->cancel()V

    .line 255
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$1;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 256
    return-void
.end method

.method public onProgressCompleted()V
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$1;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 248
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$1;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/ProPhotographyActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ProPhotographyActivity;->finish()V

    .line 250
    :cond_17
    return-void
.end method
