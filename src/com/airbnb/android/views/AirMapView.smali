.class public Lcom/airbnb/android/views/AirMapView;
.super Landroid/widget/FrameLayout;
.source "AirMapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/AirMapView$2;,
        Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;,
        Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;,
        Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;,
        Lcom/airbnb/android/views/AirMapView$OnMapClickListener;,
        Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;,
        Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;,
        Lcom/airbnb/android/views/AirMapView$MapCallbacks;,
        Lcom/airbnb/android/views/AirMapView$MapType;
    }
.end annotation


# instance fields
.field private mMapCallbacks:Lcom/airbnb/android/views/AirMapView$MapCallbacks;

.field private mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

.field private mMapType:Lcom/airbnb/android/views/AirMapView$MapType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0}, Lcom/airbnb/android/views/AirMapView;->init()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    invoke-direct {p0}, Lcom/airbnb/android/views/AirMapView;->init()V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    invoke-direct {p0}, Lcom/airbnb/android/views/AirMapView;->init()V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/AirMapView;)Lcom/airbnb/android/interfaces/AirMapInterface;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/AirMapView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/AirMapView;)Lcom/airbnb/android/views/AirMapView$MapCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/AirMapView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapCallbacks:Lcom/airbnb/android/views/AirMapView$MapCallbacks;

    return-object v0
.end method

