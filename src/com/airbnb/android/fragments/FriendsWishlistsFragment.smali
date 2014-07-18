.class public Lcom/airbnb/android/fragments/FriendsWishlistsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "FriendsWishlistsFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;


# static fields
.field private static final REQUEST_CODE_SIGN_IN_ADD_TO_WISHLIST:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static final TRACKING_POS_FRIENDS_WISHLISTS:Ljava/lang/String; = "friends_wishlists"


# instance fields
.field private mAdapter:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

.field private mEmptyResultsSubtitle:Landroid/widget/TextView;

.field private mEmptyResultsView:Landroid/view/View;

.field private mFacebookButton:Landroid/widget/Button;

.field private mFriendsWLRequest:Lcom/airbnb/android/requests/FriendsWishlistsRequest;

.field private mLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

.field private mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

.field private mUndoAddToast:Lcom/airbnb/android/views/UndoAddToWishListToast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-class v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mAdapter:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->loadListings()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->hideLoaderAndShowEmptyResults()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)Lcom/airbnb/android/views/BaseLoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    return-object v0
.end method

.method public static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;)Lcom/airbnb/android/fragments/FriendsWishlistsFragment;
    .registers 3
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 69
    sget-object v1, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    .line 70
    .local v0, "fragment":Lcom/airbnb/android/fragments/FriendsWishlistsFragment;
    if-nez v0, :cond_f

    .line 71
    new-instance v0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;

    .end local v0    # "fragment":Lcom/airbnb/android/fragments/FriendsWishlistsFragment;
    invoke-direct {v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;-><init>()V

    .line 73
    .restart local v0    # "fragment":Lcom/airbnb/android/fragments/FriendsWishlistsFragment;
    :cond_f
    return-object v0
.end method

.method private hideLoaderAndShowEmptyResults()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 238
    iget-object v1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/BaseLoaderListView;->finishLoaderImmediate()V

    .line 239
    iget-object v1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/BaseLoaderListView;->setVisibility(I)V

    .line 240
    iget-object v1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mEmptyResultsView:Landroid/view/View;

    if-eqz v1, :cond_16

    .line 241
    iget-object v1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mEmptyResultsView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_16
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 245
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_2a

    .line 246
    iget-object v1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mEmptyResultsSubtitle:Landroid/widget/TextView;

    const v2, 0x7f0e0556

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 247
    iget-object v1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mFacebookButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 251
    :goto_29
    return-void

    .line 249
    :cond_2a
    iget-object v1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mFacebookButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_29
.end method

.method private loadListings()V
    .registers 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/BaseLoaderListView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mEmptyResultsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/BaseLoaderListView;->startLoader()V

    .line 212
    new-instance v0, Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$3;-><init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/FriendsWishlistsRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mFriendsWLRequest:Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    .line 234
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mFriendsWLRequest:Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->execute()V

    .line 235
    return-void
.end method


# virtual methods
.method public listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mAdapter:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    iget-object v1, p1, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->updateListing(Lcom/airbnb/android/models/Listing;)Z

    .line 298
    return-void
.end method

.method public listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mAdapter:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    iget-object v1, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->updateListing(Lcom/airbnb/android/models/Listing;)Z

    .line 293
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 196
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    if-eqz v0, :cond_1c

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->openWishListSelector(Lcom/airbnb/android/models/Listing;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    .line 204
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 205
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "friends_wishlists"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mAdapter:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    .line 82
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const v3, 0x7f030091

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 88
    .local v1, "layout":Landroid/widget/FrameLayout;
    const v3, 0x7f0800d6

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/BaseLoaderListView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    .line 89
    iget-object v3, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/BaseLoaderListView;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 91
    .local v0, "absListView":Landroid/widget/AbsListView;
    instance-of v3, v0, Landroid/widget/ListView;

    if-eqz v3, :cond_44

    move-object v2, v0

    .line 92
    check-cast v2, Landroid/widget/ListView;

    .line 93
    .local v2, "listView":Landroid/widget/ListView;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 97
    .end local v2    # "listView":Landroid/widget/ListView;
    :cond_44
    iget-object v3, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mAdapter:Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    new-instance v3, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$1;-><init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    const v3, 0x7f0801a7

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/UndoAddToWishListToast;

    iput-object v3, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mUndoAddToast:Lcom/airbnb/android/views/UndoAddToWishListToast;

    .line 111
    const v3, 0x7f080109

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mEmptyResultsSubtitle:Landroid/widget/TextView;

    .line 113
    const v3, 0x7f08010a

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mFacebookButton:Landroid/widget/Button;

    .line 114
    iget-object v3, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mFacebookButton:Landroid/widget/Button;

    new-instance v4, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment$2;-><init>(Lcom/airbnb/android/fragments/FriendsWishlistsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v3, 0x7f080107

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mEmptyResultsView:Landroid/view/View;

    .line 175
    invoke-direct {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->loadListings()V

    .line 177
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 191
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onPause()V

    .line 183
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mFriendsWLRequest:Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    if-eqz v0, :cond_c

    .line 184
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mFriendsWLRequest:Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->cancelIfRunning()V

    .line 186
    :cond_c
    return-void
.end method

.method public openWishListSelector(Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 255
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 257
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "friends_wishlists"

    invoke-static {v0, p1, v1}, Lcom/airbnb/android/activities/PickWishListActivity;->intentForListingToAdd(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->startActivity(Landroid/content/Intent;)V

    .line 258
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "tap_heart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "friends_wishlists"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 262
    :goto_31
    return-void

    .line 260
    :cond_32
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->startSignInFromWishListAdd(Lcom/airbnb/android/models/Listing;)V

    goto :goto_31
.end method

.method public showFirstTimeLongPressToWishListDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "airbnb_prefs"

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 279
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "LONG_PRESS_WL"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 288
    :goto_15
    return-void

    .line 282
    :cond_16
    const v2, 0x7f0e0819

    const v3, 0x7f0e0818

    invoke-static {v2, v3, v4, v4}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->newInstance(IIII)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    move-result-object v0

    .line 285
    .local v0, "f":Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "tooltip"

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 287
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "LONG_PRESS_WL"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_15
.end method

.method public showUndoToast(Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "wishList"    # Lcom/airbnb/android/models/Collection;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mUndoAddToast:Lcom/airbnb/android/views/UndoAddToWishListToast;

    const-string/jumbo v1, "friends_wishlists"

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/android/views/UndoAddToWishListToast;->showUndoToast(Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public startSignInFromWishListAdd(Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    .line 267
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0766

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/FriendsWishlistsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 269
    return-void
.end method
