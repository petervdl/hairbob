.class public Lcom/airbnb/android/requests/ListingReviewsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ListingReviewsRequest.java"

# interfaces
.implements Lcom/airbnb/android/requests/AirRequestFactory$Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/ListingReviewsRequest;",
        ">;",
        "Lcom/airbnb/android/requests/AirRequestFactory$Provider",
        "<",
        "Lcom/airbnb/android/models/Review;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_RETRIEVE:I = 0xa


# instance fields
.field private reviewWrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reviews"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public reviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Review;",
            ">;"
        }
    .end annotation
.end field

.field public reviews_count:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reviews_count"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIILcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "listingId"    # J
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ListingReviewsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ListingReviewsRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/reviews"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Lcom/airbnb/android/requests/ListingReviewsRequest;->makeProperties(II)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p5}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 24
    return-void
.end method

.method private static makeProperties(II)Ljava/util/Properties;
    .registers 5
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .prologue
    .line 32
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 33
    .local v0, "props":Ljava/util/Properties;
    const-string/jumbo v1, "offset"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v1, "items_per_page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-object v0
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 28
    const-wide/32 v0, 0x36ee80

    return-wide v0
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/ListingReviewsRequest;->reviews:Ljava/util/List;

    .line 47
    iget-object v2, p0, Lcom/airbnb/android/requests/ListingReviewsRequest;->reviewWrappers:Ljava/util/List;

    if-eqz v2, :cond_25

    .line 48
    iget-object v2, p0, Lcom/airbnb/android/requests/ListingReviewsRequest;->reviewWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;

    .line 49
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;
    iget-object v2, p0, Lcom/airbnb/android/requests/ListingReviewsRequest;->reviews:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;->review:Lcom/airbnb/android/models/Review;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 52
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;
    :cond_25
    return-void
.end method

.method public bridge synthetic provide()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/airbnb/android/requests/ListingReviewsRequest;->provide()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public provide()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Review;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/requests/ListingReviewsRequest;->reviews:Ljava/util/List;

    return-object v0
.end method
