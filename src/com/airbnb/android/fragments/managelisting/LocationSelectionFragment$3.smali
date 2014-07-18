.class Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;
.super Ljava/lang/Object;
.source "LocationSelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->onStart()V
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
    .line 149
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/views/AirMapView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/views/AirMapView;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 154
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->hasUserSetLocation(Lcom/google/android/gms/maps/model/LatLng;)Z
    invoke-static {v2, v0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$200(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v1

    .line 155
    .local v1, "userSetLocation":Z
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/models/Listing;->setLatitude(D)V

    .line 156
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v2

    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/models/Listing;->setLongitude(D)V

    .line 157
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    iget-object v2, v2, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;->this$0:Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/models/Listing;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->updateLocation(Lcom/airbnb/android/models/Listing;ZZ)V

    .line 158
    return-void
.end method
