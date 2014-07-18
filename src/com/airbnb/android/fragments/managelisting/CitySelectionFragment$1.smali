.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$1;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Lcom/airbnb/android/utils/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->requestLocationUpdates()V

    .line 112
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    const/4 v1, 0x0

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->centerMap(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)V

    .line 113
    return-void
.end method

.method public onLocationUpdated(Landroid/location/Location;)V
    .registers 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 117
    if-eqz p1, :cond_e

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    const/4 v1, 0x0

    # setter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHasSetCity:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$202(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)Z

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    const/4 v1, 0x1

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->centerMap(Z)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)V

    .line 121
    :cond_e
    return-void
.end method
