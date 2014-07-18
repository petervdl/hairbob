.class Lcom/airbnb/android/activities/PropertyMapActivity$1;
.super Ljava/lang/Object;
.source "PropertyMapActivity.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$MapCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/PropertyMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/PropertyMapActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/PropertyMapActivity;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 6
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mFirstZoom:F
    invoke-static {v0}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$300(Lcom/airbnb/android/activities/PropertyMapActivity;)F

    move-result v0

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_12

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    int-to-float v1, p2

    # setter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mFirstZoom:F
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$302(Lcom/airbnb/android/activities/PropertyMapActivity;F)F

    .line 71
    :cond_12
    iget-object v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    int-to-float v1, p2

    iget-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mMinZoom:F
    invoke-static {v2}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$400(Lcom/airbnb/android/activities/PropertyMapActivity;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    # setter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mMinZoom:F
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$402(Lcom/airbnb/android/activities/PropertyMapActivity;F)F

    .line 72
    iget-object v0, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    int-to-float v1, p2

    iget-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mMaxZoom:F
    invoke-static {v2}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$500(Lcom/airbnb/android/activities/PropertyMapActivity;)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    # setter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mMaxZoom:F
    invoke-static {v0, v1}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$502(Lcom/airbnb/android/activities/PropertyMapActivity;F)F

    .line 73
    return-void
.end method

.method public onMapInitialized()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 58
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$000(Lcom/airbnb/android/activities/PropertyMapActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$000(Lcom/airbnb/android/activities/PropertyMapActivity;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 59
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mAirMapView:Lcom/airbnb/android/views/AirMapView;
    invoke-static {v1}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$100(Lcom/airbnb/android/activities/PropertyMapActivity;)Lcom/airbnb/android/views/AirMapView;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/AirMapView;->setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z

    .line 60
    iget-object v1, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mAirMapView:Lcom/airbnb/android/views/AirMapView;
    invoke-static {v1}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$100(Lcom/airbnb/android/activities/PropertyMapActivity;)Lcom/airbnb/android/views/AirMapView;

    move-result-object v1

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/AirMapView;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 61
    iget-object v1, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mAirMapView:Lcom/airbnb/android/views/AirMapView;
    invoke-static {v1}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$100(Lcom/airbnb/android/activities/PropertyMapActivity;)Lcom/airbnb/android/views/AirMapView;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mAddressHeight:I
    invoke-static {v2}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$200(Lcom/airbnb/android/activities/PropertyMapActivity;)I

    move-result v2

    invoke-virtual {v1, v5, v5, v5, v2}, Lcom/airbnb/android/views/AirMapView;->setPadding(IIII)V

    .line 62
    iget-object v1, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    # getter for: Lcom/airbnb/android/activities/PropertyMapActivity;->mAirMapView:Lcom/airbnb/android/views/AirMapView;
    invoke-static {v1}, Lcom/airbnb/android/activities/PropertyMapActivity;->access$100(Lcom/airbnb/android/activities/PropertyMapActivity;)Lcom/airbnb/android/views/AirMapView;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/PropertyMapActivity$1;->this$0:Lcom/airbnb/android/activities/PropertyMapActivity;

    invoke-virtual {v2}, Lcom/airbnb/android/activities/PropertyMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirMapView;->setZoom(I)V

    .line 63
    return-void
.end method
