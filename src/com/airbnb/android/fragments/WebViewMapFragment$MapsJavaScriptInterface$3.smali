.class Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$3;
.super Ljava/lang/Object;
.source "WebViewMapFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->getBoundsCallback(DDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

.field final synthetic val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .registers 3

    .prologue
    .line 300
    iput-object p1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$3;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iput-object p2, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$3;->val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$3;->this$1:Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;

    iget-object v0, v0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface;->this$0:Lcom/airbnb/android/fragments/WebViewMapFragment;

    # getter for: Lcom/airbnb/android/fragments/WebViewMapFragment;->mMapBoundsCallback:Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;
    invoke-static {v0}, Lcom/airbnb/android/fragments/WebViewMapFragment;->access$300(Lcom/airbnb/android/fragments/WebViewMapFragment;)Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/WebViewMapFragment$MapsJavaScriptInterface$3;->val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-interface {v0, v1}, Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;->onMapBoundsReady(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 304
    return-void
.end method
