.class public Lcom/airbnb/android/fragments/PublicWishlistFragment;
.super Lcom/airbnb/android/fragments/WishListableFragment;
.source "PublicWishlistFragment.java"


# static fields
.field private static final KEY_WISHLIST:Ljava/lang/String; = "collection"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mWishList:Lcom/airbnb/android/models/Collection;

.field private mWishlistAdapter:Lcom/airbnb/android/adapters/PublicWishlistAdapter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/airbnb/android/fragments/PublicWishlistFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/PublicWishlistFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/fragments/WishListableFragment;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/support/v4/app/FragmentManager;Lcom/airbnb/android/models/Collection;)Lcom/airbnb/android/fragments/PublicWishlistFragment;
    .registers 5
    .param p0, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p1, "collection"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 22
    sget-object v2, Lcom/airbnb/android/fragments/PublicWishlistFragment;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/PublicWishlistFragment;

    .line 23
    .local v1, "fragment":Lcom/airbnb/android/fragments/PublicWishlistFragment;
    if-nez v1, :cond_f

    .line 24
    new-instance v1, Lcom/airbnb/android/fragments/PublicWishlistFragment;

    .end local v1    # "fragment":Lcom/airbnb/android/fragments/PublicWishlistFragment;
    invoke-direct {v1}, Lcom/airbnb/android/fragments/PublicWishlistFragment;-><init>()V

    .line 26
    .restart local v1    # "fragment":Lcom/airbnb/android/fragments/PublicWishlistFragment;
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "collection"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/PublicWishlistFragment;->setArguments(Landroid/os/Bundle;)V

    .line 30
    return-object v1
.end method


# virtual methods
.method protected getAdapter()Lcom/airbnb/android/adapters/WishListableAdapter;
    .registers 7

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/fragments/PublicWishlistFragment;->mWishlistAdapter:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    if-nez v0, :cond_16

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PublicWishlistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v3, "featured"

    iget-object v4, p0, Lcom/airbnb/android/fragments/PublicWishlistFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    move-object v2, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/airbnb/android/adapters/PublicWishlistAdapter;->getInstance(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;Lcom/airbnb/android/models/Collection;Lcom/airbnb/android/adapters/PublicWishlistAdapter$WishlistCallback;)Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/PublicWishlistFragment;->mWishlistAdapter:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    .line 45
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/fragments/PublicWishlistFragment;->mWishlistAdapter:Lcom/airbnb/android/adapters/PublicWishlistAdapter;

    return-object v0
.end method

.method public listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/WishListableFragment;->listingRemovedFromWishList(Lcom/airbnb/android/events/WishListModifiedEvent$ListingRemovedFromWishListEvent;)V

    .line 60
    return-void
.end method

.method public listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/WishListableFragment;->listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V

    .line 53
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/WishListableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/PublicWishlistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "collection"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Collection;

    iput-object v0, p0, Lcom/airbnb/android/fragments/PublicWishlistFragment;->mWishList:Lcom/airbnb/android/models/Collection;

    .line 37
    return-void
.end method
