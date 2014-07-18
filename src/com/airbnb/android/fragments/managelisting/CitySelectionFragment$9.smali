.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$9;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 261
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 265
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v1, v1, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string/jumbo v1, "lys"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "locate_me_click"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$000(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Lcom/airbnb/android/utils/LocationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->requestLocationUpdates()V

    .line 267
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # setter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mHasSetCity:Z
    invoke-static {v0, v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$202(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)Z

    .line 268
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$9;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->centerMap(Z)V
    invoke-static {v0, v4}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$100(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;Z)V

    .line 269
    return-void
.end method
