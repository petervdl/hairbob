.class Lcom/airbnb/android/fragments/ArrivalTrackerFragment$1;
.super Ljava/lang/Object;
.source "ArrivalTrackerFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$MapCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->initializeMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 3
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    .line 239
    return-void
.end method

.method public onMapInitialized()V
    .registers 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ArrivalTrackerFragment$1;->this$0:Lcom/airbnb/android/fragments/ArrivalTrackerFragment;

    # getter for: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->mArrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    invoke-static {v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$000(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;)Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->hasFlightDetails()Z

    move-result v1

    # invokes: Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->drawRoute(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ArrivalTrackerFragment;->access$100(Lcom/airbnb/android/fragments/ArrivalTrackerFragment;Z)V

    .line 234
    return-void
.end method
