.class public Lcom/airbnb/android/fragments/PickWishlistFragment;
.super Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
.source "PickWishlistFragment.java"


# static fields
.field private static final KEY_LISTING:Ljava/lang/String; = "listing"

.field private static final KEY_TRACKING_POSITION:Ljava/lang/String; = "tracking_pos"

.field private static final NUM_MOST_RECENT:I = 0x3

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mHaveTriedFetchingWishlists:Z

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

.field private mTrackingPosition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/airbnb/android/fragments/PickWishlistFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PickWishlistFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PickWishlistFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/PickWishlistFragment;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PickWishlistFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/PickWishlistFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PickWishlistFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mTrackingPosition:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/PickWishlistFragment;ZJ)V
    .registers 4
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PickWishlistFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/PickWishlistFragment;->postEventForListingAddedToWishList(ZJ)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/airbnb/android/fragments/PickWishlistFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/PickWishlistFragment;)Lcom/airbnb/android/adapters/PickWishListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PickWishlistFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/PickWishlistFragment;ZJ)V
    .registers 4
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PickWishlistFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/PickWishlistFragment;->updateListingCollectionIds(ZJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/PickWishlistFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/PickWishlistFragment;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->populateWishListsData()V

    return-void
.end method

.method public static findOrCreateRetainFragment(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)Lcom/airbnb/android/fragments/PickWishlistFragment;
    .registers 6
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "trackingPosition"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-object v2, Lcom/airbnb/android/fragments/PickWishlistFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/PickWishlistFragment;

    .line 54
    .local v1, "fragment":Lcom/airbnb/android/fragments/PickWishlistFragment;
    if-nez v1, :cond_f

    .line 55
    new-instance v1, Lcom/airbnb/android/fragments/PickWishlistFragment;

    .end local v1    # "fragment":Lcom/airbnb/android/fragments/PickWishlistFragment;
    invoke-direct {v1}, Lcom/airbnb/android/fragments/PickWishlistFragment;-><init>()V

    .line 57
    .restart local v1    # "fragment":Lcom/airbnb/android/fragments/PickWishlistFragment;
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    const-string/jumbo v2, "tracking_pos"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method

.method private populateWishListsData()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v1, "mostRecent":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getWishLists()Ljava/util/List;

    move-result-object v3

    .line 174
    .local v3, "wishLists":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    if-nez v3, :cond_29

    iget-boolean v4, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mHaveTriedFetchingWishlists:Z

    if-nez v4, :cond_29

    .line 175
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mHaveTriedFetchingWishlists:Z

    .line 176
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/PickWishlistFragment$3;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/PickWishlistFragment$3;-><init>(Lcom/airbnb/android/fragments/PickWishlistFragment;)V

    invoke-virtual {v4, v5}, Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V

    .line 200
    :cond_23
    iget-object v4, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v4, v1}, Lcom/airbnb/android/adapters/PickWishListAdapter;->setRecentWishLists(Ljava/util/List;)V

    .line 201
    return-void

    .line 191
    :cond_29
    iget-object v4, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/PickWishListAdapter;->clear()V

    .line 193
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_32
    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Collection;

    .line 194
    .local v2, "wishList":Lcom/airbnb/android/models/Collection;
    iget-object v4, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v4, v2}, Lcom/airbnb/android/adapters/PickWishListAdapter;->add(Ljava/lang/Object;)V

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v5, :cond_32

    .line 196
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32
.end method

.method private postEventForListingAddedToWishList(ZJ)V
    .registers 7
    .param p1, "addToWishList"    # Z
    .param p2, "wishListId"    # J

    .prologue
    .line 230
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 231
    if-eqz p1, :cond_1c

    .line 232
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/airbnb/android/AirbnbApi;->addListingToWishLists(JJ)V

    .line 236
    :goto_1b
    return-void

    .line 234
    :cond_1c
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/airbnb/android/AirbnbApi;->removeListingFromWishLists(JJ)Z

    goto :goto_1b
.end method

.method private updateListingCollectionIds(ZJ)V
    .registers 5
    .param p1, "addToWishList"    # Z
    .param p2, "wishListId"    # J

    .prologue
    .line 221
    if-eqz p1, :cond_7

    .line 222
    iget-object v0, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, p2, p3}, Lcom/airbnb/android/models/Listing;->addCollectionId(J)V

    .line 224
    :cond_7
    return-void
.end method


# virtual methods
.method public getTransparentHeaderHeight()F
    .registers 4

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 241
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/WishListUtils;->getWishListPickerTransparentTopHeight(Landroid/content/Context;)F

    move-result v1

    const v2, 0x7f0b0094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    iput-object v1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 71
    const-string/jumbo v1, "tracking_pos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mTrackingPosition:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v4, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mTrackingPosition:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/android/adapters/PickWishListAdapter;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/Listing;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/PickWishlistFragment;->populateWishListsData()V

    .line 82
    iget-object v1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 84
    iget-object v1, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/PickWishlistFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/PickWishlistFragment$1;-><init>(Lcom/airbnb/android/fragments/PickWishlistFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 141
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 142
    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onDestroy()V

    .line 148
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 149
    return-void
.end method

.method public onDestroyView()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 205
    invoke-super {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onDestroyView()V

    .line 208
    iget-object v2, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/PickWishListAdapter;->isWishListsAddedToEmpty()Z

    move-result v2

    if-nez v2, :cond_54

    .line 209
    iget-object v2, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getNumAllWishListsAddedTo()I

    move-result v0

    .line 210
    .local v0, "numAllWishLists":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getNumPrivateWishListsAddedTo()I

    move-result v1

    .line 211
    .local v1, "numPrivateWishLists":I
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->WishLists:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v7

    const-string/jumbo v3, "tap_heart_multiple"

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    const v3, 0x7f0e0820

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/fragments/PickWishlistFragment;->mPickWishListAdapter:Lcom/airbnb/android/adapters/PickWishListAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/PickWishListAdapter;->getWishListsAddedToNames()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/PickWishlistFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 215
    .end local v0    # "numAllWishLists":I
    .end local v1    # "numPrivateWishLists":I
    :cond_54
    return-void
.end method

.method public useListView()Z
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public wishListCreated(Lcom/airbnb/android/events/WishListModifiedEvent$WishListCreatedEvent;)V
    .registers 4
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$WishListCreatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/PickWishlistFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/PickWishlistFragment$2;-><init>(Lcom/airbnb/android/fragments/PickWishlistFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V

    .line 168
    return-void
.end method
