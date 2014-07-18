.class Lcom/airbnb/android/utils/LocationHelper$5;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/LocationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/LocationHelper;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/LocationHelper;)V
    .registers 2

    .prologue
    .line 179
    iput-object p1, p0, Lcom/airbnb/android/utils/LocationHelper$5;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper$5;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    # invokes: Lcom/airbnb/android/utils/LocationHelper;->handleLocationChanged(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/utils/LocationHelper;->access$200(Lcom/airbnb/android/utils/LocationHelper;Landroid/location/Location;)V

    .line 183
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 195
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 191
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 187
    return-void
.end method
