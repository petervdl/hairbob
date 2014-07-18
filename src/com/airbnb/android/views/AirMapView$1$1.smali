.class Lcom/airbnb/android/views/AirMapView$1$1;
.super Ljava/lang/Object;
.source "AirMapView.java"

# interfaces
.implements Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/AirMapView$1;->onMapLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/views/AirMapView$1;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/AirMapView$1;)V
    .registers 2

    .prologue
    .line 173
    iput-object p1, p0, Lcom/airbnb/android/views/AirMapView$1$1;->this$1:Lcom/airbnb/android/views/AirMapView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 4
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/airbnb/android/views/AirMapView$1$1;->this$1:Lcom/airbnb/android/views/AirMapView$1;

    iget-object v0, v0, Lcom/airbnb/android/views/AirMapView$1;->this$0:Lcom/airbnb/android/views/AirMapView;

    # getter for: Lcom/airbnb/android/views/AirMapView;->mMapCallbacks:Lcom/airbnb/android/views/AirMapView$MapCallbacks;
    invoke-static {v0}, Lcom/airbnb/android/views/AirMapView;->access$100(Lcom/airbnb/android/views/AirMapView;)Lcom/airbnb/android/views/AirMapView$MapCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/views/AirMapView$MapCallbacks;->onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 177
    return-void
.end method