.method public static getMapType(Ljava/lang/String;)Lcom/airbnb/android/views/AirMapView$MapType;
    .registers 7
    .param p0, "mapCountry"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {p0}, Lcom/airbnb/android/utils/MiscUtils;->shouldUseAutoNaviMap(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 60
    sget-object v0, Lcom/airbnb/android/views/AirMapView$MapType;->AutoNavi:Lcom/airbnb/android/views/AirMapView$MapType;

    .line 71
    .local v0, "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    :goto_8
    const-string/jumbo v1, "android_eng"

    const/4 v2, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "map_type"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "map_type"

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirMapView$MapType;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 73
    return-object v0

    .line 61
    .end local v0    # "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    :cond_29
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/MiscUtils;->hasGooglePlayServices(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 62
    sget-object v0, Lcom/airbnb/android/views/AirMapView$MapType;->Google:Lcom/airbnb/android/views/AirMapView$MapType;

    .restart local v0    # "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    goto :goto_8

    .line 63
    .end local v0    # "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    :cond_36
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->isCurrentIPInChina()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 66
    sget-object v0, Lcom/airbnb/android/views/AirMapView$MapType;->GoogleWebChina:Lcom/airbnb/android/views/AirMapView$MapType;

    .restart local v0    # "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    goto :goto_8

    .line 68
    .end local v0    # "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    :cond_3f
    sget-object v0, Lcom/airbnb/android/views/AirMapView$MapType;->GoogleWeb:Lcom/airbnb/android/views/AirMapView$MapType;

    .restart local v0    # "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    goto :goto_8
.end method

.method private init()V
    .registers 3

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030195

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 129
    return-void
.end method


# virtual methods
.method public addGoogleMarker(Lcom/airbnb/android/models/Listing;)Lcom/google/android/gms/maps/model/Marker;
    .registers 4
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 305
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    check-cast v0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getGoogleMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/airbnb/android/utils/GoogleMapMarkerManager;->createMarker(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/airbnb/android/models/Listing;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v0

    .line 307
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public addMarker(Lcom/google/android/gms/maps/model/LatLng;ILjava/lang/String;)Z
    .registers 5
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 312
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/airbnb/android/interfaces/AirMapInterface;->addMarker(Lcom/google/android/gms/maps/model/LatLng;ILjava/lang/String;)V

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public addPolyline(Ljava/util/List;II)Lcom/google/android/gms/maps/model/Polyline;
    .registers 6
    .param p2, "width"    # I
    .param p3, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;II)",
            "Lcom/google/android/gms/maps/model/Polyline;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    const/4 v0, 0x0

    .line 347
    .local v0, "polyline":Lcom/google/android/gms/maps/model/Polyline;
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 348
    iget-object v1, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v1, p1, p2, p3}, Lcom/airbnb/android/interfaces/AirMapInterface;->addPolyline(Ljava/util/List;II)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    .line 350
    :cond_d
    return-object v0
.end method

.method public addWebMarker(Lcom/airbnb/android/models/Listing;)Z
    .registers 7
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 326
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 327
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/airbnb/android/interfaces/AirMapInterface;->addMarker(Lcom/google/android/gms/maps/model/LatLng;J)V

    .line 328
    const/4 v1, 0x1

    .line 330
    .end local v0    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/interfaces/AirMapInterface;->animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 217
    :cond_b
    return-void
.end method

.method public animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z
    .registers 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 235
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/interfaces/AirMapInterface;->animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public clearMarkers()V
    .registers 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 293
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/AirMapInterface;->clearMarkers()V

    .line 295
    :cond_b
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 257
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/interfaces/AirMapInterface;->drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 259
    :cond_b
    return-void
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/AirMapInterface;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 202
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getScreenBounds(Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/interfaces/AirMapInterface;->getMapScreenBounds(Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;)V

    .line 253
    :cond_b
    return-void
.end method

.method public getZoom()I
    .registers 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 192
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/AirMapInterface;->getZoom()I

    move-result v0

    .line 195
    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public highlightWebMarker(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V
    .registers 8
    .param p1, "prevListing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "currListing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const-wide/16 v0, -0x1

    .line 334
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_19

    .line 335
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    .line 336
    .local v2, "prevListingId":J
    :goto_e
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    .line 337
    .local v0, "currListingId":J
    :cond_14
    iget-object v4, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/airbnb/android/interfaces/AirMapInterface;->highlightListingMarker(JJ)V

    .line 339
    .end local v0    # "currListingId":J
    .end local v2    # "prevListingId":J
    :cond_19
    return-void

    :cond_1a
    move-wide v2, v0

    .line 335
    goto :goto_e
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/AirMapInterface;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onCreateView(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;ZLcom/airbnb/android/views/AirMapView$MapCallbacks;)V
    .registers 8
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "mapCountry"    # Ljava/lang/String;
    .param p3, "zOrderOnTop"    # Z
    .param p4, "callbacks"    # Lcom/airbnb/android/views/AirMapView$MapCallbacks;

    .prologue
    const v2, 0x7f080262

    .line 132
    if-nez p4, :cond_e

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Map callbacks may not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_e
    iput-object p4, p0, Lcom/airbnb/android/views/AirMapView;->mMapCallbacks:Lcom/airbnb/android/views/AirMapView$MapCallbacks;

    .line 137
    invoke-virtual {p1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/AirMapInterface;

    iput-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    .line 138
    invoke-static {p2}, Lcom/airbnb/android/views/AirMapView;->getMapType(Ljava/lang/String;)Lcom/airbnb/android/views/AirMapView$MapType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapType:Lcom/airbnb/android/views/AirMapView$MapType;

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    if-nez v0, :cond_49

    .line 141
    sget-object v0, Lcom/airbnb/android/views/AirMapView$2;->$SwitchMap$com$airbnb$android$views$AirMapView$MapType:[I

    iget-object v1, p0, Lcom/airbnb/android/views/AirMapView;->mMapType:Lcom/airbnb/android/views/AirMapView$MapType;

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirMapView$MapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    .line 151
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapType:Lcom/airbnb/android/views/AirMapView$MapType;

    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->newInstance(Lcom/airbnb/android/views/AirMapView$MapType;)Lcom/airbnb/android/fragments/WebViewMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    .line 155
    :goto_37
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 159
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 162
    :cond_49
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    new-instance v1, Lcom/airbnb/android/views/AirMapView$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/AirMapView$1;-><init>(Lcom/airbnb/android/views/AirMapView;)V

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/AirMapInterface;->setOnMapLoadedListener(Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;)V

    .line 182
    return-void

    .line 143
    :pswitch_54
    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    invoke-virtual {v0, p3}, Lcom/google/android/gms/maps/GoogleMapOptions;->zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->newInstance(Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    goto :goto_37

    .line 148
    :pswitch_64
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapType:Lcom/airbnb/android/views/AirMapView$MapType;

    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->newInstance(Lcom/airbnb/android/views/AirMapView$MapType;)Lcom/airbnb/android/fragments/WebViewMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    goto :goto_37

    .line 141
    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_54
        :pswitch_64
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 186
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/AirMapInterface;->setMyLocationEnabled(Z)V

    .line 188
    :cond_c
    return-void
.end method

.method public removePolyline(Lcom/google/android/gms/maps/model/Polyline;)V
    .registers 3
    .param p1, "polyline"    # Lcom/google/android/gms/maps/model/Polyline;

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 360
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/interfaces/AirMapInterface;->removePolyline(Lcom/google/android/gms/maps/model/Polyline;)V

    .line 362
    :cond_b
    return-void
.end method

.method public setBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Z
    .registers 4
    .param p1, "latLngBounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p2, "boundsPadding"    # I

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 243
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/interfaces/AirMapInterface;->setCenter(Lcom/google/android/gms/maps/model/LatLngBounds;I)V

    .line 244
    const/4 v0, 0x1

    .line 246
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)Z
    .registers 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 207
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/interfaces/AirMapInterface;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 208
    const/4 v0, 0x1

    .line 210
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)Z
    .registers 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 227
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/interfaces/AirMapInterface;->setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;)V
    .registers 4
    .param p1, "adapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .param p2, "creator"    # Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 281
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/interfaces/AirMapInterface;->setInfoWindowCreator(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;)V

    .line 283
    :cond_b
    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/interfaces/AirMapInterface;->setOnInfoWindowClickListener(Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;)V

    .line 289
    :cond_b
    return-void
.end method

.method public setOnMapClickListener(Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnMapClickListener;

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 275
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/interfaces/AirMapInterface;->setOnMapClickListener(Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V

    .line 277
    :cond_b
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 269
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/interfaces/AirMapInterface;->setOnMarkerClickListener(Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;)V

    .line 271
    :cond_b
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 263
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/airbnb/android/interfaces/AirMapInterface;->setPadding(IIII)V

    .line 265
    :cond_b
    return-void
.end method

.method public setZoom(I)V
    .registers 3
    .param p1, "zoom"    # I

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView;->mMapInterface:Lcom/airbnb/android/interfaces/AirMapInterface;

    invoke-interface {v0, p1}, Lcom/airbnb/android/interfaces/AirMapInterface;->setZoom(I)V

    .line 223
    :cond_b
    return-void
.end method
