.class Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;
.super Ljava/lang/Object;
.source "ProPhotographyFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->clickSingleButton()V
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
.field final synthetic this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

.field final synthetic val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ProPhotographyFragment$5;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V
    .registers 3

    .prologue
    .line 264
    iput-object p1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 279
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/ProPhotoRequest;)V
    .registers 7
    .param p1, "response"    # Lcom/airbnb/android/requests/ProPhotoRequest;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 269
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    # getter for: Lcom/airbnb/android/fragments/ProPhotographyFragment;->originForAnalytics:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    invoke-static {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->access$000(Lcom/airbnb/android/fragments/ProPhotographyFragment;)Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    move-result-object v0

    const-string/jumbo v1, "application_submitted"

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->trackImpression(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iget-object v1, v1, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    const v2, 0x7f0e05db

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const v3, 0x7f020129

    const/16 v4, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->onProgressComplete(Ljava/lang/String;Ljava/lang/String;II)V

    .line 271
    iget-object v0, p0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;->this$1:Lcom/airbnb/android/fragments/ProPhotographyFragment$5;

    iget-object v0, v0, Lcom/airbnb/android/fragments/ProPhotographyFragment$5;->this$0:Lcom/airbnb/android/fragments/ProPhotographyFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ProPhotographyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/ProPhotographyActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/activities/ProPhotographyActivity;->setPhotoRequestedForListing(Z)V

    .line 274
    :cond_3e
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, Lcom/airbnb/android/requests/ProPhotoRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ProPhotographyFragment$5$2;->onResponse(Lcom/airbnb/android/requests/ProPhotoRequest;)V

    return-void
.end method
