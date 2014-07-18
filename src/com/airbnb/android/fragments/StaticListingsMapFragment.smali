.class public Lcom/airbnb/android/fragments/StaticListingsMapFragment;
.super Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;
.source "StaticListingsMapFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/StaticListingsMapFragment;
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/airbnb/android/fragments/StaticListingsMapFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/StaticListingsMapFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected onLoopingViewPagerPageSelected(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->onLoopingViewPagerPageSelected(I)V

    .line 20
    iget-object v0, p0, Lcom/airbnb/android/fragments/StaticListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    new-instance v1, Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/StaticListingsMapFragment$1;-><init>(Lcom/airbnb/android/fragments/StaticListingsMapFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirMapView;->getScreenBounds(Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;)V

    .line 32
    return-void
.end method
