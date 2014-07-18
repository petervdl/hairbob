.class public abstract Lcom/airbnb/android/fragments/WishListableFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "WishListableFragment.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
.implements Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;


# static fields
.field private static final REQUEST_CODE_SIGN_IN_ADD_TO_WISHLIST:I = 0x1

.field public static final TRACKING_POS_FEATURED:Ljava/lang/String; = "featured"


# instance fields
.field private mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;

.field protected mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

.field private mUndoAddToast:Lcom/airbnb/android/views/UndoAddToWishListToast;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/WishListableFragment;)Lcom/airbnb/android/adapters/WishListableAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WishListableFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;

    return-object v0
.end method


# virtual methods
.method protected abstract getAdapter()Lcom/airbnb/android/adapters/WishListableAdapter;
.end method

.method public getLayout()I
    .registers 2

    .prologue
    .line 78
    const v0, 0x7f030100

    return v0
.end method

.method protected getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 121
    new-instance v0, Lcom/airbnb/android/fragments/WishListableFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/WishListableFragment$1;-><init>(Lcom/airbnb/android/fragments/WishListableFragment;)V

    return-object v0
.end method

.method public listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;

    if-eqz v0, :cond_b

    .line 192
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;

    iget-object v1, p1, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/WishListableAdapter;->updateListing(Lcom/airbnb/android/models/Listing;)Z

    .line 194
    :cond_b
    return-void
.end method

.method public listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;

    if-eqz v0, :cond_b

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;

    iget-object v1, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/WishListableAdapter;->updateListing(Lcom/airbnb/android/models/Listing;)Z

    .line 187
    :cond_b
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 66
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1c

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    if-eqz v0, :cond_1c

    .line 70
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/WishListableFragment;->openWishListSelector(Lcom/airbnb/android/models/Listing;)V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    .line 74
    :cond_1c
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 75
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/WishListableFragment;->setHasOptionsMenu(Z)V

    .line 61
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getLayout()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 84
    .local v3, "layout":Landroid/widget/FrameLayout;
    const v5, 0x7f0802a8

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/LoaderListView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 86
    iget-object v5, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/LoaderListView;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 88
    .local v0, "absListView":Landroid/widget/AbsListView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getAdapter()Lcom/airbnb/android/adapters/WishListableAdapter;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;

    .line 90
    instance-of v5, v0, Landroid/widget/ListView;

    if-eqz v5, :cond_68

    move-object v4, v0

    .line 92
    check-cast v4, Landroid/widget/ListView;

    .line 93
    .local v4, "listView":Landroid/widget/ListView;
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0079

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0088

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 105
    .end local v4    # "listView":Landroid/widget/ListView;
    :cond_4b
    :goto_4b
    iget-object v5, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 109
    iget-object v5, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mListingAdapter:Lcom/airbnb/android/adapters/WishListableAdapter;

    invoke-virtual {v5, v0}, Lcom/airbnb/android/adapters/WishListableAdapter;->setupScrollListener(Landroid/widget/AbsListView;)V

    .line 111
    const v5, 0x7f0801a7

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/UndoAddToWishListToast;

    iput-object v5, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mUndoAddToast:Lcom/airbnb/android/views/UndoAddToWishListToast;

    .line 113
    return-object v3

    .line 95
    :cond_68
    instance-of v5, v0, Lcom/etsy/android/grid/StaggeredGridView;

    if-eqz v5, :cond_7f

    move-object v1, v0

    .line 96
    check-cast v1, Lcom/etsy/android/grid/StaggeredGridView;

    .line 98
    .local v1, "gridView":Lcom/etsy/android/grid/StaggeredGridView;
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    .local v2, "headerFooter":Landroid/view/View;
    invoke-virtual {v1, v2}, Lcom/etsy/android/grid/StaggeredGridView;->addHeaderView(Landroid/view/View;)V

    .line 100
    invoke-virtual {v1, v2}, Lcom/etsy/android/grid/StaggeredGridView;->addFooterView(Landroid/view/View;)V

    goto :goto_4b

    .line 101
    .end local v1    # "gridView":Lcom/etsy/android/grid/StaggeredGridView;
    .end local v2    # "headerFooter":Landroid/view/View;
    :cond_7f
    instance-of v5, v0, Landroid/widget/GridView;

    if-eqz v5, :cond_4b

    goto :goto_4b
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDestroy()V

    .line 141
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public onLoaded(Lcom/airbnb/android/models/Collection;)V
    .registers 5
    .param p1, "wishlist"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 198
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 199
    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 200
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/android/utils/WishListUtils;->getWishListActionBarSubtitle(Landroid/content/res/Resources;Lcom/airbnb/android/models/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "subtitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/activities/AirActivity;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/activities/AirActivity;->setupActionBar(Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActionBar;

    .line 203
    .end local v0    # "subtitle":Ljava/lang/String;
    :cond_22
    return-void
.end method

.method public openWishListSelector(Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 146
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 148
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "featured"

    invoke-static {v0, p1, v1}, Lcom/airbnb/android/activities/PickWishListActivity;->intentForListingToAdd(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/WishListableFragment;->startActivity(Landroid/content/Intent;)V

    .line 149
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

    const-string/jumbo v2, "featured"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackOpenWishlistPopover()V

    .line 154
    :goto_34
    return-void

    .line 152
    :cond_35
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/WishListableFragment;->startSignInFromWishListAdd(Lcom/airbnb/android/models/Listing;)V

    goto :goto_34
.end method

.method public showFirstTimeLongPressToWishListDialog()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 171
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 172
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "LONG_PRESS_WL"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 180
    .end local v1    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_18
    :goto_18
    return-void

    .line 175
    .restart local v1    # "sharedPrefs":Landroid/content/SharedPreferences;
    :cond_19
    const v2, 0x7f0e0819

    const v3, 0x7f0e0818

    invoke-static {v2, v3, v4, v4}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->newInstance(IIII)Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;

    move-result-object v0

    .line 177
    .local v0, "f":Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "tooltip"

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/fragments/managelisting/TooltipDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 178
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "LONG_PRESS_WL"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_18
.end method

.method public showUndoToast(Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "wishList"    # Lcom/airbnb/android/models/Collection;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mUndoAddToast:Lcom/airbnb/android/views/UndoAddToWishListToast;

    const-string/jumbo v1, "featured"

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/android/views/UndoAddToWishListToast;->showUndoToast(Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public startSignInFromWishListAdd(Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/airbnb/android/fragments/WishListableFragment;->mPendingWishlistListing:Lcom/airbnb/android/models/Listing;

    .line 159
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishListableFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0766

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/fragments/WishListableFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 161
    return-void
.end method
