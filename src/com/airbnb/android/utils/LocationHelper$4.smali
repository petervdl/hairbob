.class Lcom/airbnb/android/utils/LocationHelper$4;
.super Ljava/lang/Object;
.source "LocationHelper.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


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
    .line 171
    iput-object p1, p0, Lcom/airbnb/android/utils/LocationHelper$4;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/airbnb/android/utils/LocationHelper$4;->this$0:Lcom/airbnb/android/utils/LocationHelper;

    # invokes: Lcom/airbnb/android/utils/LocationHelper;->handleLocationChanged(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/utils/LocationHelper;->access$200(Lcom/airbnb/android/utils/LocationHelper;Landroid/location/Location;)V

    .line 176
    return-void
.end method
