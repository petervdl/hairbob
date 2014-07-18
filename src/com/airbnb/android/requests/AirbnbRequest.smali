.class public abstract Lcom/airbnb/android/requests/AirbnbRequest;
.super Lcom/airbnb/android/requests/JacksonRequest;
.source "AirbnbRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/android/requests/AirbnbRequest;",
        ">",
        "Lcom/airbnb/android/requests/JacksonRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static API_VERSION_V1:Ljava/lang/String; = null

.field public static final BASE_TIMEOUT_MS:I = 0x3a98

.field public static final HEADER_AFFILIATE_CAMPAIGN:Ljava/lang/String; = "X-Airbnb-Affiliate-Campaign"

.field public static final HEADER_AFFILIATE_ID:Ljava/lang/String; = "X-Airbnb-Affiliate-ID"

.field public static final HEADER_DEVICE_ID:Ljava/lang/String; = "X-Airbnb-Device-ID"

.field public static final HEADER_HOST:Ljava/lang/String; = "Host"

.field public static final HEADER_METHOD_OVERRIDE:Ljava/lang/String; = "X-HTTP-Method-Override"

.field public static final HEADER_OAUTH:Ljava/lang/String; = "X-Airbnb-OAuth-Token"

.field public static final HEADER_PREFETCH:Ljava/lang/String; = "X-Airbnb-Prefetch"

.field public static final HEADER_UA:Ljava/lang/String; = "User-Agent"

.field public static final TAG:Ljava/lang/String;

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static sLastOfflineToast:J


# instance fields
.field public errorCode:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "error_code"
    .end annotation
.end field

.field private mIsPrefetch:Z

.field private mLoaderRequestListener:Lcom/airbnb/android/requests/RequestListener;

.field private mOauthToken:Ljava/lang/String;

.field private mPriority:Lcom/android/volley/Request$Priority;

.field private mResult:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "result"
    .end annotation
.end field

.field queryParameters:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const-class v0, Lcom/airbnb/android/requests/AirbnbRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/requests/AirbnbRequest;->TAG:Ljava/lang/String;

    .line 47
    const-string/jumbo v0, "v1/"

    sput-object v0, Lcom/airbnb/android/requests/AirbnbRequest;->API_VERSION_V1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<TT;>;"
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/requests/AirbnbRequest;->API_VERSION_V1:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/airbnb/android/AirbnbApi;->buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, p2, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "props"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<TT;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/requests/AirbnbRequest;->API_VERSION_V1:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/airbnb/android/AirbnbApi;->buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<TT;>;"
    const/4 v2, 0x0

    .line 73
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/requests/AirbnbRequest;->API_VERSION_V1:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/airbnb/android/AirbnbApi;->buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, p3, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 6
    .param p1, "url"    # Ljava/lang/String;
    .param p4, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/android/requests/JacksonRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 48
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    iput-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mPriority:Lcom/android/volley/Request$Priority;

    .line 78
    invoke-direct {p0, p0}, Lcom/airbnb/android/requests/AirbnbRequest;->getRetryPolicyForRequest(Lcom/airbnb/android/requests/AirbnbRequest;)Lcom/android/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/AirbnbRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 79
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mOauthToken:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<TT;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/requests/AirbnbRequest;->API_VERSION_V1:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2}, Lcom/airbnb/android/AirbnbApi;->buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 66
    return-void
.end method

