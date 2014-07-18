.class public abstract Lcom/airbnb/android/adapters/WishListableAdapter;
.super Lcom/airbnb/android/adapters/ListingPhotoAdapter;
.source "WishListableAdapter.java"


# instance fields
.field protected mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/interfaces/FeedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V
    .registers 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "allowPagination"    # Z
    .param p3, "addToWishListListener"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    .param p4, "trackingPosition"    # Ljava/lang/String;
    .param p5, "numColumns"    # I

    .prologue
    .line 19
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/adapters/WishListableAdapter;->mItems:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListableAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListableAdapter;->hasRemainingData()Z

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
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListableAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemAsListing(I)Lcom/airbnb/android/models/Listing;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/WishListableAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/FeedItem;

    .line 40
    .local v0, "item":Lcom/airbnb/android/interfaces/FeedItem;
    instance-of v1, v0, Lcom/airbnb/android/models/ListingFeedItem;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/airbnb/android/models/ListingFeedItem;

    .end local v0    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    invoke-virtual {v0}, Lcom/airbnb/android/models/ListingFeedItem;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    :goto_10
    return-object v1

    .restart local v0    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListableAdapter;->hasRemainingData()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListableAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_15

    .line 26
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LOADING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v0

    .line 29
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0, p1}, Lcom/airbnb/android/adapters/WishListableAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/FeedItem;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/FeedItem;->getType()Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->ordinal()I

    move-result v0

    goto :goto_14
.end method

.method protected getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/interfaces/FeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/adapters/WishListableAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 55
    invoke-static {}, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->values()[Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListableAdapter;->hasRemainingData()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListableAdapter;->getCount()I

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

.method protected abstract loadMoreListings()V
.end method

.method public updateListing(Lcom/airbnb/android/models/Listing;)Z
    .registers 9
    .param p1, "updatedListing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 68
    iget-object v3, p0, Lcom/airbnb/android/adapters/WishListableAdapter;->mItems:Ljava/util/List;

    if-eqz v3, :cond_49

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget-object v3, p0, Lcom/airbnb/android/adapters/WishListableAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_49

    .line 70
    iget-object v3, p0, Lcom/airbnb/android/adapters/WishListableAdapter;->mItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/interfaces/FeedItem;

    .line 72
    .local v1, "item":Lcom/airbnb/android/interfaces/FeedItem;
    instance-of v3, v1, Lcom/airbnb/android/models/ListingFeedItem;

    if-eqz v3, :cond_44

    check-cast v1, Lcom/airbnb/android/models/ListingFeedItem;

    .end local v1    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    invoke-virtual {v1}, Lcom/airbnb/android/models/ListingFeedItem;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    .line 73
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    :goto_1f
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_46

    .line 74
    iget-object v3, p0, Lcom/airbnb/android/adapters/WishListableAdapter;->mItems:Ljava/util/List;

    new-instance v4, Lcom/airbnb/android/models/ListingFeedItem;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/android/models/ListingFeedItem;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-interface {v3, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/WishListableAdapter;->notifyDataSetChanged()V

    .line 76
    const/4 v3, 0x1

    .line 80
    .end local v0    # "i":I
    .end local v2    # "listing":Lcom/airbnb/android/models/Listing;
    :goto_43
    return v3

    .line 72
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    :cond_44
    const/4 v2, 0x0

    goto :goto_1f

    .line 69
    .end local v1    # "item":Lcom/airbnb/android/interfaces/FeedItem;
    .restart local v2    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 80
    .end local v0    # "i":I
    .end local v2    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_49
    const/4 v3, 0x0

    goto :goto_43
.end method
