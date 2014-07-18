.class Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$1;
.super Ljava/lang/Object;
.source "AddressSelectionFragment.java"

# interfaces
.implements Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$1;->this$0:Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/utils/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->requestLocationUpdates()V

    .line 111
    return-void
.end method

.method public onLocationUpdated(Landroid/location/Location;)V
    .registers 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 115
    return-void
.end method
