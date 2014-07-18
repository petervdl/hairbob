.class public Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;
.super Lcom/airbnb/android/adapters/ListingPhotoAdapter;
.source "FriendsWishlistsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mFeed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendsWishlistsRequest:Lcom/airbnb/android/requests/FriendsWishlistsRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;)V
    .registers 11
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "allowPagination"    # Z
    .param p3, "addToWishListListener"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    .param p4, "trackingPosition"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->mFeed:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->addWishListData(Ljava/util/List;)V

    return-void
.end method

.method private addWishListData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "feedItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;>;"
    iget-object v0, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->mFeed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 147
    iget-object v0, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->mFeed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->notifyDataSetChanged()V

    .line 149
    return-void
.end method


# virtual methods
.method protected createRow(Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "feedItem"    # Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 74
    .local v6, "context":Landroid/content/Context;
    new-instance v2, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;-><init>(Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;)V

    .line 75
    .local v2, "viewHolder":Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030137

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 77
    iget-object v1, p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->listing:Lcom/airbnb/android/models/Listing;

    .line 79
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    const v0, 0x7f080358

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    iput-object v0, v2, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    .line 80
    const v0, 0x7f080359

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;->wishlistText:Landroid/widget/TextView;

    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 82
    invoke-super/range {v0 .. v5}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->createRow(Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/adapters/ListingPhotoAdapter$ViewHolder;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->mFeed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->hasRemainingData()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_d
    add-int/2addr v0, v1

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->mFeed:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemAsListing(I)Lcom/airbnb/android/models/Listing;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;

    .line 101
    .local v0, "feedItem":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;
    iget-object v1, v0, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->listing:Lcom/airbnb/android/models/Listing;

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->getItemViewType(I)I

    move-result v1

    .line 58
    .local v1, "viewType":I
    sget-object v2, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1d

    .line 59
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;

    .line 61
    .local v0, "feedItem":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;
    if-nez p2, :cond_18

    .line 62
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->createRow(Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 65
    :cond_18
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->setupRow(Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 67
    .end local v0    # "feedItem":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;
    :goto_1c
    return-object v2

    :cond_1d
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_1c
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 52
    invoke-static {}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->values()[Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->hasRemainingData()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected loadMoreListings()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-object v2, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->mFriendsWishlistsRequest:Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    invoke-static {v2}, Lcom/airbnb/android/requests/AirbnbRequest;->isQueueRunning(Lcom/android/volley/Request;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 136
    :cond_9
    :goto_9
    return-void

    .line 112
    :cond_a
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->getCount()I

    move-result v2

    if-le v2, v1, :cond_9

    .line 113
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->hasRemainingData()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v1, 0x2

    :cond_1b
    sub-int v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;

    .line 115
    .local v0, "feedItem":Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;
    new-instance v1, Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    iget-object v2, v0, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->nextHash:Ljava/lang/String;

    new-instance v3, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$1;-><init>(Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;)V

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/requests/FriendsWishlistsRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v1, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->mFriendsWishlistsRequest:Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    .line 134
    iget-object v1, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->mFriendsWishlistsRequest:Lcom/airbnb/android/requests/FriendsWishlistsRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/FriendsWishlistsRequest;->execute()V

    goto :goto_9
.end method

.method public setWishlistFeed(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "feedItems":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;>;"
    iput-object p1, p0, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->mFeed:Ljava/util/List;

    .line 140
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter;->notifyDataSetChanged()V

    .line 141
    return-void
.end method

.method protected setupRow(Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "feedItem"    # Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;
    .param p2, "position"    # I
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->listing:Lcom/airbnb/android/models/Listing;

    .line 89
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;

    .line 91
    .local v2, "viewHolder":Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;
    iget-object v3, v2, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;->profileImage:Lcom/airbnb/android/views/HaloImageView;

    iget-object v4, p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setImageUrlForUser(Lcom/airbnb/android/models/User;)V

    .line 92
    iget-object v3, v2, Lcom/airbnb/android/adapters/FriendsWishlistsAdapter$ViewHolder;->wishlistText:Landroid/widget/TextView;

    const v4, 0x7f0e0539

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->user:Lcom/airbnb/android/models/User;

    invoke-virtual {v7}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lcom/airbnb/android/requests/FriendsWishlistsRequest$FeedItem;->collection:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v7}, Lcom/airbnb/android/models/Collection;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-super {p0, v1, p2, p3, p4}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->setupRow(Lcom/airbnb/android/models/Listing;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3
.end method
