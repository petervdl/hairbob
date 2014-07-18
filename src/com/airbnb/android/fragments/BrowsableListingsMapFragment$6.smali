.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$6;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->refreshMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$6;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapMarkerClick(J)V
    .registers 4
    .param p1, "id"    # J

    .prologue
    .line 306
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$6;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # invokes: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->handleMapMarkerClick(J)V
    invoke-static {v0, p1, p2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$800(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;J)V

    .line 307
    return-void
.end method

.method public onMapMarkerClick(Lcom/google/android/gms/maps/model/Marker;)V
    .registers 6
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 312
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$6;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerManager:Lcom/airbnb/android/utils/MapMarkerManager;
    invoke-static {v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$900(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/utils/MapMarkerManager;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/utils/GoogleMapMarkerManager;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->getListing(Lcom/google/android/gms/maps/model/Marker;)Lcom/airbnb/android/models/Listing;

    move-result-object v0

    .line 313
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    if-eqz v0, :cond_1f

    .line 314
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/airbnb/android/fragments/ListingDetailsFragment;->executePrefetchRequest(ZLcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V

    .line 315
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$6;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    # invokes: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->handleMapMarkerClick(J)V
    invoke-static {v1, v2, v3}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$800(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;J)V

    .line 317
    :cond_1f
    return-void
.end method
