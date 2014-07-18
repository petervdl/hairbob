.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/GeocoderHelper$FallbackRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->handleFallbackReverseGeocode(Lcom/google/android/gms/maps/model/LatLng;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V
    .registers 2

    .prologue
    .line 329
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 341
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e01b7

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 343
    return-void
.end method

.method public onSuccess(Landroid/location/Address;)V
    .registers 4
    .param p1, "address"    # Landroid/location/Address;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mGeocodable:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$402(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->buildGeocodeableString(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    const/4 v1, 0x1

    # setter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHasSetCity:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$202(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)Z

    .line 336
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$11;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 337
    return-void
.end method
