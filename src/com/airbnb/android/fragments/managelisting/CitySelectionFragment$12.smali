.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->onDoneClick()V
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


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V
    .registers 2

    .prologue
    .line 365
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v3, 0x0

    .line 383
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/GeocoderHelper;->fallbackGetFromLocationName(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 384
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_2a

    .line 385
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->handleGeocoderResponse(Landroid/location/Address;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$1100(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Landroid/location/Address;)V

    .line 390
    :goto_20
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 392
    return-void

    .line 387
    :cond_2a
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e01b7

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 365
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {p1}, Lcom/airbnb/android/utils/GeocoderHelper;->parseResponse(Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 372
    .local v0, "address":Landroid/location/Address;
    if-nez v0, :cond_1e

    .line 373
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/GeocoderHelper;->fallbackGetFromLocationName(Landroid/content/Context;Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 376
    :cond_1e
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->handleGeocoderResponse(Landroid/location/Address;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$1100(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Landroid/location/Address;)V

    .line 378
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$12;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 379
    return-void
.end method
