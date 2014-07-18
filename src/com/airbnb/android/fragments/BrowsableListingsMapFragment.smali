.class public Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;
.super Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;
.source "BrowsableListingsMapFragment.java"


# static fields
.field private static final DELAY_VISIBLE_MILLIS:I = 0x64

.field private static final KEY_SEARCH_MODE:Ljava/lang/String; = "search_mode_enabled"

.field private static final MAP_CENTER_DELAY_MILLIS:I = 0x64

.field private static final MAX_LISTINGS_IN_MAP:I = 0x32


# instance fields
.field protected mAirMapView:Lcom/airbnb/android/views/AirMapView;

.field private mAllowNewBounds:Z

.field private mHasMarker:Z

.field protected mHighlightedListing:Lcom/airbnb/android/models/Listing;

.field private mIgnoreCameraChange:Z

.field private mListingsLoadedReceiver:Landroid/content/BroadcastReceiver;

.field private mLoopingListingPosition:I

.field private mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

.field protected mMapBoundingBoxPadding:I

.field private mMapMarkerListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private mMapMarkerManager:Lcom/airbnb/android/utils/MapMarkerManager;

.field private mSearchMode:Z

.field private mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;-><init>()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerListings:Ljava/util/List;

    .line 84
    new-instance v0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$1;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mListingsLoadedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAllowNewBounds:Z

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->refreshMap()V

    return-void
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/requests/SearchRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;Lcom/airbnb/android/requests/SearchRequest;)Lcom/airbnb/android/requests/SearchRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/SearchRequest;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/views/LoopingViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->updateMapMarkerListings()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    .prologue
    .line 50
    iget v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mIgnoreCameraChange:Z

    return v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mIgnoreCameraChange:Z

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->requestNewSearchResults()V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;J)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;
    .param p1, "x1"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->handleMapMarkerClick(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)Lcom/airbnb/android/utils/MapMarkerManager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerManager:Lcom/airbnb/android/utils/MapMarkerManager;

    return-object v0
.end method

.method private handleMapMarkerClick(J)V
    .registers 10
    .param p1, "listingId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 341
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Search"

    aput-object v3, v2, v5

    const-string/jumbo v3, "show_map_detail"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getOrigin()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 342
    const-string/jumbo v2, "map_pin_click"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "listing_id"

    invoke-virtual {v3, v4, p1, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackMapResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 343
    iput-boolean v6, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mIgnoreCameraChange:Z

    .line 345
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoopingViewPager;->getAdapter()Lcom/airbnb/android/adapters/LoopingPagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;

    .line 346
    .local v0, "adapter":Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;
    if-eqz v0, :cond_53

    .line 347
    invoke-virtual {v0, p1, p2}, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;->getListingPosition(J)I

    move-result v1

    .line 348
    .local v1, "listingPosition":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_53

    .line 349
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v2, v5}, Lcom/airbnb/android/views/LoopingViewPager;->setVisibility(I)V

    .line 350
    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;->itemToPagePosition(I)I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    .line 351
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoopingViewPager;->getViewPager()Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v2

    iget v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    invoke-virtual {v2, v3, v5}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 354
    .end local v1    # "listingPosition":I
    :cond_53
    return-void
.end method

.method public static newInstance(Z)Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;
    .registers 4
    .param p0, "forSearch"    # Z

    .prologue
    .line 76
    new-instance v1, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;-><init>()V

    .line 77
    .local v1, "frag":Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "search_mode_enabled"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v1
.end method

