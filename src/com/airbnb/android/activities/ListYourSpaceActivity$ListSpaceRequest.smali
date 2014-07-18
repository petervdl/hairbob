.class public Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ListYourSpaceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/ListYourSpaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListSpaceRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public listing:Lcom/airbnb/android/models/Listing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;>;"
    const-string/jumbo v4, "listings/create"

    invoke-direct {p0, v4, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 170
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v3, "root":Lorg/json/JSONObject;
    :try_start_b
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 173
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_26} :catch_27

    goto :goto_13

    .line 176
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catch_27
    move-exception v0

    .line 177
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 180
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2b
    instance-of v4, v3, Lorg/json/JSONObject;

    if-nez v4, :cond_37

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v3    # "root":Lorg/json/JSONObject;
    :goto_33
    invoke-virtual {p0, v4}, Lcom/airbnb/android/activities/ListYourSpaceActivity$ListSpaceRequest;->setJsonPost(Ljava/lang/String;)V

    .line 181
    return-void

    .line 180
    .restart local v3    # "root":Lorg/json/JSONObject;
    :cond_37
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "root":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    goto :goto_33
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public isSingleFire()Z
    .registers 2

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method
