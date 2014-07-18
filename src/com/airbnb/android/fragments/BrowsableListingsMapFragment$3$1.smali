.class Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$1;
.super Ljava/lang/Object;
.source "BrowsableListingsMapFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/AirMapView$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->onMapInitialized()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;)V
    .registers 2

    .prologue
    .line 156
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$1;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .registers 6
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$1;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$200(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/views/LoopingViewPager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoopingViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_34

    .line 160
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$1;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;

    iget-object v0, v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;
    invoke-static {v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$200(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/views/LoopingViewPager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoopingViewPager;->setVisibility(I)V

    .line 161
    const-string/jumbo v0, "map_listing_hide"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "position"

    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3$1;->this$1:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;

    iget-object v3, v3, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;->this$0:Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    # getter for: Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I
    invoke-static {v3}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->access$400(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackMapResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 163
    :cond_34
    return-void
.end method
