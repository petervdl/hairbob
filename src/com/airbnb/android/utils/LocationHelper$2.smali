.class Lcom/airbnb/android/utils/LocationHelper$2;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;


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
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/utils/LocationHelper$2;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper$2;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    # getter for: Lcom/airbnb/android/utils/LocationHelper;->mCallbacks:Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;
    invoke-static {v0}, Lcom/airbnb/android/utils/LocationHelper;->access$000(Lcom/airbnb/android/utils/LocationHelper;)Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;->onConnected()V

    .line 70
    return-void
.end method

.method public onDisconnected()V
    .registers 1

    .prologue
    .line 65
    return-void
.end method
