.class public Lcom/airbnb/android/requests/UpdateWishListRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "UpdateWishListRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/UpdateWishListRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLLECTION_IDS:Ljava/lang/String; = "collection_ids[%s]"


# instance fields
.field public listing:Lcom/airbnb/android/models/Listing;

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJZLcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "wishListId"    # J
    .param p3, "listingId"    # J
    .param p5, "addToWishList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateWishListRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p6, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateWishListRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p5}, Lcom/airbnb/android/requests/UpdateWishListRequest;->getProperties(Ljava/lang/String;Z)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p6}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 16
    return-void
.end method

.method private static getProperties(Ljava/lang/String;Z)Ljava/util/Properties;
    .registers 6
    .param p0, "collectionIdsAsString"    # Ljava/lang/String;
    .param p1, "addToWishList"    # Z

    .prologue
    .line 19
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 20
    .local v0, "p":Ljava/util/Properties;
    const-string/jumbo v1, "collection_ids[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    return-object v0
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
