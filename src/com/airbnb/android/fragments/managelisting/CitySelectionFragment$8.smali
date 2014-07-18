.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 243
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 246
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$900(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Lcom/airbnb/android/views/AirMapView;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8$1;-><init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$8;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/airbnb/android/views/AirMapView;->onCreateView(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;ZLcom/airbnb/android/views/AirMapView$MapCallbacks;)V

    .line 257
    return-void
.end method
