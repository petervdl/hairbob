.class public Lcom/airbnb/android/fragments/SpacesListFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "SpacesListFragment.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# static fields
.field private static final MIN_LISTING_COUNT_TO_SHOW_SPINNER:I = 0x7


# instance fields
.field private mFooter:Landroid/view/View;

.field private mIsShowingSpinner:Z

.field private mListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

.field private mSoftSuspendedDialogShown:Z

.field private mUserId:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mSoftSuspendedDialogShown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/SpacesListFragment;)Lcom/airbnb/android/adapters/ListingsRowAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SpacesListFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/SpacesListFragment;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SpacesListFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mListings:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/SpacesListFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SpacesListFragment;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->showSpinnerIfNeeded()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/SpacesListFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SpacesListFragment;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mSoftSuspendedDialogShown:Z

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/SpacesListFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SpacesListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mSoftSuspendedDialogShown:Z

    return p1
.end method

.method private resetListings()V
    .registers 3

    .prologue
    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mListings:Ljava/util/List;

    .line 220
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    if-eqz v0, :cond_15

    .line 221
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->setData(Ljava/util/List;)V

    .line 223
    :cond_15
    return-void
.end method

.method private showSpinnerIfNeeded()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 271
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->isSwapping()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mListings:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_21

    .line 272
    iput-boolean v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mIsShowingSpinner:Z

    .line 273
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 274
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 275
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 277
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_21
    return-void
.end method


# virtual methods
.method public listingCreated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingCreatedEvent;)V
    .registers 4
    .param p1, "lce"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingCreatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    iget-object v1, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingCreatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->addListing(Lcom/airbnb/android/models/Listing;)V

    .line 102
    return-void
.end method

