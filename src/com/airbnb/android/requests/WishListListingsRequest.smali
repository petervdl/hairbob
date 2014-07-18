.class public Lcom/airbnb/android/requests/WishListListingsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "WishListListingsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/WishListListingsRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEMS_PER_PAGE:Ljava/lang/String; = "items_per_page"

.field public static final NUM_ITEMS_PER_PAGE:I = 0x32

.field private static final OFFSET:Ljava/lang/String; = "offset"


# instance fields
.field public collection:Lcom/airbnb/android/models/Collection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "collection"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JILcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "wishlistId"    # J
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/WishListListingsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/WishListListingsRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "collections/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Lcom/airbnb/android/requests/WishListListingsRequest;->getProperties(I)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    return-void
.end method

.method private static getProperties(I)Ljava/util/Properties;
    .registers 4
    .param p0, "offset"    # I

    .prologue
    .line 23
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 24
    .local v0, "p":Ljava/util/Properties;
    const-string/jumbo v1, "items_per_page"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string/jumbo v1, "offset"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-object v0
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 31
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method
