.class public Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "UpdateWishListPrivacyRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest$CollectionWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PRIVATE:Ljava/lang/String; = "private"


# instance fields
.field public collection:Lcom/airbnb/android/models/Collection;

.field public outerCollection:Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest$CollectionWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "collection"
    .end annotation
.end field

.field public result:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "wishListId"    # J
    .param p3, "wishListName"    # Ljava/lang/String;
    .param p4, "isPrivate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "collections/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p3}, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;->getProperties(ZLjava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p5}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 19
    return-void
.end method

.method private static getProperties(ZLjava/lang/String;)Ljava/util/Properties;
    .registers 5
    .param p0, "isPrivate"    # Z
    .param p1, "wishListName"    # Ljava/lang/String;

    .prologue
    .line 22
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 23
    .local v0, "p":Ljava/util/Properties;
    const-string/jumbo v1, "private"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;->outerCollection:Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest$CollectionWrapper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;->outerCollection:Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest$CollectionWrapper;

    iget-object v0, v0, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest$CollectionWrapper;->collection:Lcom/airbnb/android/models/Collection;

    :goto_8
    iput-object v0, p0, Lcom/airbnb/android/requests/UpdateWishListPrivacyRequest;->collection:Lcom/airbnb/android/models/Collection;

    .line 36
    return-void

    .line 35
    :cond_b
    const/4 v0, 0x0

    goto :goto_8
.end method
