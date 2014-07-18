.class public Lcom/airbnb/android/requests/ReferencesRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ReferencesRequest.java"

# interfaces
.implements Lcom/airbnb/android/requests/AirRequestFactory$Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/ReferencesRequest;",
        ">;",
        "Lcom/airbnb/android/requests/AirRequestFactory$Provider",
        "<",
        "Lcom/airbnb/android/models/Recommendation;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_RETRIEVE:I = 0xa


# instance fields
.field public recommendations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Recommendation;",
            ">;"
        }
    .end annotation
.end field

.field public recommendationsCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "recommendations_count"
    .end annotation
.end field

.field private wrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "recommendations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$RecommendationWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIILcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "userId"    # J
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReferencesRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReferencesRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/recommendations"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p4}, Lcom/airbnb/android/requests/ReferencesRequest;->makeProperties(II)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p5}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 21
    return-void
.end method

.method private static makeProperties(II)Ljava/util/Properties;
    .registers 5
    .param p0, "offset"    # I
    .param p1, "count"    # I

    .prologue
    .line 29
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 30
    .local v0, "props":Ljava/util/Properties;
    const-string/jumbo v1, "offset"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string/jumbo v1, "items_per_page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object v0
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 25
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/ReferencesRequest;->recommendations:Ljava/util/List;

    .line 44
    iget-object v2, p0, Lcom/airbnb/android/requests/ReferencesRequest;->wrappers:Ljava/util/List;

    if-eqz v2, :cond_25

    .line 45
    iget-object v2, p0, Lcom/airbnb/android/requests/ReferencesRequest;->wrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$RecommendationWrapper;

    .line 46
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$RecommendationWrapper;
    iget-object v2, p0, Lcom/airbnb/android/requests/ReferencesRequest;->recommendations:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$RecommendationWrapper;->recommendation:Lcom/airbnb/android/models/Recommendation;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 49
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$RecommendationWrapper;
    :cond_25
    return-void
.end method

.method public bridge synthetic provide()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/airbnb/android/requests/ReferencesRequest;->provide()Ljava/util/List;

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
            "Lcom/airbnb/android/models/Recommendation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/requests/ReferencesRequest;->recommendations:Ljava/util/List;

    return-object v0
.end method
