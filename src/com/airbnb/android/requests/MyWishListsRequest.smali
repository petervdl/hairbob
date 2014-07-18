.class public Lcom/airbnb/android/requests/MyWishListsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "MyWishListsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/MyWishListsRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEMS_PER_PAGE:Ljava/lang/String; = "items_per_page"

.field public static final NUM_ITEMS_PER_PAGE:I = 0x32

.field private static final OFFSET:Ljava/lang/String; = "offset"


# instance fields
.field public collections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Collection;",
            ">;"
        }
    .end annotation
.end field

.field public collectionsCount:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "collections_count"
    .end annotation
.end field

.field private collectionsWrapper:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "collections"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/MyWishListsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/MyWishListsRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/collections"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/airbnb/android/requests/MyWishListsRequest;->getProperties(I)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 25
    return-void
.end method

.method private static getProperties(I)Ljava/util/Properties;
    .registers 4
    .param p0, "offset"    # I

    .prologue
    .line 28
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 29
    .local v0, "p":Ljava/util/Properties;
    const-string/jumbo v1, "items_per_page"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string/jumbo v1, "offset"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object v0
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 36
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 43
    iget-object v2, p0, Lcom/airbnb/android/requests/MyWishListsRequest;->collectionsWrapper:Ljava/util/List;

    if-eqz v2, :cond_2b

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/airbnb/android/requests/MyWishListsRequest;->collectionsWrapper:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/airbnb/android/requests/MyWishListsRequest;->collections:Ljava/util/List;

    .line 45
    iget-object v2, p0, Lcom/airbnb/android/requests/MyWishListsRequest;->collectionsWrapper:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;

    .line 46
    .local v0, "collectionWrapper":Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;
    iget-object v2, p0, Lcom/airbnb/android/requests/MyWishListsRequest;->collections:Ljava/util/List;

    iget-object v3, v0, Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;->collection:Lcom/airbnb/android/models/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 49
    .end local v0    # "collectionWrapper":Lcom/airbnb/android/requests/Wrappers$CollectionWrapper;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2b
    return-void
.end method
