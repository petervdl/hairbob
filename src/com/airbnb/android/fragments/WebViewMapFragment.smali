.class public Lcom/airbnb/android/fragments/WebViewMapFragment;
.super Landroid/support/v4/app/Fragment;
.source "WebViewMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/AirMapInterface;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;,
        Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;
    }
.end annotation


# static fields
.field private static final ARG_MAP_TYPE:Ljava/lang/String; = "map_type"


# instance fields
.field private mCenter:Lcom/google/android/gms/maps/model/LatLng;

.field private mIgnoreNextMapMove:Z

.field private mInfoWindowCreator:Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;

.field mLayout:Landroid/widget/FrameLayout;

.field private mLoaded:Z

.field private mMapBoundsCallback:Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;

.field private mMarker:Landroid/view/View;

.field private mOnCameraChangeListener:Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;

.field private mOnInfoWindowClickListener:Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

.field private mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

.field private mOnMarkerClickListener:Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

.field mWebView:Landroid/webkit/WebView;

.field private mZoom:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/WebViewMapFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/WebViewMapFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnInfoWindowClickListener:Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/WebViewMapFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/WebViewMapFragment;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mMarker:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mMapBoundsCallback:Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mCenter:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/fragments/WebViewMapFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mCenter:Lcom/google/android/gms/maps/model/LatLng;

    return-object p1
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/WebViewMapFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mZoom:I

    return v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/WebViewMapFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mZoom:I

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnCameraChangeListener:Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/WebViewMapFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mIgnoreNextMapMove:Z

    return v0
.end method

.method static synthetic access$702(Lcom/airbnb/android/fragments/WebViewMapFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mIgnoreNextMapMove:Z

    return p1
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnMarkerClickListener:Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WebViewMapFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mInfoWindowCreator:Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/views/AirMapView$MapType;)Lcom/airbnb/android/fragments/WebViewMapFragment;
    .registers 5
    .param p0, "mapType"    # Lcom/airbnb/android/views/AirMapView$MapType;

    .prologue
    .line 47
    new-instance v1, Lcom/airbnb/android/fragments/WebViewMapFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/WebViewMapFragment;-><init>()V

    .line 48
    .local v1, "f":Lcom/airbnb/android/fragments/WebViewMapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "map_type"

    invoke-virtual {p0}, Lcom/airbnb/android/views/AirMapView$MapType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public addMarker(Lcom/google/android/gms/maps/model/LatLng;ILjava/lang/String;)V
    .registers 10
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:addMarker(%1$f, %2$f);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public addMarker(Lcom/google/android/gms/maps/model/LatLng;J)V
    .registers 10
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "id"    # J

    .prologue
    .line 147
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:addListingMarker(%1$f, %2$f, %3$d);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public addPolyline(Ljava/util/List;II)Lcom/google/android/gms/maps/model/Polyline;
    .registers 13
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
    .line 222
    .local p1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 223
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/maps/model/LatLng;

    .line 224
    .local v3, "point":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 225
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "lat"

    iget-wide v5, v3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 226
    const-string/jumbo v4, "lng"

    iget-wide v5, v3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 227
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 231
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "point":Lcom/google/android/gms/maps/model/LatLng;
    :catch_2e
    move-exception v4

    .line 234
    :goto_2f
    const/4 v4, 0x0

    return-object v4

    .line 230
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_31
    iget-object v5, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "javascript:addPolyline("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    instance-of v4, v0, Lorg/json/JSONArray;

    if-nez v4, :cond_6f

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_47
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", %1$d, %2$d);"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2f

    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_6f
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "array":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_74} :catch_2e

    move-result-object v4

    goto :goto_47
.end method

.method public animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 8
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:centerMap(%1$f, %2$f);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public animateCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 183
    return-void
.end method

