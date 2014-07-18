.class Lcom/airbnb/android/utils/LocationHelper$1;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;


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


# direct methods
.method constructor <init>(Lcom/airbnb/android/utils/LocationHelper;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/android/utils/LocationHelper$1;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper$1;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->requestLocationUpdates()V

    .line 51
    return-void
.end method

.method public onLocationUpdated(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper$1;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->disconnectLocationClient()V

    .line 56
    return-void
.end method
