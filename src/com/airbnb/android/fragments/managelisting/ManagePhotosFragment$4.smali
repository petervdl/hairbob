.class Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;
.super Ljava/lang/Object;
.source "ManagePhotosFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->cancelProPhotography()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/ProPhotoRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

.field final synthetic val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 3

    .prologue
    .line 347
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 362
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ProPhotoRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/ProPhotoRequest;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 352
    sget-object v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v1, "request_cancelled"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackImpression(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    const v2, 0x7f0e05e0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const v3, 0x7f020129

    const/16 v4, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V

    .line 354
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/requests/ProPhotoRequest;->getProPhotoStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setProPhotoStatus(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 357
    :cond_3c
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 347
    check-cast p1, Lcom/airbnb/android/requests/ProPhotoRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/ManagePhotosFragment$4;->onResponse(Lcom/airbnb/android/requests/ProPhotoRequest;)V

    return-void
.end method
