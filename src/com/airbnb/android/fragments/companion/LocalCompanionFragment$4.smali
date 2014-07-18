.class Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$4;
.super Ljava/lang/Object;
.source "LocalCompanionFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->connectLocationClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)V
    .registers 2

    .prologue
    .line 270
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    # getter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;
    invoke-static {v0}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$500(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;)Lcom/airbnb/android/utils/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->requestLocationUpdates()V

    .line 274
    return-void
.end method

.method public onLocationUpdated(Landroid/location/Location;)V
    .registers 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 278
    if-eqz p1, :cond_14

    .line 279
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment$4;->this$0:Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    # setter for: Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->mCurrentLocation:Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;->access$402(Lcom/airbnb/android/fragments/companion/LocalCompanionFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 281
    :cond_14
    return-void
.end method
