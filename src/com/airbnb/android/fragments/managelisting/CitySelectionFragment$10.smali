.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->executeGeocoderTask(Lcom/google/android/gms/maps/model/LatLng;Z)V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

.field final synthetic val$cameraPosition:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 3

    .prologue
    .line 286
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->val$cameraPosition:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 311
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->val$cameraPosition:Lcom/google/android/gms/maps/model/LatLng;

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->handleFallbackReverseGeocode(Lcom/google/android/gms/maps/model/LatLng;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$1000(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 312
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01b7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 313
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 315
    :cond_29
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 286
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 6
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 290
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_a

    .line 306
    :goto_9
    return-void

    .line 293
    :cond_a
    invoke-static {p1}, Lcom/airbnb/android/utils/GeocoderHelper;->parseResponse(Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 295
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_4b

    .line 296
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocodable:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$402(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->buildGeocodeableString(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # setter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHasSetCity:Z
    invoke-static {v1, v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$202(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)Z

    .line 299
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 305
    :goto_41
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_9

    .line 301
    :cond_4b
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 302
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$10;->val$cameraPosition:Lcom/google/android/gms/maps/model/LatLng;

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->handleFallbackReverseGeocode(Lcom/google/android/gms/maps/model/LatLng;)V
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$1000(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_41
.end method
