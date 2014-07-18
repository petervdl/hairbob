.class Lcom/airbnb/android/fragments/ProPhotographyFragment$5;
.super Ljava/lang/Object;
.source "ProPhotographyFragment.java"

# interfaces
.implements Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment$SingleButtonDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment;->showConfirmDialogForListing(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

.field final synthetic val$listingId:J


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProPhotographyFragment;J)V
    .registers 4

    .prologue
    .line 236
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    iput-wide p2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->val$listingId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clickSingleButton()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 240
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$000(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    move-result-object v1

    const-string/jumbo v2, "confirm_request"

    const-string/jumbo v3, "submit_click"

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackClick(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const v1, 0x7f0e05eb

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v0

    .line 243
    .local v0, "progressDialog":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    new-instance v1, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$1;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$1;-><init>(Lcom/airbnb/android/fragments/ProPhotographyFragment$5;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 258
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mConfirmRequestDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$1200(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v1

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mConfirmRequestDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$1200(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 259
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mConfirmRequestDialog:Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;
    invoke-static {v2}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$1200(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/fragments/AirDialogFragments$SingleButtonDialogFragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 264
    :goto_4f
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    new-instance v2, Lcom/airbnb/android/requests/ProPhotoRequest;

    iget-wide v3, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->val$listingId:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/airbnb/android/requests/ProPhotoRequest$Type;->APPLY:Lcom/airbnb/android/requests/ProPhotoRequest$Type;

    new-instance v5, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;

    invoke-direct {v5, p0, v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;-><init>(Lcom/airbnb/android/fragments/ProPhotographyFragment$5;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/airbnb/android/requests/ProPhotoRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/ProPhotoRequest$Type;Lcom/airbnb/android/requests/RequestListener;)V

    # setter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mProPhotoRequest:Lcom/airbnb/android/requests/ProPhotoRequest;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$1102(Lcom/airbnb/android/fragments/ProPhotographyFragment;Lcom/airbnb/android/requests/ProPhotoRequest;)Lcom/airbnb/android/requests/ProPhotoRequest;

    .line 281
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->mProPhotoRequest:Lcom/airbnb/android/requests/ProPhotoRequest;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$1100(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/requests/ProPhotoRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/requests/ProPhotoRequest;->execute()V

    .line 282
    return-void

    .line 261
    :cond_70
    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_4f
.end method
