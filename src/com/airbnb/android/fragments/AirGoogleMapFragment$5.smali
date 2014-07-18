.class Lcom/airbnb/android/fragments/AirGoogleMapFragment$5;
.super Ljava/lang/Object;
.source "AirGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirGoogleMapFragment;->setOnMapClickListener(Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

.field final synthetic val$listener:Lcom/airbnb/android/views/AirMapView$OnMapClickListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V
    .registers 3

    .prologue
    .line 231
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$5;->this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$5;->val$listener:Lcom/airbnb/android/views/AirMapView$OnMapClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$5;->val$listener:Lcom/airbnb/android/views/AirMapView$OnMapClickListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/views/AirMapView$OnMapClickListener;->onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 235
    return-void
.end method
