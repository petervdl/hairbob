.class public abstract Lcom/airbnb/android/utils/MapMarkerManager;
.super Ljava/lang/Object;
.source "MapMarkerManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMapMarkerManager()Lcom/airbnb/android/utils/MapMarkerManager;
    .registers 2

    .prologue
    .line 11
    const-string/jumbo v1, ""

    invoke-static {v1}, Lcom/airbnb/android/views/AirMapView;->getMapType(Ljava/lang/String;)Lcom/airbnb/android/views/AirMapView$MapType;

    move-result-object v0

    .line 12
    .local v0, "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    sget-object v1, Lcom/airbnb/android/views/AirMapView$MapType;->Google:Lcom/airbnb/android/views/AirMapView$MapType;

    if-ne v0, v1, :cond_11

    .line 13
    new-instance v1, Lcom/airbnb/android/utils/GoogleMapMarkerManager;

    invoke-direct {v1}, Lcom/airbnb/android/utils/GoogleMapMarkerManager;-><init>()V

    .line 15
    :goto_10
    return-object v1

    :cond_11
    new-instance v1, Lcom/airbnb/android/utils/WebMapMarkerManager;

    invoke-direct {v1}, Lcom/airbnb/android/utils/WebMapMarkerManager;-><init>()V

    goto :goto_10
.end method


# virtual methods
.method public abstract addListingToMap(Lcom/airbnb/android/views/AirMapView;Lcom/airbnb/android/models/Listing;)V
.end method

.method public abstract clear()V
.end method

.method public abstract highlightListingMarker(Landroid/content/Context;Lcom/airbnb/android/views/AirMapView;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V
.end method
