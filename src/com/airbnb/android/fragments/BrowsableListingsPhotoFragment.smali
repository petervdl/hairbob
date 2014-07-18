.class public Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;
.super Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;
.source "BrowsableListingsPhotoFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;


# static fields
.field public static final KEY_SEARCH_MODE:Ljava/lang/String; = "search_mode_enabled"

.field private static final REQUEST_CODE_SIGN_IN_ADD_TO_WISHLIST:I = 0x1

.field public static final TRACKING_POS_RECOMMENDATIONS:Ljava/lang/String; = "recommendations"

.field public static final TRACKING_POS_SEARCH:Ljava/lang/String; = "search_photo"


# instance fields
.field private mBusEventListener:Ljava/lang/Object;

.field private mEmptyResults:Landroid/view/View;

.field mListView:Landroid/widget/ListView;

.field protected mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

.field private mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

.field private mSearchMode:Z

.field mUndoAddToast:Lcom/airbnb/android/views/UndoAddToWishListToast;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;
    .registers 4
    .param p0, "forSearch"    # Z

    .prologue
    .line 70
    new-instance v1, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;-><init>()V

    .line 71
    .local v1, "frag":Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "search_mode_enabled"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    return-object v1
.end method


# virtual methods
.method public cancelAdditionalLoading()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->cancelAdditionalLoading()V

    .line 250
    return-void
.end method

.method protected doSearch()V
    .registers 4

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 277
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_10

    instance-of v2, v0, Lcom/airbnb/android/interfaces/SearchInterface;

    if-eqz v2, :cond_10

    move-object v1, v0

    .line 278
    check-cast v1, Lcom/airbnb/android/interfaces/SearchInterface;

    .line 279
    .local v1, "searchInterface":Lcom/airbnb/android/interfaces/SearchInterface;
    invoke-interface {v1}, Lcom/airbnb/android/interfaces/SearchInterface;->doSearch()V

    .line 281
    .end local v1    # "searchInterface":Lcom/airbnb/android/interfaces/SearchInterface;
    :cond_10
    return-void
.end method

.method protected getLayoutRes()I
    .registers 2

    .prologue
    .line 272
    const v0, 0x7f0300e7

    return v0
.end method

.method public getSearchPhotoAdapter()Lcom/airbnb/android/adapters/ListingPhotoAdapter;
    .registers 7

    .prologue
    const/4 v2, 0x1

    .line 265
    new-instance v0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v4, "search_photo"

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/SearchPhotoAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V

    return-object v0
.end method

.method protected listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v1, p1, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->updateListing(Lcom/airbnb/android/models/Listing;)Z

    .line 246
    return-void
.end method

.method protected listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v1, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->updateListing(Lcom/airbnb/android/models/Listing;)Z

    .line 241
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 110
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    if-eqz v0, :cond_1c

    .line 114
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->openWishListSelector(Lcom/airbnb/android/models/Listing;)V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    .line 118
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "search_mode_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mSearchMode:Z

    .line 83
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mSearchMode:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getSearchPhotoAdapter()Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    move-result-object v0

    :goto_1a
    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    .line 87
    new-instance v0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$1;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mBusEventListener:Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mBusEventListener:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 100
    return-void

    .line 83
    :cond_2b
    new-instance v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v4, "recommendations"

    move-object v3, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V

    goto :goto_1a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getLayoutRes()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 126
    const v1, 0x7f080107

    invoke-static {v0, v1}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mEmptyResults:Landroid/view/View;

    .line 128
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->setupListViewHeaderFooter()V

    .line 129
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 132
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$2;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setupScrollListener(Landroid/widget/AbsListView;)V

    .line 149
    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    new-instance v2, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment$3;-><init>(Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setListingShownListener(Lcom/airbnb/android/adapters/ListingPhotoAdapter$ListingShownListener;)V

    .line 157
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onDestroy()V

    .line 105
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    iget-object v1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mBusEventListener:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 170
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsChildFragment;->onResume()V

    .line 172
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->refreshListings()V

    .line 173
    return-void
.end method

.method public openWishListSelector(Lcom/airbnb/android/models/Listing;)V
    .registers 7
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 199
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 200
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "search_photo"

    invoke-static {v0, p1, v1}, Lcom/airbnb/android/activities/PickWishListActivity;->intentForListingToAdd(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->startActivity(Landroid/content/Intent;)V

    .line 201
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

    const-string/jumbo v2, "search_photo"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "wishlist_click"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "listing_id"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackListResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 206
    :goto_46
    return-void

    .line 204
    :cond_47
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->startSignInFromWishListAdd(Lcom/airbnb/android/models/Listing;)V

    goto :goto_46
.end method

.method protected refreshListings()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getSearchListings()Ljava/util/List;

    move-result-object v1

    .line 178
    .local v1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    if-eqz v1, :cond_4b

    .line 179
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 180
    .local v0, "empty":Z
    iget-object v5, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mEmptyResults:Landroid/view/View;

    if-nez v0, :cond_30

    move v2, v3

    :goto_11
    invoke-static {v5, v2}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 181
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v2, v0}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 183
    if-eqz v0, :cond_32

    .line 184
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->cancelAdditionalLoading()V

    .line 185
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setData(Ljava/util/List;)V

    .line 186
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->notifyDataSetChanged()V

    .line 195
    .end local v0    # "empty":Z
    :goto_2f
    return-void

    .restart local v0    # "empty":Z
    :cond_30
    move v2, v4

    .line 180
    goto :goto_11

    .line 189
    :cond_32
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    iget-boolean v5, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mSearchMode:Z

    if-eqz v5, :cond_49

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getTotalListingCount()I

    move-result v5

    const/16 v6, 0x19

    if-le v5, v6, :cond_49

    :goto_40
    invoke-virtual {v2, v3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setRemainingData(Z)V

    .line 190
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListingPhotoAdapter:Lcom/airbnb/android/adapters/ListingPhotoAdapter;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setData(Ljava/util/List;)V

    goto :goto_2f

    :cond_49
    move v3, v4

    .line 189
    goto :goto_40

    .line 193
    .end local v0    # "empty":Z
    :cond_4b
    iget-object v2, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_2f
.end method

.method protected setupListViewHeaderFooter()V
    .registers 1

    .prologue
    .line 166
    return-void
.end method

.method public showFirstTimeLongPressToWishListDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "airbnb_prefs"

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 226
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "LONG_PRESS_WL"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 236
    :goto_15
    return-void

    .line 230
    :cond_16
    const v2, 0x7f0e0819

    const v3, 0x7f0e0818

    invoke-static {v2, v3, v4, v4}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->newInstance(IIII)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    move-result-object v0

    .line 233
    .local v0, "f":Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "tooltip"

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 235
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
    .line 220
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mUndoAddToast:Lcom/airbnb/android/views/UndoAddToWishListToast;

    const-string/jumbo v1, "search_photo"

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/android/views/UndoAddToWishListToast;->showUndoToast(Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public startSignInFromWishListAdd(Lcom/airbnb/android/models/Listing;)V
    .registers 6
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    .line 214
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0766

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 216
    return-void
.end method

.method protected updateSearchResults(Z)V
    .registers 4
    .param p1, "newSearch"    # Z

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 255
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->refreshListings()V

    .line 257
    if-eqz p1, :cond_11

    .line 258
    iget-object v0, p0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 261
    :cond_11
    return-void
.end method