.method private getRetryPolicyForRequest(Lcom/airbnb/android/requests/AirbnbRequest;)Lcom/android/volley/RetryPolicy;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/AirbnbRequest",
            "<*>;)",
            "Lcom/android/volley/RetryPolicy;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    .local p1, "request":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<*>;"
    invoke-virtual {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->getMethod()I

    move-result v0

    if-nez v0, :cond_11

    .line 249
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3a98

    const/4 v2, 0x3

    const/high16 v3, 0x40000000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 253
    :goto_10
    return-object v0

    .line 250
    :cond_11
    invoke-virtual {p1}, Lcom/airbnb/android/requests/AirbnbRequest;->getMethod()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 251
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const v1, 0x57e40

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    goto :goto_10

    .line 253
    :cond_23
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    invoke-direct {v0}, Lcom/android/volley/DefaultRetryPolicy;-><init>()V

    goto :goto_10
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
    .line 117
    .local p0, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    if-nez p0, :cond_4

    .line 118
    const/4 v0, 0x0

    .line 120
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

.method public static parseError(Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .registers 2
    .param p0, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 167
    const-string/jumbo v0, "error"

    invoke-static {p0, v0}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorByKey(Lcom/android/volley/VolleyError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseErrorByKey(Lcom/android/volley/VolleyError;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "error"    # Lcom/android/volley/VolleyError;
    .param p1, "errorKey"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget-object v3, v3, Lcom/android/volley/NetworkResponse;->errorResponseString:Ljava/lang/String;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 174
    .local v2, "json":Lorg/json/JSONObject;
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v3

    .line 178
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_e
    return-object v3

    .line 175
    :catch_f
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 177
    .local v1, "errors":Ljava/io/StringWriter;
    sget-object v3, Lcom/airbnb/android/requests/AirbnbRequest;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v3, 0x0

    goto :goto_e
.end method

.method public static parseErrorMessage(Lcom/android/volley/VolleyError;)Ljava/lang/String;
    .registers 2
    .param p0, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 163
    const-string/jumbo v0, "error_message"

    invoke-static {p0, v0}, Lcom/airbnb/android/requests/AirbnbRequest;->parseErrorByKey(Lcom/android/volley/VolleyError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toastGenericVolleyError(Landroid/content/Context;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x7f0e01b9

    const/4 v7, 0x0

    .line 218
    if-nez p0, :cond_7

    .line 239
    :cond_6
    :goto_6
    return-void

    .line 221
    :cond_7
    sget-object v3, Lcom/airbnb/android/requests/AirbnbRequest;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_16

    .line 222
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    sput-object v3, Lcom/airbnb/android/requests/AirbnbRequest;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 224
    :cond_16
    sget-object v3, Lcom/airbnb/android/requests/AirbnbRequest;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_4b

    .line 225
    sget-object v3, Lcom/airbnb/android/requests/AirbnbRequest;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 226
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_43

    .line 227
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 228
    .local v1, "nowTime":J
    sget-wide v3, Lcom/airbnb/android/requests/AirbnbRequest;->sLastOfflineToast:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 229
    const v3, 0x7f0e028b

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 230
    sput-wide v1, Lcom/airbnb/android/requests/AirbnbRequest;->sLastOfflineToast:J

    goto :goto_6

    .line 234
    .end local v1    # "nowTime":J
    :cond_43
    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_6

    .line 237
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_4b
    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_6
.end method


# virtual methods
.method public cancelIfRunning()V
    .registers 2

    .prologue
    .line 242
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/requests/AirbnbRequest;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 243
    invoke-virtual {p0}, Lcom/airbnb/android/requests/AirbnbRequest;->cancel()V

    .line 245
    :cond_9
    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 146
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/android/AirbnbApi;->toastError(Lcom/android/volley/VolleyError;)V

    .line 147
    invoke-super {p0, p1}, Lcom/airbnb/android/requests/JacksonRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 149
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mLoaderRequestListener:Lcom/airbnb/android/requests/RequestListener;

    if-eqz v0, :cond_13

    .line 150
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mLoaderRequestListener:Lcom/airbnb/android/requests/RequestListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/requests/RequestListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 152
    :cond_13
    return-void
.end method

.method public deliverErrorNoToast(Lcom/android/volley/VolleyError;)V
    .registers 2
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 155
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-super {p0, p1}, Lcom/airbnb/android/requests/JacksonRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 156
    return-void
.end method

.method protected deliverResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    .local p1, "response":Lcom/airbnb/android/requests/AirbnbRequest;, "TT;"
    invoke-super {p0, p1}, Lcom/airbnb/android/requests/JacksonRequest;->deliverResponse(Lcom/airbnb/android/requests/JacksonRequest;)V

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mLoaderRequestListener:Lcom/airbnb/android/requests/RequestListener;

    if-eqz v0, :cond_c

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mLoaderRequestListener:Lcom/airbnb/android/requests/RequestListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/requests/RequestListener;->onResponse(Ljava/lang/Object;)V

    .line 142
    :cond_c
    return-void
.end method

.method protected bridge synthetic deliverResponse(Lcom/airbnb/android/requests/JacksonRequest;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/requests/JacksonRequest;

    .prologue
    .line 33
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    check-cast p1, Lcom/airbnb/android/requests/AirbnbRequest;

    .end local p1    # "x0":Lcom/airbnb/android/requests/JacksonRequest;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;->deliverResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    check-cast p1, Lcom/airbnb/android/requests/AirbnbRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;->deliverResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V

    return-void
.end method

.method public execute()V
    .registers 2

    .prologue
    .line 87
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 88
    return-void
.end method

.method public executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V
    .registers 2
    .param p1, "manager"    # Lcom/airbnb/android/interfaces/RequestLifecycleManager;

    .prologue
    .line 105
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-interface {p1, p0}, Lcom/airbnb/android/interfaces/RequestLifecycleManager;->executeRequest(Lcom/airbnb/android/requests/AirbnbRequest;)V

    .line 106
    return-void
.end method

.method public getApiVersionString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    const-string/jumbo v0, "v1/"

    return-object v0
.end method

.method public getHeaders()Lcom/airbnb/android/utils/Strap;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "X-Airbnb-Device-ID"

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getAndroidId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "User-Agent"

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 188
    .local v1, "headers":Lcom/airbnb/android/utils/Strap;
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->devEndpointEnabled()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 189
    const-string/jumbo v2, "Host"

    const-string/jumbo v3, "api.localhost.airbnb.com"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 194
    :cond_31
    iget-object v2, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mOauthToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 195
    const-string/jumbo v2, "X-Airbnb-OAuth-Token"

    iget-object v3, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mOauthToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 199
    :cond_41
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getAffiliateCampaignData()Landroid/util/Pair;

    move-result-object v0

    .line 200
    .local v0, "affiliateCampaign":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_5c

    .line 201
    const-string/jumbo v3, "X-Airbnb-Affiliate-ID"

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "X-Airbnb-Affiliate-Campaign"

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 204
    :cond_5c
    iget-boolean v2, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mIsPrefetch:Z

    if-eqz v2, :cond_69

    .line 205
    const-string/jumbo v2, "X-Airbnb-Prefetch"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 208
    :cond_69
    return-object v1
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/requests/AirbnbRequest;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .registers 2

    .prologue
    .line 264
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mPriority:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method public isOkay()Z
    .registers 2

    .prologue
    .line 126
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    iget v0, p0, Lcom/airbnb/android/requests/AirbnbRequest;->errorCode:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isPrefetch()Z
    .registers 2

    .prologue
    .line 276
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    iget-boolean v0, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mIsPrefetch:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 109
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-static {p0}, Lcom/airbnb/android/requests/AirbnbRequest;->isQueueRunning(Lcom/android/volley/Request;)Z

    move-result v0

    return v0
.end method

.method public isSingleFire()Z
    .registers 2

    .prologue
    .line 159
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isSuccess()Z
    .registers 3

    .prologue
    .line 132
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    const-string/jumbo v0, "success"

    iget-object v1, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onStringParsed(Ljava/lang/String;)V
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 259
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-super {p0, p1}, Lcom/airbnb/android/requests/JacksonRequest;->onStringParsed(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public setIsPrefetch(Z)V
    .registers 2
    .param p1, "mIsPrefetch"    # Z

    .prologue
    .line 280
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    iput-boolean p1, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mIsPrefetch:Z

    .line 281
    return-void
.end method

.method public setLoaderRequestListener(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/requests/RequestListener;

    .prologue
    .line 272
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mLoaderRequestListener:Lcom/airbnb/android/requests/RequestListener;

    .line 273
    return-void
.end method

.method public setPriority(Lcom/android/volley/Request$Priority;)V
    .registers 2
    .param p1, "priority"    # Lcom/android/volley/Request$Priority;

    .prologue
    .line 268
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/requests/AirbnbRequest;->mPriority:Lcom/android/volley/Request$Priority;

    .line 269
    return-void
.end method

.method public willMissCache()Z
    .registers 2

    .prologue
    .line 94
    .local p0, "this":Lcom/airbnb/android/requests/AirbnbRequest;, "Lcom/airbnb/android/requests/AirbnbRequest<TT;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->willMissCache(Lcom/android/volley/Request;)Z

    move-result v0

    return v0
.end method
