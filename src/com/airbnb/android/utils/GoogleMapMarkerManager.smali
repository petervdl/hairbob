.class public Lcom/airbnb/android/utils/GoogleMapMarkerManager;
.super Lcom/airbnb/android/utils/MapMarkerManager;
.source "GoogleMapMarkerManager.java"


# instance fields
.field private mListingToMarkerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gms/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/utils/MapMarkerManager;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->mListingToMarkerMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->mMarkersMap:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method public static createMarker(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/airbnb/android/models/Listing;)Lcom/google/android/gms/maps/model/Marker;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v1

    .line 47
    .local v1, "ch":Lcom/airbnb/android/utils/CurrencyHelper;
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v4

    int-to-double v4, v4

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "price":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/airbnb/android/utils/MapMarkerGenerator;->getPriceMarker(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 50
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    const/high16 v5, 0x3f000000

    const/high16 v6, 0x3f800000

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 55
    .local v2, "marker":Lcom/google/android/gms/maps/model/Marker;
    return-object v2
.end method

.method private setListingMarkerIcon(Landroid/content/Context;Lcom/airbnb/android/models/Listing;IIZ)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p3, "color"    # I
    .param p4, "strokeColor"    # I
    .param p5, "bringToTop"    # Z

    .prologue
    .line 66
    if-eqz p2, :cond_32

    .line 67
    iget-object v4, p0, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->mListingToMarkerMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/model/Marker;

    .line 68
    .local v2, "marker":Lcom/google/android/gms/maps/model/Marker;
    if-eqz v2, :cond_32

    .line 69
    invoke-static {p1}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v1

    .line 70
    .local v1, "ch":Lcom/airbnb/android/utils/CurrencyHelper;
    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v4

    int-to-double v4, v4

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "price":Ljava/lang/String;
    invoke-static {p1, v3, p3, p4}, Lcom/airbnb/android/utils/MapMarkerGenerator;->getPriceMarker(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    .line 73
    if-eqz p5, :cond_32

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    .line 83
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "ch":Lcom/airbnb/android/utils/CurrencyHelper;
    .end local v2    # "marker":Lcom/google/android/gms/maps/model/Marker;
    .end local v3    # "price":Ljava/lang/String;
    :cond_32
    return-void
.end method


# virtual methods
.method public addListingToMap(Lcom/airbnb/android/views/AirMapView;Lcom/airbnb/android/models/Listing;)V
    .registers 7
    .param p1, "airMapView"    # Lcom/airbnb/android/views/AirMapView;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 27
    iget-object v1, p0, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->mMarkersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 28
    invoke-virtual {p1, p2}, Lcom/airbnb/android/views/AirMapView;->addGoogleMarker(Lcom/airbnb/android/models/Listing;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 29
    .local v0, "marker":Lcom/google/android/gms/maps/model/Marker;
    if-eqz v0, :cond_20

    .line 30
    iget-object v1, p0, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->mMarkersMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->mListingToMarkerMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .end local v0    # "marker":Lcom/google/android/gms/maps/model/Marker;
    :cond_20
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->mMarkersMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    iget-object v0, p0, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->mListingToMarkerMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 39
    return-void
.end method

.method public getListing(Lcom/google/android/gms/maps/model/Marker;)Lcom/airbnb/android/models/Listing;
    .registers 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->mMarkersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public highlightListingMarker(Landroid/content/Context;Lcom/airbnb/android/views/AirMapView;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airMapView"    # Lcom/airbnb/android/views/AirMapView;
    .param p3, "prevListing"    # Lcom/airbnb/android/models/Listing;
    .param p4, "currListing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 60
    const v3, 0x7f0a002b

    const v4, 0x7f0a002c

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->setListingMarkerIcon(Landroid/content/Context;Lcom/airbnb/android/models/Listing;IIZ)V

    .line 62
    const v3, 0x7f0a0026

    const v4, 0x7f0a0027

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->setListingMarkerIcon(Landroid/content/Context;Lcom/airbnb/android/models/Listing;IIZ)V

    .line 63
    return-void
.end method
