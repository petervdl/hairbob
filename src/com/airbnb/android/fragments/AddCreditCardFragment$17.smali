.class Lcom/airbnb/android/fragments/AddCreditCardFragment$17;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AddCreditCardFragment;->getCountryFromLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
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
.field final synthetic this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 2

    .prologue
    .line 405
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$17;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 410
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 405
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/AddCreditCardFragment$17;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$17;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1600(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2d

    .line 415
    invoke-static {p1}, Lcom/airbnb/android/utils/GeocoderHelper;->parseResponse(Ljava/lang/String;)Landroid/location/Address;

    move-result-object v0

    .line 416
    .local v0, "address":Landroid/location/Address;
    if-eqz v0, :cond_2d

    .line 417
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$17;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryCode:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1602(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$17;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mCountryName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1702(Lcom/airbnb/android/fragments/AddCreditCardFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 420
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$17;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 421
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$17;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->setCountry()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1800(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V

    .line 425
    .end local v0    # "address":Landroid/location/Address;
    :cond_2d
    return-void
.end method