.method private refreshMap()V
    .registers 16

    .prologue
    const/4 v8, 0x1

    .line 276
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->isResumed()Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v9}, Lcom/airbnb/android/views/AirMapView;->getWidth()I

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v9}, Lcom/airbnb/android/views/AirMapView;->getHeight()I

    move-result v9

    if-nez v9, :cond_1c

    .line 338
    :cond_1b
    :goto_1b
    return-void

    .line 280
    :cond_1c
    iget-boolean v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mHasMarker:Z

    if-nez v9, :cond_54

    .line 281
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;

    .line 282
    .local v6, "parent":Lcom/airbnb/android/interfaces/BrowsableListingsInterface;
    invoke-interface {v6}, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;->getSearchGeography()Lcom/airbnb/android/models/SearchGeography;

    move-result-object v1

    .line 283
    .local v1, "geography":Lcom/airbnb/android/models/SearchGeography;
    invoke-interface {v6}, Lcom/airbnb/android/interfaces/BrowsableListingsInterface;->getSearchQuery()Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, "query":Ljava/lang/String;
    if-eqz v1, :cond_54

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_54

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchGeography;->isPreciseLocation()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 285
    iget-object v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchGeography;->getLat()D

    move-result-wide v11

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchGeography;->getLng()D

    move-result-wide v13

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const v11, 0x7f020147

    invoke-virtual {v9, v10, v11, v7}, Lcom/airbnb/android/views/AirMapView;->addMarker(Lcom/google/android/gms/maps/model/LatLng;ILjava/lang/String;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mHasMarker:Z

    .line 289
    .end local v1    # "geography":Lcom/airbnb/android/models/SearchGeography;
    .end local v6    # "parent":Lcom/airbnb/android/interfaces/BrowsableListingsInterface;
    .end local v7    # "query":Ljava/lang/String;
    :cond_54
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getSearchListings()Ljava/util/List;

    move-result-object v5

    .line 291
    .local v5, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    if-eqz v5, :cond_1b

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 294
    invoke-static {}, Lcom/google/android/gms/maps/model/LatLngBounds;->builder()Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    move-result-object v0

    .line 295
    .local v0, "builder":Lcom/google/android/gms/maps/model/LatLngBounds$Builder;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Listing;

    .line 296
    .local v4, "listing":Lcom/airbnb/android/models/Listing;
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v11

    invoke-direct {v3, v9, v10, v11, v12}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 297
    .local v3, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->include(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/LatLngBounds$Builder;

    .line 299
    iget-object v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerManager:Lcom/airbnb/android/utils/MapMarkerManager;

    iget-object v10, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v9, v10, v4}, Lcom/airbnb/android/utils/MapMarkerManager;->addListingToMap(Lcom/airbnb/android/views/AirMapView;Lcom/airbnb/android/models/Listing;)V

    goto :goto_68

    .line 302
    .end local v3    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v4    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_8c
    iget-object v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    new-instance v10, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$6;

    invoke-direct {v10, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$6;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    invoke-virtual {v9, v10}, Lcom/airbnb/android/views/AirMapView;->setOnMarkerClickListener(Lcom/airbnb/android/views/AirMapView$OnMapMarkerClickListener;)V

    .line 320
    iget-object v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    new-instance v10, Lcom/airbnb/android/adapters/ZeroSizeMapInfoWindowAdapter;

    invoke-direct {v10}, Lcom/airbnb/android/adapters/ZeroSizeMapInfoWindowAdapter;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/android/views/AirMapView;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;Lcom/airbnb/android/views/AirMapView$InfoWindowCreator;)V

    .line 322
    iget-boolean v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAllowNewBounds:Z

    if-eqz v9, :cond_1b

    .line 323
    iput-boolean v8, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mIgnoreCameraChange:Z

    .line 324
    iget-object v9, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLngBounds$Builder;->build()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v10

    iget v11, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapBoundingBoxPadding:I

    invoke-virtual {v9, v10, v11}, Lcom/airbnb/android/views/AirMapView;->setBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Z

    move-result v9

    if-nez v9, :cond_cc

    :goto_b5
    iput-boolean v8, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAllowNewBounds:Z

    .line 326
    iget-boolean v8, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAllowNewBounds:Z

    if-nez v8, :cond_1b

    .line 327
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$7;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$7;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1b

    .line 324
    :cond_cc
    const/4 v8, 0x0

    goto :goto_b5
.end method

.method private requestNewSearchResults()V
    .registers 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    if-eqz v0, :cond_9

    .line 358
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/SearchRequest;->cancel()V

    .line 362
    :cond_9
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_10

    .line 397
    :goto_f
    return-void

    .line 366
    :cond_10
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    new-instance v1, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$8;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirMapView;->getScreenBounds(Lcom/airbnb/android/views/AirMapView$OnMapBoundsCallback;)V

    goto :goto_f
.end method

.method private setupLoopingViewPager(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 197
    const v0, 0x7f080421

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/LoopingViewPager;

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    .line 198
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoopingViewPager;->setPeekEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    new-instance v1, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$4;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoopingViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 216
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    new-instance v1, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$5;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$5;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/LoopingViewPager;->setViewPagerClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void
.end method

.method private updateLoopingViewPager()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 437
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getSearchListings()Ljava/util/List;

    move-result-object v1

    .line 438
    .local v1, "searchListings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    new-instance v0, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;

    invoke-direct {v0, v1}, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;-><init>(Ljava/util/List;)V

    .line 439
    .local v0, "listingsAdapter":Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;
    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v3, v0}, Lcom/airbnb/android/views/LoopingViewPager;->setAdapter(Lcom/airbnb/android/adapters/LoopingPagerAdapter;)V

    .line 441
    invoke-virtual {v0, v2}, Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;->itemToPagePosition(I)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    .line 442
    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoopingViewPager;->getViewPager()Lcom/airbnb/android/views/ClickableViewPager;

    move-result-object v3

    iget v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    invoke-virtual {v3, v4, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 443
    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    if-eqz v1, :cond_30

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    :cond_30
    const/4 v2, 0x1

    :cond_31
    invoke-static {v3, v2}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 446
    if-eqz v1, :cond_56

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    if-le v2, v3, :cond_56

    .line 447
    iget v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    iput-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mHighlightedListing:Lcom/airbnb/android/models/Listing;

    .line 448
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerManager:Lcom/airbnb/android/utils/MapMarkerManager;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mHighlightedListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/airbnb/android/utils/MapMarkerManager;->highlightListingMarker(Landroid/content/Context;Lcom/airbnb/android/views/AirMapView;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V

    .line 451
    .end local v0    # "listingsAdapter":Lcom/airbnb/android/adapters/MapListingsViewPagerAdapter;
    .end local v1    # "searchListings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    :cond_56
    return-void
.end method

.method private updateMapMarkerListings()V
    .registers 4

    .prologue
    const/16 v2, 0x32

    .line 467
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->getSearchListings()Ljava/util/List;

    move-result-object v0

    .line 468
    .local v0, "searchListings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_13

    .line 469
    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 471
    :cond_13
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerListings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 472
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerListings:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    return-void
.end method


# virtual methods
.method protected getSearchListings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerListings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 457
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->updateMapMarkerListings()V

    .line 459
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerListings:Ljava/util/List;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 401
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onAttach(Landroid/app/Activity;)V

    .line 403
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 105
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_13

    .line 106
    const-string/jumbo v1, "search_mode_enabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchMode:Z

    .line 109
    :cond_13
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapBoundingBoxPadding:I

    .line 111
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mListingsLoadedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, ".intent.action.LOADED_SEARCH_RESULTS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 138
    const v3, 0x7f030194

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f080095

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/AirMapView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    .line 141
    invoke-static {}, Lcom/airbnb/android/utils/MapMarkerManager;->createMapMarkerManager()Lcom/airbnb/android/utils/MapMarkerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerManager:Lcom/airbnb/android/utils/MapMarkerManager;

    .line 143
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getSearchGeography()Lcom/airbnb/android/models/SearchGeography;

    move-result-object v1

    .line 144
    .local v1, "searchGeography":Lcom/airbnb/android/models/SearchGeography;
    const-string/jumbo v0, ""

    .line 145
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz v1, :cond_26

    .line 146
    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchGeography;->getCountryCode()Ljava/lang/String;

    .line 149
    :cond_26
    iput-boolean v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAllowNewBounds:Z

    .line 150
    iput-boolean v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mIgnoreCameraChange:Z

    .line 152
    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$3;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    invoke-virtual {v3, v4, v0, v6, v5}, Lcom/airbnb/android/views/AirMapView;->onCreateView(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;ZLcom/airbnb/android/views/AirMapView$MapCallbacks;)V

    .line 189
    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->setupLoopingViewPager(Landroid/view/View;)V

    .line 191
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 193
    return-object v2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onDestroy()V

    .line 118
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mListingsLoadedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    return-void
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 245
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onDestroyView()V

    .line 247
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirMapView;->onDestroyView()V

    .line 248
    return-void
.end method

.method public onDetach()V
    .registers 2

    .prologue
    .line 408
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onDetach()V

    .line 409
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method public onDrawerOpened(Lcom/airbnb/android/events/DrawerOpenedEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/events/DrawerOpenedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    if-eqz v0, :cond_9

    .line 415
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirMapView;->invalidate()V

    .line 417
    :cond_9
    return-void
.end method

.method protected onLoopingViewPagerPageSelected(I)V
    .registers 8
    .param p1, "position"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoopingViewPager;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 241
    :cond_a
    :goto_a
    return-void

    .line 234
    :cond_b
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingViewPager:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoopingViewPager;->getAdapter()Lcom/airbnb/android/adapters/LoopingPagerAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->getAdjustedPosition(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    .line 235
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getSearchListings()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 236
    .local v0, "selectedListing":Lcom/airbnb/android/models/Listing;
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerManager:Lcom/airbnb/android/utils/MapMarkerManager;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mHighlightedListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/airbnb/android/utils/MapMarkerManager;->highlightListingMarker(Landroid/content/Context;Lcom/airbnb/android/views/AirMapView;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Listing;)V

    .line 237
    if-eqz v0, :cond_a

    .line 238
    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mHighlightedListing:Lcom/airbnb/android/models/Listing;

    .line 239
    const-string/jumbo v1, "map_listing_swipe"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "listing_id"

    iget-object v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mHighlightedListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "position"

    iget v4, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mLoopingListingPosition:I

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackMapResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_a
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 265
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onPause()V

    .line 267
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 269
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchMode:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    if-eqz v0, :cond_1b

    .line 270
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/SearchRequest;->cancel()V

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    .line 273
    :cond_1b
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onResume()V

    .line 254
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->refreshMap()V

    .line 256
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mSearchMode:Z

    if-nez v0, :cond_d

    .line 259
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->updateLoopingViewPager()V

    .line 261
    :cond_d
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 6
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->setUserVisibleHint(Z)V

    .line 125
    if-eqz p1, :cond_14

    .line 127
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment$2;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    :cond_14
    return-void
.end method

.method protected updateSearchResults(Z)V
    .registers 4
    .param p1, "newSearch"    # Z

    .prologue
    const/4 v0, 0x0

    .line 421
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerManager:Lcom/airbnb/android/utils/MapMarkerManager;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    if-eqz v1, :cond_18

    .line 423
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mMapMarkerManager:Lcom/airbnb/android/utils/MapMarkerManager;

    invoke-virtual {v1}, Lcom/airbnb/android/utils/MapMarkerManager;->clear()V

    .line 424
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirMapView;->clearMarkers()V

    .line 425
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mHasMarker:Z

    .line 428
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->updateMapMarkerListings()V

    .line 430
    :cond_18
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAllowNewBounds:Z

    if-nez v1, :cond_1e

    if-eqz p1, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    :cond_1f
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->mAllowNewBounds:Z

    .line 431
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->refreshMap()V

    .line 432
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsMapFragment;->updateLoopingViewPager()V

    .line 433
    return-void
.end method
