.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8$1;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$MapCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8$1;->this$1:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 5
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8$1;->this$1:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    const/4 v1, 0x1

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->executeGeocoderTask(Lcom/google/android/gms/maps/model/LatLng;Z)V
    invoke-static {v0, p1, v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$800(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Lcom/google/android/gms/maps/model/LatLng;Z)V

    .line 255
    return-void
.end method

.method public onMapInitialized()V
    .registers 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8$1;->this$1:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;

    iget-object v0, v0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->centerMap(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)V

    .line 250
    return-void
.end method
