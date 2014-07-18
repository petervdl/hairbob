.class public Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingSimpleUpdateRequest;
.super Lcom/airbnb/android/requests/ListingUpdateObjectRequest;
.source "ListingUpdateObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/ListingUpdateObjectRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingSimpleUpdateRequest"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "listingId"    # Ljava/lang/String;
    .param p2, "fields"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ListingUpdateObjectRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ListingUpdateObjectRequest;>;"
    invoke-static {p2}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingSimpleUpdateRequest;->strapToJsonObject(Lcom/airbnb/android/utils/Strap;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/airbnb/android/requests/RequestListener;)V

    .line 58
    return-void
.end method

.method public static strapToJsonObject(Lcom/airbnb/android/utils/Strap;)Lorg/json/JSONObject;
    .registers 6
    .param p0, "fields"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 61
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v3, "listingObj":Lorg/json/JSONObject;
    :try_start_5
    invoke-virtual {p0}, Lcom/airbnb/android/utils/Strap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_d

    .line 66
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catch_21
    move-exception v0

    .line 67
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 69
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_25
    return-object v3
.end method
