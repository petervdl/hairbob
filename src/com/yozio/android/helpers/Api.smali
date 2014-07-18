.class public Lcom/yozio/android/helpers/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field private static _yozioApi:Lcom/yozio/android/helpers/Api;


# instance fields
.field protected _httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/yozio/android/helpers/Api;

    invoke-direct {v0}, Lcom/yozio/android/helpers/Api;-><init>()V

    sput-object v0, Lcom/yozio/android/helpers/Api;->_yozioApi:Lcom/yozio/android/helpers/Api;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yozio/android/helpers/Api;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/yozio/android/helpers/Api;->_yozioApi:Lcom/yozio/android/helpers/Api;

    return-object v0
.end method


# virtual methods
.method protected doPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v7, 0x0

    .line 295
    :try_start_1
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "YozioApi - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 297
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 298
    .local v2, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, p2, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 299
    const-string/jumbo v6, "User-Agent"

    invoke-static {}, Lcom/yozio/android/helpers/SystemInfo;->getInstance()Lcom/yozio/android/helpers/SystemInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yozio/android/helpers/SystemInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/yozio/android/helpers/Api;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v6

    instance-of v8, v6, Lorg/apache/http/client/HttpClient;

    if-nez v8, :cond_bf

    invoke-interface {v6, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 301
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_5a
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 302
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    const/4 v4, 0x0

    .line 304
    .local v4, "responseString":Ljava/lang/String;
    if-eqz v1, :cond_6b

    .line 305
    const-string/jumbo v6, "UTF-8"

    invoke-static {v1, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 309
    :cond_6b
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 310
    .local v5, "status":I
    const/16 v6, 0x190

    if-lt v5, v6, :cond_c6

    .line 311
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "YozioApi - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - Post http status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 313
    if-eqz v4, :cond_bd

    .line 314
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "YozioApi - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - Post response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    :cond_bd
    move-object v4, v7

    .line 328
    .end local v1    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "responseString":Ljava/lang/String;
    .end local v5    # "status":I
    :goto_be
    return-object v4

    .line 300
    .restart local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :cond_bf
    check-cast v6, Lorg/apache/http/client/HttpClient;

    invoke-static {v6, v2}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    goto :goto_5a

    .line 319
    .restart local v1    # "httpEntity":Lorg/apache/http/HttpEntity;
    .restart local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .restart local v4    # "responseString":Ljava/lang/String;
    .restart local v5    # "status":I
    :cond_c6
    if-eqz v4, :cond_10e

    .line 320
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "YozioApi - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - Post response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e8} :catch_e9

    goto :goto_be

    .line 324
    .end local v1    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v2    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v4    # "responseString":Ljava/lang/String;
    .end local v5    # "status":I
    :catch_e9
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "YozioApi - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - Post request: HttpException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10e
    move-object v4, v7

    .line 328
    goto :goto_be
.end method

.method public flushEvents(Lorg/json/JSONArray;)Z
    .registers 11
    .param p1, "events"    # Lorg/json/JSONArray;

    .prologue
    const/4 v5, 0x0

    .line 256
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v7, "YozioApi - flushEvents"

    invoke-static {v6, v7}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 258
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 259
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "app_key"

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yozio/android/YozioService;->getAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "device_id"

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yozio/android/YozioService;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    :try_start_34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 265
    .local v0, "body":Lorg/json/JSONObject;
    const-string/jumbo v6, "system"

    new-instance v7, Lorg/json/JSONObject;

    invoke-static {}, Lcom/yozio/android/helpers/SystemInfo;->getInstance()Lcom/yozio/android/helpers/SystemInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yozio/android/helpers/SystemInfo;->getSystemDictionary()Ljava/util/HashMap;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string/jumbo v6, "events"

    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v8, "body"

    instance-of v6, v0, Lorg/json/JSONObject;

    if-nez v6, :cond_8f

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v0    # "body":Lorg/json/JSONObject;
    :goto_5f
    invoke-direct {v7, v8, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v7, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "YozioApi - flushEvents: "

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v6, p1, Lorg/json/JSONArray;

    if-nez v6, :cond_96

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .end local p1    # "events":Lorg/json/JSONArray;
    :goto_77
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v6, "http://e.yoz.io/"

    const-string/jumbo v7, "flushEvents"

    invoke-virtual {p0, v6, v3, v7}, Lcom/yozio/android/helpers/Api;->doPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, "response":Ljava/lang/String;
    if-nez v4, :cond_9d

    .line 289
    .end local v4    # "response":Ljava/lang/String;
    :goto_8e
    return v5

    .line 267
    .restart local v0    # "body":Lorg/json/JSONObject;
    .restart local p1    # "events":Lorg/json/JSONArray;
    :cond_8f
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "body":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5f

    .line 269
    :cond_96
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "events":Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v6

    goto :goto_77

    .line 277
    .restart local v4    # "response":Ljava/lang/String;
    :cond_9d
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 278
    .local v1, "data":Lorg/json/JSONObject;
    const-string/jumbo v6, "ok"

    const-string/jumbo v7, "status"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ee

    .line 279
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "YozioApi - flushEvents: response status - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "status"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_cf
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_cf} :catch_d0

    goto :goto_8e

    .line 285
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "response":Ljava/lang/String;
    :catch_d0
    move-exception v2

    .line 286
    .local v2, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "YozioApi - flushEvents: json parse error - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8e

    .line 283
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v4    # "response":Ljava/lang/String;
    :cond_ee
    const/4 v5, 0x1

    goto :goto_8e
.end method

.method public getConfigs()Ljava/util/HashMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 68
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v7, "YozioApi - getConfigs"

    invoke-static {v6, v7}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 70
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 71
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "method"

    const-string/jumbo v8, "app.get.config"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "app_key"

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yozio/android/YozioService;->getAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v7, "device_id"

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/yozio/android/YozioService;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    const-string/jumbo v6, "http://api.yoz.io/"

    const-string/jumbo v7, "getConfigs"

    invoke-virtual {p0, v6, v3, v7}, Lcom/yozio/android/helpers/Api;->doPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "response":Ljava/lang/String;
    if-nez v4, :cond_58

    .line 78
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v7, "YozioApi - getConfigs: request error or timeout"

    invoke-static {v6, v7}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    move-object v0, v5

    .line 100
    :goto_57
    return-object v0

    .line 85
    :cond_58
    :try_start_58
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 86
    .local v1, "data":Lorg/json/JSONObject;
    const-string/jumbo v6, "ok"

    const-string/jumbo v7, "status"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8c

    .line 87
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "YozioApi - getConfigs: response status - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "status"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    move-object v0, v5

    .line 88
    goto :goto_57

    .line 91
    :cond_8c
    const-string/jumbo v6, "body"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/yozio/android/helpers/Json;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 92
    .local v0, "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "YozioApi - getConfigs: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_b2
    .catch Lorg/json/JSONException; {:try_start_58 .. :try_end_b2} :catch_b3

    goto :goto_57

    .line 95
    .end local v0    # "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "data":Lorg/json/JSONObject;
    :catch_b3
    move-exception v2

    .line 96
    .local v2, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "YozioApi - getConfigs: json parse error - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move-object v0, v5

    .line 100
    goto :goto_57
.end method

.method protected getHttpClient()Lorg/apache/http/client/HttpClient;
    .registers 8

    .prologue
    .line 49
    iget-object v3, p0, Lcom/yozio/android/helpers/Api;->_httpClient:Lorg/apache/http/client/HttpClient;

    if-eqz v3, :cond_7

    .line 50
    iget-object v3, p0, Lcom/yozio/android/helpers/Api;->_httpClient:Lorg/apache/http/client/HttpClient;

    .line 63
    :goto_6
    return-object v3

    .line 53
    :cond_7
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 54
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    sget v3, Lcom/yozio/android/Yozio;->YOZIO_CONNECTION_TIMEOUT:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    sget v3, Lcom/yozio/android/Yozio;->YOZIO_SOCKET_TIMEOUT:I

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 56
    sget-object v3, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 57
    const-string/jumbo v3, "UTF-8"

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 58
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 59
    .local v2, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 60
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 61
    .local v0, "cm":Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lcom/yozio/android/helpers/Api;->_httpClient:Lorg/apache/http/client/HttpClient;

    .line 63
    iget-object v3, p0, Lcom/yozio/android/helpers/Api;->_httpClient:Lorg/apache/http/client/HttpClient;

    goto :goto_6
.end method

.method public getMetaData()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    sget-object v5, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v6, "YozioApi - getMetaData"

    invoke-static {v5, v6}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 106
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 107
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "method"

    const-string/jumbo v7, "sdk.app.install.get.meta.data"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "app_key"

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yozio/android/YozioService;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "device_id"

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yozio/android/YozioService;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    const-string/jumbo v5, "http://api.yoz.io/"

    const-string/jumbo v6, "getMetaData"

    invoke-virtual {p0, v5, v3, v6}, Lcom/yozio/android/helpers/Api;->doPostRequest(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "response":Ljava/lang/String;
    if-nez v4, :cond_53

    .line 114
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 135
    :goto_52
    return-object v2

    .line 120
    :cond_53
    :try_start_53
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 121
    .local v0, "data":Lorg/json/JSONObject;
    const-string/jumbo v5, "ok"

    const-string/jumbo v6, "status"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ab

    .line 122
    sget-object v5, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "YozioApi - getMetaData: response status - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "status"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 123
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_8a
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_8a} :catch_8b

    goto :goto_52

    .line 130
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_8b
    move-exception v1

    .line 131
    .local v1, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "YozioApi - getMetaData: json parse error - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_52

    .line 126
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "data":Lorg/json/JSONObject;
    :cond_ab
    :try_start_ab
    const-string/jumbo v5, "body"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/yozio/android/helpers/Json;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 127
    .local v2, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v5, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "YozioApi - getMetaData: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_d1
    .catch Lorg/json/JSONException; {:try_start_ab .. :try_end_d1} :catch_8b

    goto :goto_52
.end method
