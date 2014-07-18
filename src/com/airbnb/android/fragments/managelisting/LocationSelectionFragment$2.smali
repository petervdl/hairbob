.class Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$2;
.super Ljava/lang/Object;
.source "LocationSelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$MapCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)V
    .registers 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 3
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 103
    return-void
.end method

.method public onMapInitialized()V
    .registers 6

    .prologue
    .line 96
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 97
    .local v0, "coordinate":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;
    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/views/AirMapView;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$2;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/AirMapView;->setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z

    .line 98
    return-void
.end method
