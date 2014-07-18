.class Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;
.super Ljava/lang/Object;
.source "EditAddressFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->geoCodeAddress(Z)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

.field final synthetic val$newLocation:Z


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;Z)V
    .registers 3

    .prologue
    .line 207
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    iput-boolean p2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->val$newLocation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 230
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01b7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 233
    :cond_22
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 207
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_9

    .line 225
    :goto_8
    return-void

    .line 214
    :cond_9
    invoke-static {p1}, Lcom/airbnb/android/utils/GeocoderHelper;->parseResponse(Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 216
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_29

    .line 217
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/models/Listing;->setLatitude(D)V

    .line 218
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/models/Listing;->setLongitude(D)V

    .line 221
    :cond_29
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    iget-boolean v3, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->val$newLocation:Z

    invoke-interface {v1, v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->updateAddress(Lcom/airbnb/android/models/Listing;Z)V

    .line 223
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_8
.end method
