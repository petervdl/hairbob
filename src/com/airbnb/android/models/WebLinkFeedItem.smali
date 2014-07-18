.class public Lcom/airbnb/android/models/WebLinkFeedItem;
.super Ljava/lang/Object;
.source "WebLinkFeedItem.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/FeedItem;


# instance fields
.field private mKey:Ljava/lang/String;

.field private mLoggingParams:Lcom/airbnb/android/utils/Strap;

.field private mPictureUrl:Ljava/lang/String;

.field private mSubtitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/PopularRequest$PopularItem;)V
    .registers 3
    .param p1, "item"    # Lcom/airbnb/android/requests/PopularRequest$PopularItem;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget-object v0, p1, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mTitle:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->subtitle:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mSubtitle:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->webLinkUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mUrl:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mKey:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->pictureUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mPictureUrl:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Lcom/airbnb/android/requests/PopularRequest$PopularItem;->loggingParams:Lcom/airbnb/android/utils/Strap;

    iput-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mLoggingParams:Lcom/airbnb/android/utils/Strap;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    if-ne p0, p1, :cond_5

    .line 60
    :cond_4
    :goto_4
    return v1

    .line 54
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

    .line 56
    check-cast v0, Lcom/airbnb/android/models/WebLinkFeedItem;

    .line 58
    .local v0, "that":Lcom/airbnb/android/models/WebLinkFeedItem;
    iget-object v3, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mKey:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mKey:Ljava/lang/String;

    iget-object v4, v0, Lcom/airbnb/android/models/WebLinkFeedItem;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Lcom/airbnb/android/models/WebLinkFeedItem;->mKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_24
.end method

.method public getLoggingParams()Lcom/airbnb/android/utils/Strap;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mLoggingParams:Lcom/airbnb/android/utils/Strap;

    return-object v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mPictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;
    .registers 2

    .prologue
    .line 48
    sget-object v0, Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;->WEB_LINK:Lcom/airbnb/android/adapters/ListingPhotoAdapter$RowType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/models/WebLinkFeedItem;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