.method public clearMarkers()V
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:clearMarkers();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public drawCircle(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 9
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:addCircle(%1$f, %2$f, %3$d);"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mCenter:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getMapScreenBounds(Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;)V
    .registers 4
    .param p1, "callback"    # Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mMapBoundsCallback:Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;

    .line 253
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:getBounds();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public getZoom()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mZoom:I

    return v0
.end method

.method public highlightListingMarker(JJ)V
    .registers 10
    .param p1, "prevListingId"    # J
    .param p3, "currListingId"    # J

    .prologue
    .line 151
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:highlightListingMarker(%1$d, %2$d);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public init()V
    .registers 1

    .prologue
    .line 138
    return-void
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mLoaded:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 15

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_3
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "WebViewMapFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_c} :catch_45

    .line 79
    :goto_c
    const v0, 0x7f0300fd

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 81
    .local v8, "view":Landroid/view/View;
    invoke-static {p0, v8}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    .line 84
    .local v9, "webViewSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 85
    invoke-virtual {v9, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 86
    invoke-virtual {v9, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "map_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/airbnb/android/views/AirMapView$MapType;->getState(I)Lcom/airbnb/android/views/AirMapView$MapType;

    move-result-object v6

    .line 90
    .local v6, "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    iget-object v7, v6, Lcom/airbnb/android/views/AirMapView$MapType;->mUrl:Ljava/lang/String;

    .line 91
    .local v7, "url":Ljava/lang/String;
    const/4 v2, 0x0

    .line 93
    .local v2, "urlData":Ljava/lang/String;
    :try_start_37
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/airbnb/android/utils/MiscUtils;->getStringFromFile(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3e} :catch_98

    move-result-object v2

    .line 97
    :goto_3f
    if-nez v2, :cond_4f

    .line 99
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 108
    :goto_44
    return-object v8

    .line 4294967295
    .end local v2    # "urlData":Ljava/lang/String;
    .end local v6    # "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    .end local v7    # "url":Ljava/lang/String;
    .end local v8    # "view":Landroid/view/View;
    .end local v9    # "webViewSettings":Landroid/webkit/WebSettings;
    :catch_45
    move-exception v0

    const/4 v0, 0x0

    :try_start_47
    const-string/jumbo v1, "WebViewMapFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_4e} :catch_45

    goto :goto_c

    .line 102
    .restart local v2    # "urlData":Ljava/lang/String;
    .restart local v6    # "mapType":Lcom/airbnb/android/views/AirMapView$MapType;
    .restart local v7    # "url":Ljava/lang/String;
    .restart local v8    # "view":Landroid/view/View;
    .restart local v9    # "webViewSettings":Landroid/webkit/WebSettings;
    :cond_4f
    const-string/jumbo v0, "MAPURL"

    iget-object v1, v6, Lcom/airbnb/android/views/AirMapView$MapType;->mMapUrl:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LANGTOKEN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "REGIONTOKEN"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v6, Lcom/airbnb/android/views/AirMapView$MapType;->mDomain:Ljava/lang/String;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "base64"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;-><init>(Lcom/airbnb/android/fragments/WebViewMapFragment;Landroid/content/Context;)V

    const-string/jumbo v3, "Android"

    invoke-virtual {v0, v1, v3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto :goto_44

    .line 94
    :catch_98
    move-exception v0

    goto :goto_3f
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public removePolyline(Lcom/google/android/gms/maps/model/Polyline;)V
    .registers 5
    .param p1, "polyline"    # Lcom/google/android/gms/maps/model/Polyline;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:removeAllPolylines();"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 8
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:centerMap(%1$f, %2$f);"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public setCenter(Lcom/google/android/gms/maps/model/LatLngBounds;I)V
    .registers 9
    .param p1, "bounds"    # Lcom/google/android/gms/maps/model/LatLngBounds;
    .param p2, "boundsPadding"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:setBounds(%1$f, %2$f, %3$f, %4$f);"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method public setCenterZoom(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/WebViewMapFragment;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 177
    invoke-virtual {p0, p2}, Lcom/airbnb/android/fragments/WebViewMapFragment;->setZoom(I)V

    .line 178
    return-void
.end method

.method public setInfoWindowCreator(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;)V
    .registers 3
    .param p1, "adapter"    # Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .param p2, "creator"    # Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;

    .prologue
    .line 248
    iput-object p2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mInfoWindowCreator:Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;

    .line 249
    return-void
.end method

.method public setMyLocationEnabled(Z)V
    .registers 2
    .param p1, "b"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public setOnCameraChangeListener(Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnCameraChangeListener:Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;

    .line 165
    return-void
.end method

.method public setOnInfoWindowClickListener(Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnInfoWindowClickListener:Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

    .line 244
    return-void
.end method

.method public setOnMapClickListener(Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnMapClickListener;

    .prologue
    .line 201
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/WebViewMapFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/android/fragments/WebViewMapFragment$1;-><init>(Lcom/airbnb/android/fragments/WebViewMapFragment;Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 210
    .local v0, "clickDetector":Landroid/view/GestureDetector;
    iget-object v1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/airbnb/android/fragments/WebViewMapFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/fragments/WebViewMapFragment$2;-><init>(Lcom/airbnb/android/fragments/WebViewMapFragment;Landroid/view/GestureDetector;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 217
    return-void
.end method

.method public setOnMapLoadedListener(Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    .line 169
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mLoaded:Z

    if-eqz v0, :cond_b

    .line 170
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnMapLoadedListener:Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;

    invoke-interface {v0}, Lcom/airbnb/android/views/AirMapView$OnMapLoadedListener;->onMapLoaded()V

    .line 172
    :cond_b
    return-void
.end method

.method public setOnMarkerClickListener(Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mOnMarkerClickListener:Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

    .line 187
    return-void
.end method

.method public setPadding(IIII)V
    .registers 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 192
    return-void
.end method

.method public setZoom(I)V
    .registers 7
    .param p1, "zoom"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment;->mWebView:Landroid/webkit/WebView;

    const-string/jumbo v1, "javascript:setZoom(%1$d);"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 129
    return-void
.end method
