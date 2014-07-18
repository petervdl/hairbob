.class public Lcom/airbnb/android/models/ListingFeedItem;
.super Ljava/lang/Object;
.source "ListingFeedItem.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/FeedItem;


# instance fields
.field private mListing:Lcom/airbnb/android/models/Listing;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/airbnb/android/models/ListingFeedItem;->mListing:Lcom/airbnb/android/models/Listing;

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    if-ne p0, p1, :cond_5

    .line 34
    :cond_4
    :goto_4
    return v1

    .line 27
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

    .line 29
    check-cast v0, Lcom/airbnb/android/models/ListingFeedItem;

    .line 31
    .local v0, "that":Lcom/airbnb/android/models/ListingFeedItem;
    iget-object v3, p0, Lcom/airbnb/android/models/ListingFeedItem;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/airbnb/android/models/ListingFeedItem;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v4, v0, Lcom/airbnb/android/models/ListingFeedItem;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/Listing;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_24
    move v1, v2

    .line 32
    goto :goto_4

    .line 31
    :cond_26
    iget-object v3, v0, Lcom/airbnb/android/models/ListingFeedItem;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v3, :cond_4

    goto :goto_24
.end method

.method public getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/airbnb/android/models/ListingFeedItem;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public getType()Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
    .registers 2

    .prologue
    .line 21
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->LISTING:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/ListingFeedItem;->mListing:Lcom/airbnb/android/models/Listing;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/models/ListingFeedItem;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
