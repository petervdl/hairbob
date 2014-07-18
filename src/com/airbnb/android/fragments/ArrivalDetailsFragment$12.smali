.class Lcom/airbnb/android/fragments/ArrivalDetailsFragment$12;
.super Ljava/lang/Object;
.source "ArrivalDetailsFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->startAddGeofenceRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V
    .registers 2

    .prologue
    .line 783
    iput-object p1, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$12;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$12;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    # invokes: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->addGeofences()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$2100(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;)V

    .line 787
    return-void
.end method

.method public onDisconnected()V
    .registers 3

    .prologue
    .line 791
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$12;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mGeofenceRequestInProgress:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$2202(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Z)Z

    .line 792
    iget-object v0, p0, Lcom/airbnb/android/fragments/ArrivalDetailsFragment$12;->this$0:Lcom/airbnb/android/fragments/ArrivalDetailsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->mLocationClient:Lcom/google/android/gms/location/LocationClient;
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/ArrivalDetailsFragment;->access$2302(Lcom/airbnb/android/fragments/ArrivalDetailsFragment;Lcom/google/android/gms/location/LocationClient;)Lcom/google/android/gms/location/LocationClient;

    .line 793
    return-void
.end method
