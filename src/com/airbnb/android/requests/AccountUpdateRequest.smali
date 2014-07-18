.class public Lcom/airbnb/android/requests/AccountUpdateRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "AccountUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/AccountUpdateRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AccountUpdateRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AccountUpdateRequest;>;"
    const-string/jumbo v0, "account/update"

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 12
    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_12

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p1    # "json":Lorg/json/JSONObject;
    :goto_e
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/AccountUpdateRequest;->setJsonPost(Ljava/lang/String;)V

    .line 13
    return-void

    .line 12
    .restart local p1    # "json":Lorg/json/JSONObject;
    :cond_12
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "json":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public static createTOSAcceptJSON()Lorg/json/JSONObject;
    .registers 4

    .prologue
    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v1, "tosAccept":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v2, "tos_accept"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_f

    .line 30
    :goto_e
    return-object v1

    .line 25
    :catch_f
    move-exception v0

    .line 26
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v2, "TOS_ACCEPT"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method
