.class Lcom/airbnb/android/fragments/AirGoogleMapFragment$2;
.super Ljava/lang/Object;
.source "AirGoogleMapFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/AirGoogleMapFragment;->setOnInfoWindowClickListener(Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

.field final synthetic val$listener:Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/AirGoogleMapFragment;Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;)V
    .registers 3

    .prologue
    .line 123
    iput-object p1, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$2;->this$0:Lcom/airbnb/android/fragments/AirGoogleMapFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$2;->val$listener:Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .registers 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/airbnb/android/fragments/AirGoogleMapFragment$2;->val$listener:Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/views/AirMapView$OnInfoWindowClickListener;->onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V

    .line 127
    return-void
.end method
