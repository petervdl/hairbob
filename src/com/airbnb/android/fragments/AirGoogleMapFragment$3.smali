.class Lcom/airbnb/android/fragments/AirGoogleMapFragment$3;
.super Ljava/lang/Object;
.source "AirGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirGoogleMapFragment;->setOnCameraChangeListener(Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

.field final synthetic val$onCameraChangeListener:Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;)V
    .registers 3

    .prologue
    .line 193
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$3;->this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$3;->val$onCameraChangeListener:Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .registers 5
    .param p1, "cameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$3;->val$onCameraChangeListener:Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;

    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget v2, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/android/fragments/WebViewMapFragment$OnCameraChangeListener;->onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 198
    return-void
.end method
