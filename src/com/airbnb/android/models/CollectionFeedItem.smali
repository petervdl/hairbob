.class public Lcom/airbnb/android/models/CollectionFeedItem;
.super Ljava/lang/Object;
.source "CollectionFeedItem.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/FeedItem;


# instance fields
.field private mCollection:Lcom/airbnb/android/models/Collection;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Collection;)V
    .registers 2
    .param p1, "collection"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/airbnb/android/models/CollectionFeedItem;->mCollection:Lcom/airbnb/android/models/Collection;

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    if-ne p0, p1, :cond_5

    .line 35
    :cond_4
    :goto_4
    return v1

    .line 28
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 30
    check-cast v0, Lcom/airbnb/android/models/CollectionFeedItem;

    .line 32
    .local v0, "that":Lcom/airbnb/android/models/CollectionFeedItem;
    iget-object v3, p0, Lcom/airbnb/android/models/CollectionFeedItem;->mCollection:Lcom/airbnb/android/models/Collection;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/airbnb/android/models/CollectionFeedItem;->mCollection:Lcom/airbnb/android/models/Collection;

    iget-object v4, v0, Lcom/airbnb/android/models/CollectionFeedItem;->mCollection:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/Collection;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_24
    move v1, v2

    .line 33
    goto :goto_4

    .line 32
    :cond_26
    iget-object v3, v0, Lcom/airbnb/android/models/CollectionFeedItem;->mCollection:Lcom/airbnb/android/models/Collection;

    if-eqz v3, :cond_4

    goto :goto_24
.end method

.method public getCollection()Lcom/airbnb/android/models/Collection;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/airbnb/android/models/CollectionFeedItem;->mCollection:Lcom/airbnb/android/models/Collection;

    return-object v0
.end method

.method public getType()Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
    .registers 2

    .prologue
    .line 22
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->WISHLIST:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/CollectionFeedItem;->mCollection:Lcom/airbnb/android/models/Collection;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/models/CollectionFeedItem;->mCollection:Lcom/airbnb/android/models/Collection;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Collection;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
