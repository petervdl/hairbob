.class public abstract Lcom/airbnb/android/requests/ExternalStringRequest;
.super Lcom/android/volley/toolbox/StringRequest;
.source "ExternalStringRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/airbnb/android/AirbnbApi;->buildExternalUrl(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p3}, Lcom/android/volley/toolbox/StringRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 14
    invoke-virtual {p0}, Lcom/airbnb/android/requests/ExternalStringRequest;->isSingleFire()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 15
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-virtual {p0}, Lcom/airbnb/android/requests/ExternalStringRequest;->getRetryPolicy()Lcom/android/volley/RetryPolicy;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/volley/RetryPolicy;->getCurrentTimeout()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/ExternalStringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 17
    :cond_1f
    return-void
.end method

.method public static isQueueRunning(Lcom/android/volley/Request;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    if-nez p0, :cond_4

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_3
    return v0

    :cond_4
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->isProcessing(Lcom/android/volley/Request;)Z

    move-result v0

    goto :goto_3
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 36
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/android/AirbnbApi;->toastError(Lcom/android/volley/VolleyError;)V

    .line 37
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/StringRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 38
    return-void
.end method

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

.method public isRunning()Z
    .registers 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/airbnb/android/requests/ExternalStringRequest;->isQueueRunning(Lcom/android/volley/Request;)Z

    move-result v0

    return v0
.end method

.method public isSingleFire()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
