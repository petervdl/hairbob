.class public Lcom/airbnb/android/requests/RecommendedListingsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "RecommendedListingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/RecommendedListingsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public geography:Lcom/airbnb/android/models/SearchGeography;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "geography"
    .end annotation
.end field

.field public listings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field public listingsCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listings_count"
    .end annotation
.end field

.field private unprocessedListings:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "listingId"    # J
    .param p3, "props"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/RecommendedListingsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/RecommendedListingsRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/recommendations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 25
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    iput-object v0, p0, Lcom/airbnb/android/requests/RecommendedListingsRequest;->mReturnStrategy:Lcom/android/volley/Request$ReturnStrategy;

    .line 26
    return-void
.end method


# virtual methods
.method protected preProcess()V
    .registers 5

    .prologue
    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/RecommendedListingsRequest;->listings:Ljava/util/List;

    .line 31
    iget-object v2, p0, Lcom/airbnb/android/requests/RecommendedListingsRequest;->unprocessedListings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Listing;

    .line 32
    .local v1, "listing":Lcom/airbnb/android/models/Listing;
    iget-object v2, p0, Lcom/airbnb/android/requests/RecommendedListingsRequest;->listings:Ljava/util/List;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 34
    .end local v1    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_23
    return-void
.end method
