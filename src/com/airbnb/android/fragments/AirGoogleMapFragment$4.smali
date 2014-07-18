.class Lcom/airbnb/android/fragments/AirGoogleMapFragment$4;
.super Ljava/lang/Object;
.source "AirGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirGoogleMapFragment;->setOnMarkerClickListener(Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

.field final synthetic val$listener:Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;)V
    .registers 3

    .prologue
    .line 220
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$4;->this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$4;->val$listener:Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .registers 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$4;->val$listener:Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;->onMapMarkerClick(Lcom/google/android/gms/maps/model/Marker;)V

    .line 224
    const/4 v0, 0x0

    return v0
.end method
