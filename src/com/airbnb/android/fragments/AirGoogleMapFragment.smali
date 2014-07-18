.class public Lcom/airbnb/android/fragments/AirGoogleMapFragment;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "AirGoogleMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/AirMapInterface;


# instance fields
.field private mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/AirGoogleMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/airbnb/android/fragments/AirGoogleMapFragment;
    .registers 4
    .param p0, "options"    # Lcom/google/android/gms/maps/GoogleMapOptions;

    .prologue
    .line 42
    new-instance v1, Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;-><init>()V

    .line 43
    .local v1, "f":Lcom/airbnb/android/fragments/AirGoogleMapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "MapOptions"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    return-object v1
.end method


# virtual methods
.method public addMarker(Lcom/google/android/gms/maps/model/LatLng;ILjava/lang/String;)V
    .registers 11
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    const/high16 v2, 0x3f000000

    const/high16 v3, 0x3f800000

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/MarkerOptions;->anchor(FF)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 114
    return-void
.end method

.method public addMarker(Lcom/google/android/gms/maps/model/LatLng;J)V
    .registers 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "id"    # J

    .prologue
    .line 100
    return-void
.end method

.method public addPolyline(Ljava/util/List;II)Lcom/google/android/gms/maps/model/Polyline;
    .registers 7
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
    .line 251
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    int-to-float v2, p2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v0

    return-object v0
.end method

.method public animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 174
    return-void
.end method

.method public animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 5
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    int-to-float v1, p2

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 216
    return-void
.end method

.method public clearMarkers()V
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 119
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 7
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    const/high16 v2, 0x40a00000

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    int-to-double v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    .line 144
    return-void
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getGoogleMap()Lcom/google/android/gms/maps/GoogleMap;
    .registers 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public getMapScreenBounds(Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;)V
    .registers 9
    .param p1, "callback"    # Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;

    .prologue
    .line 148
    iget-object v4, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v4}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v2

    .line 149
    .local v2, "projection":Lcom/google/android/gms/maps/Projection;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 150
    .local v1, "hOffset":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 152
    .local v3, "vOffset":I
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 153
    .local v0, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 154
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 155
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-direct {v4, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 156
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/maps/Projection;->fromScreenLocation(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;->onMapBoundsReady(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 159
    return-void
.end method

.method public getZoom()I
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v0, v0

    return v0
.end method

.method public highlightListingMarker(JJ)V
    .registers 5
    .param p1, "prevListingId"    # J
    .param p3, "currListingId"    # J

    .prologue
    .line 105
    return-void
.end method

.method public init()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 84
    iget-object v1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_1b

    .line 85
    iget-object v1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    .line 86
    .local v0, "settings":Lcom/google/android/gms/maps/UiSettings;
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 87
    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->setMyLocationEnabled(Z)V

    .line 90
    .end local v0    # "settings":Lcom/google/android/gms/maps/UiSettings;
    :cond_1b
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lcom/airbnb/android/fragments/AirGoogleMapFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment$1;-><init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 66
    if-eqz p3, :cond_19

    .line 67
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->init()V

    .line 70
    :cond_19
    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/android/gms/maps/SupportMapFragment;->onDestroyView()V

    .line 77
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->apiRemoveGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 78
    return-void
.end method

.method public removePolyline(Lcom/google/android/gms/maps/model/Polyline;)V
    .registers 2
    .param p1, "polyline"    # Lcom/google/android/gms/maps/model/Polyline;

    .prologue
    .line 256
    if-eqz p1, :cond_5

    .line 257
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    .line 259
    :cond_5
    return-void
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 179
    return-void
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLngBounds;I)V
    .registers 5
    .param p1, "latLngBounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p2, "boundsPadding"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 164
    return-void
.end method

.method public setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 5
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    int-to-float v1, p2

    invoke-static {p1, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 211
    return-void
.end method

.method public setInfoWindowCreator(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;)V
    .registers 4
    .param p1, "adapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .param p2, "creator"    # Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 134
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 246
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 247
    return-void
.end method

.method public setOnCameraChangeListener(Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;)V
    .registers 4
    .param p1, "onCameraChangeListener"    # Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/airbnb/android/fragments/AirGoogleMapFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/AirGoogleMapFragment$3;-><init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 201
    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/airbnb/android/fragments/AirGoogleMapFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/AirGoogleMapFragment$2;-><init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 129
    return-void
.end method

.method public setOnMapClickListener(Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnMapClickListener;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/airbnb/android/fragments/AirGoogleMapFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/AirGoogleMapFragment$5;-><init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    .line 237
    return-void
.end method

.method public setOnMapLoadedListener(Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;)V
    .registers 2
    .param p1, "onMapLoadedListener"    # Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    .line 206
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/airbnb/android/fragments/AirGoogleMapFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/android/fragments/AirGoogleMapFragment$4;-><init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 227
    return-void
.end method

.method public setPadding(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/GoogleMap;->setPadding(IIII)V

    .line 242
    return-void
.end method

.method public setZoom(I)V
    .registers 5
    .param p1, "zoom"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment;->mGoogleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    int-to-float v2, p1

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 169
    return-void
.end method
