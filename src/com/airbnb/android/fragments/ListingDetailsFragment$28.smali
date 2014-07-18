.class final Lcom/airbnb/android/fragments/ListingDetailsFragment$28;
.super Ljava/lang/Object;
.source "ListingDetailsFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ListingDetailsFragment;->showCancellationPolicyDialog(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/fragments/AirFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/GetCancellationPolicyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fragment:Lcom/airbnb/android/fragments/AirFragment;

.field final synthetic val$mListing:Lcom/airbnb/android/models/Listing;

.field final synthetic val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;Lcom/airbnb/android/fragments/AirFragment;Lcom/airbnb/android/models/Listing;)V
    .registers 4

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$fragment:Lcom/airbnb/android/fragments/AirFragment;

    iput-object p3, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 1217
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$fragment:Lcom/airbnb/android/fragments/AirFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/requests/AirbnbRequest;->toastGenericVolleyError(Landroid/content/Context;)V

    .line 1218
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/GetCancellationPolicyRequest;)V
    .registers 8
    .param p1, "response"    # Lcom/airbnb/android/requests/GetCancellationPolicyRequest;

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$progressDialog:Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->dismiss()V

    .line 1206
    iget-object v0, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$fragment:Lcom/airbnb/android/fragments/AirFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1207
    invoke-static {}, Lcom/airbnb/android/fragments/ZenDialog;->Builder()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$fragment:Lcom/airbnb/android/fragments/AirFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AirFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getCancellationPolicy()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/requests/GetCancellationPolicyRequest;->cancellationPolicy:Lcom/airbnb/android/models/CancellationPolicy;

    invoke-virtual {v1}, Lcom/airbnb/android/models/CancellationPolicy;->getPolicyAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withBodyText(Ljava/lang/String;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->val$fragment:Lcom/airbnb/android/fragments/AirFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AirFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 1212
    :cond_4a
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1201
    check-cast p1, Lcom/airbnb/android/requests/GetCancellationPolicyRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/ListingDetailsFragment$28;->onResponse(Lcom/airbnb/android/requests/GetCancellationPolicyRequest;)V

    return-void
.end method
