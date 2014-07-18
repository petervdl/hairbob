.class public Lcom/airbnb/android/adapters/SearchPhotoAdapter;
.super Lcom/airbnb/android/adapters/ListingPhotoAdapter;
.source "SearchPhotoAdapter.java"


# instance fields
.field private mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V
    .registers 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "allowPagination"    # Z
    .param p3, "addToWishListListener"    # Lcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;
    .param p4, "trackingPosition"    # Ljava/lang/String;
    .param p5, "numColumns"    # I

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/airbnb/android/adapters/ListingPhotoAdapter;-><init>(Landroid/content/Context;ZLcom/airbnb/android/adapters/ListingPhotoAdapter$AddToWishListListener;Ljava/lang/String;I)V

    .line 28
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/adapters/SearchPhotoAdapter;Lcom/airbnb/android/requests/SearchRequest;)Lcom/airbnb/android/requests/SearchRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/SearchPhotoAdapter;
    .param p1, "x1"    # Lcom/airbnb/android/requests/SearchRequest;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    return-object p1
.end method


# virtual methods
.method public cancelAdditionalLoading()V
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    if-eqz v0, :cond_c

    .line 33
    iget-object v0, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/SearchRequest;->cancel()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    .line 36
    :cond_c
    return-void
.end method

.method public getSubtitleText(Lcom/airbnb/android/models/Listing;Landroid/content/Context;)Ljava/lang/String;
    .registers 14
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const v10, 0x7f0e00a6

    .line 87
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getNeighborhood()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "neighborhood":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "city":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_73

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 93
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0e009a

    invoke-virtual {p2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "cityAndNeighborhood":Ljava/lang/String;
    :goto_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getRoomType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getReviewsCount()I

    move-result v3

    .line 102
    .local v3, "numReviews":I
    if-lez v3, :cond_64

    .line 103
    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0022

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_64
    invoke-virtual {p2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 95
    .end local v1    # "cityAndNeighborhood":Ljava/lang/String;
    .end local v3    # "numReviews":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_73
    move-object v1, v0

    .restart local v1    # "cityAndNeighborhood":Ljava/lang/String;
    goto :goto_33
.end method

.method protected loadMoreListings()V
    .registers 6

    .prologue
    .line 40
    iget-object v2, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    if-eqz v2, :cond_5

    .line 80
    :cond_4
    :goto_4
    return-void

    .line 43
    :cond_5
    iget-object v2, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mListings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 44
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->setRemainingData(Z)V

    .line 47
    :cond_11
    new-instance v0, Lcom/airbnb/android/adapters/SearchPhotoAdapter$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/adapters/SearchPhotoAdapter$1;-><init>(Lcom/airbnb/android/adapters/SearchPhotoAdapter;)V

    .line 72
    .local v0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/SearchRequest;>;"
    new-instance v2, Lcom/airbnb/android/requests/SearchRequest;

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mListings:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Lcom/airbnb/android/requests/SearchRequest;-><init>(Lcom/airbnb/android/models/SearchInfo;ILcom/airbnb/android/requests/RequestListener;)V

    iput-object v2, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    .line 73
    iget-object v2, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    const-string/jumbo v3, "search_request_tag"

    invoke-virtual {v2, v3}, Lcom/airbnb/android/requests/SearchRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 74
    iget-object v2, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    invoke-virtual {v2}, Lcom/airbnb/android/requests/SearchRequest;->execute()V

    .line 76
    const-string/jumbo v2, "search_photo"

    iget-object v3, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mTrackingPosition:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    iget-object v2, p0, Lcom/airbnb/android/adapters/SearchPhotoAdapter;->mListings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v1, v2, 0x19

    .line 78
    .local v1, "pageNum":I
    const-string/jumbo v2, "down_scroll"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "page_num"

    invoke-virtual {v3, v4, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackListResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_4
.end method
