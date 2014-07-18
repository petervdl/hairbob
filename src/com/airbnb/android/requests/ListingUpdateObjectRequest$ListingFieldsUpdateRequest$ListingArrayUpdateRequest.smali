.class public Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest$ListingArrayUpdateRequest;
.super Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;
.source "ListingUpdateObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListingArrayUpdateRequest"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "listingId"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ListingUpdateObjectRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ListingUpdateObjectRequest;>;"
    invoke-static {p2, p3}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest$ListingArrayUpdateRequest;->arrayToMap(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    .line 95
    return-void
.end method

.method public static arrayToMap(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/HashMap;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-object v0
.end method
