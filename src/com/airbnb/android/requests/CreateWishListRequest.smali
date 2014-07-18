.class public Lcom/airbnb/android/requests/CreateWishListRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CreateWishListRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/CreateWishListRequest$CollectionWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/CreateWishListRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final LISTING_IDS:Ljava/lang/String; = "listing_ids[]"

.field private static final WISHLIST_NAME:Ljava/lang/String; = "name"


# instance fields
.field public collection:Lcom/airbnb/android/models/Collection;

.field public outerCollection:Lcom/airbnb/android/requests/CreateWishListRequest$CollectionWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "collection"
    .end annotation
.end field

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/Listing;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/CreateWishListRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CreateWishListRequest;>;"
    const-string/jumbo v0, "/collections/create"

    invoke-static {p1, p2}, Lcom/airbnb/android/requests/CreateWishListRequest;->getProperties(Ljava/lang/String;Lcom/airbnb/android/models/Listing;)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 19
    return-void
.end method

.method private static getProperties(Ljava/lang/String;Lcom/airbnb/android/models/Listing;)Ljava/util/Properties;
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 22
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 23
    .local v0, "p":Ljava/util/Properties;
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string/jumbo v1, "listing_ids[]"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected preProcess()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/requests/CreateWishListRequest;->outerCollection:Lcom/airbnb/android/requests/CreateWishListRequest$CollectionWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/requests/CreateWishListRequest;->outerCollection:Lcom/airbnb/android/requests/CreateWishListRequest$CollectionWrapper;

    iget-object v0, v0, Lcom/airbnb/android/requests/CreateWishListRequest$CollectionWrapper;->collection:Lcom/airbnb/android/models/Collection;

    :goto_8
    iput-object v0, p0, Lcom/airbnb/android/requests/CreateWishListRequest;->collection:Lcom/airbnb/android/models/Collection;

    .line 36
    return-void

    .line 35
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method
