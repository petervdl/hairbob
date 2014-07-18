.class public Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;
.super Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest$ListingArrayUpdateRequest;
.source "ListingUpdateObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/ListingUpdateObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingPhotosUpdateRequest"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "listingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ListingUpdateObjectRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ListingUpdateObjectRequest;>;"
    const-string/jumbo v0, "photos"

    invoke-static {p2}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;->photosToArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest$ListingArrayUpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/airbnb/android/requests/RequestListener;)V

    .line 110
    return-void
.end method

.method public static photosToArray(Ljava/util/List;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Photo;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Photo;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 114
    .local v0, "array":Lorg/json/JSONArray;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Photo;

    .line 115
    .local v2, "photo":Lcom/airbnb/android/models/Photo;
    invoke-virtual {v2}, Lcom/airbnb/android/models/Photo;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 117
    .end local v2    # "photo":Lcom/airbnb/android/models/Photo;
    :cond_1d
    return-object v0
.end method
