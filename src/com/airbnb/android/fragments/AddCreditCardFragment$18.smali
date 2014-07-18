.class Lcom/airbnb/android/fragments/AddCreditCardFragment$18;
.super Ljava/lang/Object;
.source "AddCreditCardFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AddCreditCardFragment;->connectLocationClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AddCreditCardFragment;)V
    .registers 2

    .prologue
    .line 466
    iput-object p1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$18;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$18;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;
    invoke-static {v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1900(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Lcom/airbnb/android/utils/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->requestLocationUpdates()V

    .line 470
    return-void
.end method

.method public onLocationUpdated(Landroid/location/Location;)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 474
    if-eqz p1, :cond_14

    .line 475
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 476
    .local v0, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$18;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # invokes: Lcom/airbnb/android/fragments/AddCreditCardFragment;->getCountryFromLatLng(Lcom/google/android/gms/maps/model/LatLng;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$2000(Lcom/airbnb/android/fragments/AddCreditCardFragment;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 478
    .end local v0    # "latlng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_14
    iget-object v1, p0, Lcom/airbnb/android/fragments/AddCreditCardFragment$18;->this$0:Lcom/airbnb/android/fragments/AddCreditCardFragment;

    # getter for: Lcom/airbnb/android/fragments/AddCreditCardFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;
    invoke-static {v1}, Lcom/airbnb/android/fragments/AddCreditCardFragment;->access$1900(Lcom/airbnb/android/fragments/AddCreditCardFragment;)Lcom/airbnb/android/utils/LocationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/utils/LocationHelper;->disconnectLocationClient()V

    .line 479
    return-void
.end method
