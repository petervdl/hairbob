.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$MapCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChanged(Lcom/google/android/gms/maps/model/LatLng;I)V
    .registers 5
    .param p1, "center"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "zoom"    # I

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mIgnoreCameraChange:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$500(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 179
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # setter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mIgnoreCameraChange:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$502(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;Z)Z

    .line 186
    :cond_e
    :goto_e
    return-void

    .line 182
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # setter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAllowNewBounds:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$002(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;Z)Z

    .line 183
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchMode:Z
    invoke-static {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$600(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 184
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # invokes: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->requestNewSearchResults()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$700(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    goto :goto_e
.end method

.method public onMapInitialized()V
    .registers 5

    .prologue
    .line 155
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 156
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    new-instance v1, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$1;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirMapView;->setOnMapClickListener(Lcom/airbnb/android/views/AirMapView$OnMapClickListener;)V

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$2;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    :cond_23
    return-void
.end method
