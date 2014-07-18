.class Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;
.super Ljava/lang/Object;
.source "StaticListingsMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/StaticListingsMapFragment;->onLoopingViewPagerPageSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/StaticListingsMapFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/StaticListingsMapFragment;)V
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/StaticListingsMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapBoundsReady(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .registers 10
    .param p1, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;

    .prologue
    .line 23
    iget-object v3, p0, Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/StaticListingsMapFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/StaticListingsMapFragment;->mHighlightedListing:Lcom/airbnb/android/models/Listing;

    if-eqz v3, :cond_5c

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v4, p0, Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/StaticListingsMapFragment;

    iget-object v4, v4, Lcom/airbnb/android/fragments/StaticListingsMapFragment;->mHighlightedListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v4

    iget-object v6, p0, Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/StaticListingsMapFragment;

    iget-object v6, v6, Lcom/airbnb/android/fragments/StaticListingsMapFragment;->mHighlightedListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->contains(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 24
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;-><init>()V

    .line 25
    .local v0, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    iget-object v3, p0, Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/StaticListingsMapFragment;

    invoke-virtual {v3}, Lcom/airbnb/android/fragments/StaticListingsMapFragment;->getSearchListings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    .line 26
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    goto :goto_30

    .line 28
    .end local v2    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_4d
    iget-object v3, p0, Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/StaticListingsMapFragment;

    iget-object v3, v3, Lcom/airbnb/android/fragments/StaticListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;->this$0:Lcom/airbnb/android/fragments/StaticListingsMapFragment;

    iget v5, v5, Lcom/airbnb/android/fragments/StaticListingsMapFragment;->mMapBoundingBoxPadding:I

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/views/AirMapView;->setBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Z

    .line 30
    .end local v0    # "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5c
    return-void
.end method
