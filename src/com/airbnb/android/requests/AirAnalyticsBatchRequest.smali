.class public Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;
.super Lcom/android/volley/toolbox/JsonRequest;
.source "AirAnalyticsBatchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/toolbox/JsonRequest",
        "<",
        "Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 10
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p3, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;>;"
    const/4 v1, 0x1

    const-string/jumbo v2, "https://www.airbnb.com/tracking/events"

    instance-of v0, p1, Lorg/json/JSONArray;

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .end local p1    # "jsonArray":Lorg/json/JSONArray;
    :goto_c
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 17
    return-void

    .line 16
    .restart local p1    # "jsonArray":Lorg/json/JSONArray;
    :cond_13
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "jsonArray":Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    goto :goto_c
.end method


# virtual methods
.method public execute()V
    .registers 2

    .prologue
    .line 20
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 21
    return-void
.end method

.method protected isMarkerLogEnabled()Z
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 3
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    return-object v0
.end method
