.class Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;
.super Ljava/lang/Object;
.source "AddressSelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->onSuggestionClick(I)Z
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
.field final synthetic this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;)V
    .registers 2

    .prologue
    .line 340
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 369
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01b7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 370
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 373
    :cond_28
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 340
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 7
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_b

    .line 364
    :goto_a
    return-void

    .line 347
    :cond_b
    invoke-static {p1}, Lcom/airbnb/android/utils/GeocoderHelper;->parseResponse(Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 348
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_dc

    .line 350
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/models/Listing;->setLatitude(D)V

    .line 351
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Address;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/models/Listing;->setLongitude(D)V

    .line 352
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_fb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_100

    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    :goto_68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/Listing;->setStreetAddress(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_105

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    :goto_85
    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/Listing;->setCity(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10a

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    :goto_9a
    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/Listing;->setState(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10e

    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v1

    :goto_af
    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/Listing;->setZipCode(Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_112

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    :goto_c4
    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/Listing;->setCountry(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_116

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    :goto_d9
    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/Listing;->setCountryCode(Ljava/lang/String;)V

    .line 360
    :cond_dc
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->doneWithAddressSelection(Lcom/airbnb/android/models/Listing;)V

    .line 362
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6$1;->this$1:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    iget-object v1, v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    goto/16 :goto_a

    .line 352
    :cond_fb
    const-string/jumbo v1, ""

    goto/16 :goto_5a

    :cond_100
    const-string/jumbo v1, ""

    goto/16 :goto_68

    .line 354
    :cond_105
    const-string/jumbo v1, ""

    goto/16 :goto_85

    .line 355
    :cond_10a
    const-string/jumbo v1, ""

    goto :goto_9a

    .line 356
    :cond_10e
    const-string/jumbo v1, ""

    goto :goto_af

    .line 357
    :cond_112
    const-string/jumbo v1, ""

    goto :goto_c4

    .line 358
    :cond_116
    const-string/jumbo v1, ""

    goto :goto_d9
.end method
