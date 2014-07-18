.class Lcom/airbnb/android/utils/LocationHelper$3;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/LocationHelper;-><init>(Landroid/content/Context;Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/utils/LocationHelper;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/LocationHelper;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/utils/LocationHelper$3;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    iput-object p2, p0, Lcom/airbnb/android/utils/LocationHelper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 5
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/airbnb/android/utils/LocationHelper$3;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper$3;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    # setter for: Lcom/airbnb/android/utils/LocationHelper;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v1, v0}, Lcom/airbnb/android/utils/LocationHelper;->access$102(Lcom/airbnb/android/utils/LocationHelper;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    .line 77
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper$3;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    # getter for: Lcom/airbnb/android/utils/LocationHelper;->mCallbacks:Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;
    invoke-static {v0}, Lcom/airbnb/android/utils/LocationHelper;->access$000(Lcom/airbnb/android/utils/LocationHelper;)Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;->onConnected()V

    .line 78
    return-void
.end method
