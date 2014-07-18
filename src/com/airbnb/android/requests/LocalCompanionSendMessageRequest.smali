.class public Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "LocalCompanionSendMessageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "openNewThread"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "currentLocation"    # Lcom/google/android/gms/maps/model/LatLng;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;>;"
    const-string/jumbo v0, "companion"

    invoke-direct {p0, v0, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;->getJsonBody(ZLjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/LocalCompanionSendMessageRequest;->setJsonPost(Ljava/lang/String;)V

    .line 13
    return-void

    .line 12
    :cond_16
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method private getJsonBody(ZLjava/lang/String;Lcom/google/android/gms/maps/model/LatLng;)Lorg/json/JSONObject;
    .registers 9
    .param p1, "openNewThread"    # Z
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "currentLocation"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 24
    .local v0, "body":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    if-eqz p1, :cond_16

    .line 27
    const-string/jumbo v2, "request_type"

    const-string/jumbo v3, "question"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    :cond_16
    if-eqz p3, :cond_28

    .line 31
    const-string/jumbo v2, "lat"

    iget-wide v3, p3, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 32
    const-string/jumbo v2, "lng"

    iget-wide v3, p3, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_28} :catch_29

    .line 38
    :cond_28
    return-object v0

    .line 34
    :catch_29
    move-exception v1

    .line 35
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "JSON parsing error sending Local Companion message"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method