.method public listingDeleted(Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;)V
    .registers 5
    .param p1, "ldr"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    iget-wide v1, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;->listingId:J

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->removeListing(J)Z

    .line 89
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v0

    if-nez v0, :cond_2a

    .line 90
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->intentForState(Landroid/content/Context;Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 92
    :cond_2a
    return-void
.end method

.method public listingListed(Lcom/airbnb/android/events/ListingModifiedEvent$ListingListedEvent;)V
    .registers 4
    .param p1, "lle"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingListedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    iget-object v1, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingListedEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->updateListing(Lcom/airbnb/android/models/Listing;)Z

    .line 97
    return-void
.end method

.method public listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 4
    .param p1, "update"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    iget-object v1, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->updateListing(Lcom/airbnb/android/models/Listing;)Z

    .line 107
    return-void
.end method

.method public loadListings()V
    .registers 9

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 152
    .local v1, "user":Lcom/airbnb/android/models/User;
    if-eqz v1, :cond_39

    .line 153
    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    .line 155
    .local v2, "userId":J
    iget-wide v4, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mUserId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_23

    iget-wide v4, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mUserId:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_23

    .line 156
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->resetListings()V

    .line 159
    :cond_23
    iput-wide v2, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mUserId:J

    .line 161
    new-instance v0, Lcom/airbnb/android/requests/MySpacesRequest;

    iget-wide v4, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mUserId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-instance v6, Lcom/airbnb/android/fragments/SpacesListFragment$3;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/SpacesListFragment$3;-><init>(Lcom/airbnb/android/fragments/SpacesListFragment;)V

    invoke-direct {v0, v4, v5, v6}, Lcom/airbnb/android/requests/MySpacesRequest;-><init>(Ljava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V

    .line 203
    .local v0, "request":Lcom/airbnb/android/requests/MySpacesRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/MySpacesRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 205
    .end local v0    # "request":Lcom/airbnb/android/requests/MySpacesRequest;
    .end local v2    # "userId":J
    :cond_39
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mUserId:J

    .line 68
    new-instance v0, Lcom/airbnb/android/adapters/ListingsRowAdapter;

    sget-object v1, Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;->WITH_ROOMTYPE_AND_LIST_STATUS:Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;

    invoke-direct {v0, v1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;-><init>(Lcom/airbnb/android/adapters/ListingsRowAdapter$DescriptionType;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    .line 69
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/SpacesListFragment;->setHasOptionsMenu(Z)V

    .line 71
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 75
    const v0, 0x7f10001d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 76
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 111
    const v2, 0x7f0300a9

    invoke-virtual {p1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/LoaderListView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 113
    iget-object v2, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 115
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->loadListings()V

    .line 117
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "spinnerText":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/adapters/AirSpinnerAdapter;

    invoke-direct {v3, v1, v4, v1}, Lcom/airbnb/android/adapters/AirSpinnerAdapter;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v2, v3, p0}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03019b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mFooter:Landroid/view/View;

    .line 121
    iget-object v2, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mFooter:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/SpacesListFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SpacesListFragment$1;-><init>(Lcom/airbnb/android/fragments/SpacesListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v2, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mFooter:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 131
    iget-object v2, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    new-instance v2, Lcom/airbnb/android/fragments/SpacesListFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/SpacesListFragment$2;-><init>(Lcom/airbnb/android/fragments/SpacesListFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iget-object v2, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v2
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDestroy()V

    .line 237
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method public onDrawerClosed()V
    .registers 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDrawerClosed()V

    .line 263
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->showSpinnerIfNeeded()V

    .line 264
    return-void
.end method

.method public onDrawerOpened()V
    .registers 3

    .prologue
    .line 249
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDrawerOpened()V

    .line 251
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mIsShowingSpinner:Z

    if-eqz v1, :cond_15

    .line 254
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mIsShowingSpinner:Z

    .line 255
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SpacesListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 256
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/SpacesListFragment;->setupActionBar(Landroid/app/ActionBar;)V

    .line 258
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_15
    return-void
.end method

.method public onNavigationItemSelected(IJ)Z
    .registers 9
    .param p1, "itemPosition"    # I
    .param p2, "itemId"    # J

    .prologue
    const/4 v4, 0x1

    .line 281
    iget-object v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mListings:Ljava/util/List;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mListings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 307
    :cond_d
    :goto_d
    return v4

    .line 284
    :cond_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v2, "listingsTemp":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    packed-switch p1, :pswitch_data_5e

    goto :goto_d

    .line 287
    :pswitch_17
    iget-object v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mListings:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/SpacesListFragment;->setData(Ljava/util/List;)V

    goto :goto_d

    .line 290
    :pswitch_1d
    iget-object v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mListings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 291
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 292
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 295
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_39
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/SpacesListFragment;->setData(Ljava/util/List;)V

    goto :goto_d

    .line 298
    .end local v0    # "i$":Ljava/util/Iterator;
    :pswitch_3d
    iget-object v3, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mListings:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 299
    .restart local v1    # "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->isListed()Z

    move-result v3

    if-nez v3, :cond_43

    .line 300
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 303
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_59
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/SpacesListFragment;->setData(Ljava/util/List;)V

    goto :goto_d

    .line 285
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_1d
        :pswitch_3d
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 81
    const v0, 0x7f080553

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/android/fragments/SpacesListFragment;->prepareMenuItem(Landroid/view/Menu;I)V

    .line 82
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 83
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onResume()V

    .line 229
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 230
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 232
    :cond_10
    return-void
.end method

.method public setData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    if-eqz p1, :cond_14

    .line 209
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 214
    :goto_f
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mResultsAdapter:Lcom/airbnb/android/adapters/ListingsRowAdapter;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/adapters/ListingsRowAdapter;->setData(Ljava/util/List;)V

    .line 216
    :cond_14
    return-void

    .line 212
    :cond_15
    iget-object v0, p0, Lcom/airbnb/android/fragments/SpacesListFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    goto :goto_f
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 244
    const v0, 0x7f0e0758

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 245
    return-void
.end method
