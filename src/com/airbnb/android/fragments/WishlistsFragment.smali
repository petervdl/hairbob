.class public Lcom/airbnb/android/fragments/WishlistsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "WishlistsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;
    }
.end annotation


# instance fields
.field mBaseLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

.field mEmptyResultsButton:Landroid/widget/Button;

.field mEmptyResultsSubtitle:Landroid/widget/TextView;

.field mEmptyResultsTitle:Landroid/widget/TextView;

.field mEmptyResultsView:Landroid/view/View;

.field private mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/WishlistsFragment;)Lcom/airbnb/android/adapters/WishListsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/WishlistsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    return-object v0
.end method

.method private updateWishListEntry(Lcom/airbnb/android/models/Collection;)V
    .registers 5
    .param p1, "wishList"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    if-nez v1, :cond_5

    .line 160
    :cond_4
    :goto_4
    return-void

    .line 154
    :cond_5
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/adapters/WishListsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 155
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/adapters/WishListsAdapter;->remove(Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/airbnb/android/adapters/WishListsAdapter;->insert(Ljava/lang/Object;I)V

    .line 158
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/WishListsAdapter;->notifyDataSetChanged()V

    goto :goto_4
.end method


# virtual methods
.method public listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p1, Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;->wishList:Lcom/airbnb/android/models/Collection;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/WishlistsFragment;->updateWishListEntry(Lcom/airbnb/android/models/Collection;)V

    .line 148
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 63
    const v3, 0x7f030102

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, "view":Landroid/view/View;
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 66
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mBaseLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/BaseLoaderListView;->getAbsListView()Landroid/widget/AbsListView;

    move-result-object v0

    .line 68
    .local v0, "absListView":Landroid/widget/AbsListView;
    const v3, 0x7f020012

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setSelector(I)V

    .line 69
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setDrawSelectorOnTop(Z)V

    .line 71
    instance-of v3, v0, Landroid/widget/ListView;

    if-eqz v3, :cond_44

    move-object v1, v0

    .line 72
    check-cast v1, Landroid/widget/ListView;

    .line 73
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishlistsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0079

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishlistsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 77
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_44
    new-instance v3, Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/WishlistsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/WishlistsFragment$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/WishlistsFragment$1;-><init>(Lcom/airbnb/android/fragments/WishlistsFragment;)V

    invoke-direct {v3, v4, v5}, Lcom/airbnb/android/adapters/WishListsAdapter;-><init>(Landroid/content/Context;Lcom/airbnb/android/fragments/WishlistsFragment$WishListsListener;)V

    iput-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    .line 89
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    new-instance v3, Lcom/airbnb/android/fragments/WishlistsFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/WishlistsFragment$2;-><init>(Lcom/airbnb/android/fragments/WishlistsFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mBaseLoaderListView:Lcom/airbnb/android/views/BaseLoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/BaseLoaderListView;->startLoader()V

    .line 101
    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setVisibility(I)V

    .line 104
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsTitle:Landroid/widget/TextView;

    const v4, 0x7f0e0826

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsSubtitle:Landroid/widget/TextView;

    const v4, 0x7f0e0825

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsButton:Landroid/widget/Button;

    const v4, 0x7f0e0824

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 107
    iget-object v3, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mEmptyResultsButton:Landroid/widget/Button;

    new-instance v4, Lcom/airbnb/android/fragments/WishlistsFragment$3;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/WishlistsFragment$3;-><init>(Lcom/airbnb/android/fragments/WishlistsFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-object v2
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 125
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 126
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onDestroy()V

    .line 127
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/airbnb/android/fragments/AirFragment;->onResume()V

    .line 120
    iget-object v0, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/WishListsAdapter;->fetchMyWishlists()V

    .line 121
    return-void
.end method

.method public wishListDeleted(Lcom/airbnb/android/events/WishListModifiedEvent$WishListDeletedEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$WishListDeletedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 131
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    if-eqz v1, :cond_1b

    .line 132
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    iget-object v2, p1, Lcom/airbnb/android/events/WishListModifiedEvent$WishListDeletedEvent;->wishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/WishListsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 133
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_1b

    .line 134
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    iget-object v2, p1, Lcom/airbnb/android/events/WishListModifiedEvent$WishListDeletedEvent;->wishList:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/WishListsAdapter;->remove(Ljava/lang/Object;)V

    .line 135
    iget-object v1, p0, Lcom/airbnb/android/fragments/WishlistsFragment;->mWishListsAdapter:Lcom/airbnb/android/adapters/WishListsAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/WishListsAdapter;->notifyDataSetChanged()V

    .line 138
    .end local v0    # "index":I
    :cond_1b
    return-void
.end method

.method public wishListUpdated(Lcom/airbnb/android/events/WishListModifiedEvent$WishListUpdatedEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$WishListUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p1, Lcom/airbnb/android/events/WishListModifiedEvent$WishListUpdatedEvent;->wishList:Lcom/airbnb/android/models/Collection;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/WishlistsFragment;->updateWishListEntry(Lcom/airbnb/android/models/Collection;)V

    .line 143
    return-void
.end method
