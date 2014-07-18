.class public Lcom/airbnb/android/fragments/DiscoverFragment;
.super Lcom/airbnb/android/fragments/WishListableFragment;
.source "DiscoverFragment.java"


# static fields
.field private static final ARG_SHOW_FTUE:Ljava/lang/String; = "show_ftue"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddedEnableLmbCallout:Z

.field private mAddedLastMinuteDealsItem:Z

.field private mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;

.field private mHandledPopularResponse:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-class v0, Lcom/airbnb/android/fragments/DiscoverFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/DiscoverFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/fragments/WishListableFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/DiscoverFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/DiscoverFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mHandledPopularResponse:Z

    return v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/DiscoverFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/DiscoverFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mHandledPopularResponse:Z

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/DiscoverFragment;)Lcom/airbnb/android/adapters/DiscoverAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/DiscoverFragment;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/DiscoverFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/DiscoverFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mAddedEnableLmbCallout:Z

    return v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/DiscoverFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/DiscoverFragment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mAddedLastMinuteDealsItem:Z

    return v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/DiscoverFragment;Lcom/airbnb/android/models/Collection;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/DiscoverFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/DiscoverFragment;->onWishlistClicked(Lcom/airbnb/android/models/Collection;)V

    return-void
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/DiscoverFragment;I)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/DiscoverFragment;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/DiscoverFragment;->onTravelLocationClicked(I)V

    return-void
.end method

.method static synthetic access$601(Lcom/airbnb/android/fragments/DiscoverFragment;)Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/DiscoverFragment;

    .prologue
    .line 40
    invoke-super {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentManager;Z)Lcom/airbnb/android/fragments/DiscoverFragment;
    .registers 5
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "showFtue"    # Z

    .prologue
    .line 51
    sget-object v2, Lcom/airbnb/android/fragments/DiscoverFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/DiscoverFragment;

    .line 52
    .local v1, "fragment":Lcom/airbnb/android/fragments/DiscoverFragment;
    if-nez v1, :cond_f

    .line 53
    new-instance v1, Lcom/airbnb/android/fragments/DiscoverFragment;

    .end local v1    # "fragment":Lcom/airbnb/android/fragments/DiscoverFragment;
    invoke-direct {v1}, Lcom/airbnb/android/fragments/DiscoverFragment;-><init>()V

    .line 56
    .restart local v1    # "fragment":Lcom/airbnb/android/fragments/DiscoverFragment;
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "arguments":Landroid/os/Bundle;
    const-string/jumbo v2, "show_ftue"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/DiscoverFragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    return-object v1
.end method

.method private onTravelLocationClicked(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 176
    iget-object v1, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->getLocationPageRecord(I)Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;

    move-result-object v0

    .line 178
    .local v0, "locationPageRecord":Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    invoke-static {v0, p1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackTravelLocationClick(Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;I)V

    .line 179
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, v0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->selectedLocation:Lcom/airbnb/android/models/TravelLocation;

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/TravelLocationSearchActivity;->intentFor(Landroid/content/Context;Lcom/airbnb/android/models/TravelLocation;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method

.method private onWishlistClicked(Lcom/airbnb/android/models/Collection;)V
    .registers 4
    .param p1, "wishlist"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 171
    invoke-static {p1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackWishlistClick(Lcom/airbnb/android/models/Collection;)V

    .line 172
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/android/activities/WishListListingsActivity;->intentForWishList(Landroid/content/Context;Lcom/airbnb/android/models/Collection;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    .line 173
    return-void
.end method


# virtual methods
.method protected getAdapter()Lcom/airbnb/android/adapters/WishListableAdapter;
    .registers 5

    .prologue
    .line 196
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;

    if-nez v0, :cond_13

    .line 197
    new-instance v0, Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "featured"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/airbnb/android/adapters/DiscoverAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;

    .line 199
    :cond_13
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;

    return-object v0
.end method

.method public getLayout()I
    .registers 2

    .prologue
    .line 65
    const v0, 0x7f03016e

    return v0
.end method

.method protected getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 153
    new-instance v0, Lcom/airbnb/android/fragments/DiscoverFragment$3;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/DiscoverFragment$3;-><init>(Lcom/airbnb/android/fragments/DiscoverFragment;)V

    return-object v0
.end method

.method public listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/WishListableFragment;->listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V

    .line 214
    return-void
.end method

.method public listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/WishListableFragment;->listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V

    .line 207
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 184
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/WishListableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 185
    const v0, 0x7f100005

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super/range {p0 .. p3}, Lcom/airbnb/android/fragments/WishListableFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v13

    .line 79
    .local v13, "view":Landroid/view/View;
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;

    new-instance v1, Lcom/airbnb/android/fragments/DiscoverFragment$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/DiscoverFragment$1;-><init>(Lcom/airbnb/android/fragments/DiscoverFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/DiscoverAdapter;->setListingShownListener(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    .line 91
    .local v4, "user":Lcom/airbnb/android/models/User;
    const-string/jumbo v0, "guest"

    const-string/jumbo v1, "mobile_dummy_experiment"

    const-string/jumbo v6, "enabled"

    invoke-static {v0, v1, v6}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 93
    const-string/jumbo v0, "discover"

    const-string/jumbo v1, "last_minute_bookings"

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;

    const/4 v1, 0x0

    new-instance v6, Lcom/airbnb/android/models/LastMinuteDealsFeedItem;

    invoke-direct {v6}, Lcom/airbnb/android/models/LastMinuteDealsFeedItem;-><init>()V

    invoke-virtual {v0, v1, v6}, Lcom/airbnb/android/adapters/DiscoverAdapter;->addDiscoverItem(ILcom/airbnb/android/interfaces/FeedItem;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mAddedLastMinuteDealsItem:Z

    .line 98
    :cond_46
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DiscoverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/LocationHelper;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v5

    .line 99
    .local v5, "lastLocation":Landroid/location/Location;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 100
    .local v2, "popularStartTime":J
    new-instance v6, Lcom/airbnb/android/requests/PopularRequest;

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    new-instance v0, Lcom/airbnb/android/fragments/DiscoverFragment$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/DiscoverFragment$2;-><init>(Lcom/airbnb/android/fragments/DiscoverFragment;JLcom/airbnb/android/models/User;Landroid/location/Location;)V

    move-object v10, v5

    move-object v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/airbnb/android/requests/PopularRequest;-><init>(IILcom/airbnb/android/utils/Strap;Landroid/location/Location;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v6, p0}, Lcom/airbnb/android/requests/PopularRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 140
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DiscoverFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "show_ftue"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 141
    .local v12, "showFtue":Z
    if-nez p3, :cond_8d

    if-eqz v12, :cond_8d

    .line 142
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/DiscoverFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080025

    new-instance v6, Lcom/airbnb/android/fragments/SlideUpFtueFragment;

    invoke-direct {v6}, Lcom/airbnb/android/fragments/SlideUpFtueFragment;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v6, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 145
    :cond_8d
    return-object v13
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 190
    const v0, 0x7f080536

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/android/fragments/DiscoverFragment;->prepareMenuItem(Landroid/view/Menu;I)V

    .line 191
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/WishListableFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 192
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->onStop()V

    .line 72
    iget-object v0, p0, Lcom/airbnb/android/fragments/DiscoverFragment;->mDiscoverAdapter:Lcom/airbnb/android/adapters/DiscoverAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/DiscoverAdapter;->killAutoScroll()V

    .line 73
    return-void
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 220
    const v0, 0x7f0e0750

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 221
    return-void
.end method
