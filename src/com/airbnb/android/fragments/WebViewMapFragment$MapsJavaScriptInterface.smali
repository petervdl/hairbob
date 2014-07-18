.class Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;
.super Ljava/lang/Object;
.source "WebViewMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/WebViewMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MapsJavaScriptInterface"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/fragments/WebViewMapFragment;Landroid/content/Context;)V
    .registers 3
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method


# virtual methods
.method public getBoundsCallback(DDDD)V
    .registers 12
    .param p1, "neLat"    # D
    .param p3, "neLng"    # D
    .param p5, "swLat"    # D
    .param p7, "swLng"    # D
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p5, p6, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 300
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$3;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$3;-><init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method

.method public mapClick()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 287
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$2;-><init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    return-void
.end method

.method public mapMove(DDI)V
    .registers 8
    .param p1, "lat"    # D
    .param p3, "lng"    # D
    .param p5, "zoom"    # I
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    # setter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mCenter:Lcom/google/android/gms/maps/model/LatLng;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$402(Lcom/airbnb/android/fragments/WebViewMapFragment;Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLng;

    .line 311
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # setter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mZoom:I
    invoke-static {v0, p5}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$502(Lcom/airbnb/android/fragments/WebViewMapFragment;I)I

    .line 313
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$4;-><init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public markerClick(J)V
    .registers 5
    .param p1, "listingId"    # J
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 334
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$5;-><init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 369
    return-void
.end method

.method public onMapLoaded()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 272
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$1;-><init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method
