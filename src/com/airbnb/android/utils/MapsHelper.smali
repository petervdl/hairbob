.class public Lcom/airbnb/android/utils/MapsHelper;
.super Ljava/lang/Object;
.source "MapsHelper.java"


# static fields
.field public static final ASSETS_PREFIX:Ljava/lang/String; = "file:///android_asset/"

.field public static final AUTONAVI_MAP_URL:Ljava/lang/String; = "autonavi_map.html"

.field public static final DEFAULT_ZOOM_LEVEL:I = 0xd

.field public static final GOOGLE_MAP_URL:Ljava/lang/String; = "google_map.html"

.field public static final MAP_CIRCLE_RADIUS_METERS:I = 0x1f4

.field public static final MAP_CIRCLE_STROKE_WIDTH:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSingleListingCircleToMap(Lcom/airbnb/android/models/Listing;Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V
    .registers 8
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 42
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v1, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    const/high16 v2, 0x40a00000

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    const-wide v2, 0x407f400000000000L

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    .line 49
    const/high16 v1, 0x41500000

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 50
    return-void
.end method

.method public static addSingleListingPinToMap(Lcom/airbnb/android/models/Listing;Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V
    .registers 11
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 29
    .local v2, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {p2}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v1

    .line 30
    .local v1, "ch":Lcom/airbnb/android/utils/CurrencyHelper;
    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getPriceNative()I

    move-result v4

    int-to-double v4, v4

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Lcom/airbnb/android/utils/CurrencyHelper;->formatNativeCurrency(DZ)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "price":Ljava/lang/String;
    invoke-static {p2, v3}, Lcom/airbnb/android/utils/MapMarkerGenerator;->getPriceMarker(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v4}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v4, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 37
    const/high16 v4, 0x41500000

    invoke-static {v2, v4}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 38
    return-void
.end method
