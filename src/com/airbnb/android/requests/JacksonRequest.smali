.class public Lcom/airbnb/android/requests/JacksonRequest;
.super Lcom/android/volley/Request;
.source "JacksonRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/android/requests/JacksonRequest;",
        ">",
        "Lcom/android/volley/Request",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# instance fields
.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDoParse:Z

.field private mJsonPost:Ljava/lang/String;

.field private mPostFields:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 33
    const-class v0, Lcom/airbnb/android/requests/JacksonRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/requests/JacksonRequest;->TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    sput-object v0, Lcom/airbnb/android/requests/JacksonRequest;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 36
    sget-object v0, Lcom/airbnb/android/requests/JacksonRequest;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 37
    sget-object v0, Lcom/airbnb/android/requests/JacksonRequest;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 38
    sget-object v0, Lcom/airbnb/android/requests/JacksonRequest;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 39
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
    .line 58
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p4}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/requests/JacksonRequest;->mDoParse:Z

    .line 59
    iput-object p2, p0, Lcom/airbnb/android/requests/JacksonRequest;->headers:Ljava/util/Map;

    .line 60
    iput-object p3, p0, Lcom/airbnb/android/requests/JacksonRequest;->listener:Lcom/android/volley/Response$Listener;

    .line 61
    return-void
.end method

.method public static setObjectMapper(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .registers 1
    .param p0, "newMapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;

    .prologue
    .line 152
    sput-object p0, Lcom/airbnb/android/requests/JacksonRequest;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 153
    return-void
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 157
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/requests/JacksonRequest;->hasHadResponseDelivered()Z

    move-result v0

    if-nez v0, :cond_9

    .line 158
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 160
    :cond_9
    return-void
.end method

.method protected deliverResponse(Lcom/airbnb/android/requests/JacksonRequest;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    .local p1, "response":Lcom/airbnb/android/requests/JacksonRequest;, "TT;"
    invoke-virtual {p0}, Lcom/airbnb/android/requests/JacksonRequest;->preProcess()V

    .line 71
    iget-object v0, p0, Lcom/airbnb/android/requests/JacksonRequest;->listener:Lcom/android/volley/Response$Listener;

    if-eqz v0, :cond_c

    .line 72
    iget-object v0, p0, Lcom/airbnb/android/requests/JacksonRequest;->listener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 74
    :cond_c
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    check-cast p1, Lcom/airbnb/android/requests/JacksonRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/requests/JacksonRequest;->deliverResponse(Lcom/airbnb/android/requests/JacksonRequest;)V

    return-void
.end method

.method public getBody()[B
    .registers 8

    .prologue
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    const/4 v2, 0x0

    .line 164
    iget-object v3, p0, Lcom/airbnb/android/requests/JacksonRequest;->mJsonPost:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 166
    :try_start_9
    invoke-super {p0}, Lcom/android/volley/Request;->getBody()[B
    :try_end_c
    .catch Lcom/android/volley/AuthFailureError; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v2

    .line 177
    :cond_d
    :goto_d
    return-object v2

    .line 167
    :catch_e
    move-exception v0

    .line 168
    .local v0, "e":Lcom/android/volley/AuthFailureError;
    invoke-virtual {v0}, Lcom/android/volley/AuthFailureError;->printStackTrace()V

    .line 173
    .end local v0    # "e":Lcom/android/volley/AuthFailureError;
    :cond_12
    :try_start_12
    iget-object v3, p0, Lcom/airbnb/android/requests/JacksonRequest;->mJsonPost:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/airbnb/android/requests/JacksonRequest;->mJsonPost:Ljava/lang/String;

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_1e} :catch_20

    move-result-object v2

    goto :goto_d

    .line 174
    :catch_20
    move-exception v1

    .line 175
    .local v1, "uee":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "Unsupported Encoding while trying to get the bytes of %s using %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/requests/JacksonRequest;->mJsonPost:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "utf-8"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/volley/VolleyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public getBodyContentType()Ljava/lang/String;
    .registers 3

    .prologue
    .line 183
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/requests/JacksonRequest;->mJsonPost:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "application/json; charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/requests/JacksonRequest;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_20
    return-object v0

    :cond_21
    invoke-super {p0}, Lcom/android/volley/Request;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/requests/JacksonRequest;->headers:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/airbnb/android/requests/JacksonRequest;->headers:Ljava/util/Map;

    :goto_6
    return-object v0

    :cond_7
    invoke-super {p0}, Lcom/android/volley/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    goto :goto_6
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 84
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected getParams()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    iget-object v3, p0, Lcom/airbnb/android/requests/JacksonRequest;->mPostFields:Ljava/util/Properties;

    if-nez v3, :cond_6

    .line 111
    const/4 v2, 0x0

    .line 117
    :cond_5
    return-object v2

    .line 113
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 114
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/airbnb/android/requests/JacksonRequest;->mPostFields:Ljava/util/Properties;

    invoke-virtual {v3}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 115
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method

.method public getTTL()J
    .registers 3

    .prologue
    .line 93
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isPermaCache()Z
    .registers 2

    .prologue
    .line 148
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected onStringParsed(Ljava/lang/String;)V
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 120
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    return-void
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 9
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    const-string/jumbo v4, "utf-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 131
    .local v2, "json":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/airbnb/android/requests/JacksonRequest;->onStringParsed(Ljava/lang/String;)V

    .line 132
    iget-boolean v3, p0, Lcom/airbnb/android/requests/JacksonRequest;->mDoParse:Z

    if-eqz v3, :cond_22

    .line 133
    sget-object v3, Lcom/airbnb/android/requests/JacksonRequest;->mapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v3, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ObjectReader;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 135
    :cond_22
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 136
    .local v1, "entry":Lcom/android/volley/Cache$Entry;
    invoke-virtual {p0}, Lcom/airbnb/android/requests/JacksonRequest;->isPermaCache()Z

    move-result v3

    if-eqz v3, :cond_39

    const-wide v3, 0x7fffffffffffffffL

    :goto_31
    invoke-virtual {v1, v3, v4}, Lcom/android/volley/Cache$Entry;->setTTL(J)V

    .line 137
    invoke-static {p0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v3

    .line 143
    .end local v1    # "entry":Lcom/android/volley/Cache$Entry;
    .end local v2    # "json":Ljava/lang/String;
    :goto_38
    return-object v3

    .line 136
    .restart local v1    # "entry":Lcom/android/volley/Cache$Entry;
    .restart local v2    # "json":Ljava/lang/String;
    :cond_39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/airbnb/android/requests/JacksonRequest;->getTTL()J
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_40} :catch_43
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_40} :catch_4e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_40} :catch_59

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_31

    .line 138
    .end local v1    # "entry":Lcom/android/volley/Cache$Entry;
    .end local v2    # "json":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_38

    .line 140
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_4e
    move-exception v0

    .line 141
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_38

    .line 142
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :catch_59
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/android/volley/ParseError;

    invoke-direct {v3, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_38
.end method

.method protected preProcess()V
    .registers 1

    .prologue
    .line 77
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    return-void
.end method

.method public setJsonPost(Ljava/lang/String;)V
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 191
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/requests/JacksonRequest;->mJsonPost:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setParse(Z)V
    .registers 2
    .param p1, "parse"    # Z

    .prologue
    .line 123
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    iput-boolean p1, p0, Lcom/airbnb/android/requests/JacksonRequest;->mDoParse:Z

    .line 124
    return-void
.end method

.method public setPostParams(Ljava/util/Properties;)V
    .registers 2
    .param p1, "props"    # Ljava/util/Properties;

    .prologue
    .line 97
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/requests/JacksonRequest;->mPostFields:Ljava/util/Properties;

    .line 98
    return-void
.end method

.method public setPostParamsAsStrap(Lcom/airbnb/android/utils/Strap;)V
    .registers 3
    .param p1, "strap"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 101
    .local p0, "this":Lcom/airbnb/android/requests/JacksonRequest;, "Lcom/airbnb/android/requests/JacksonRequest<TT;>;"
    if-eqz p1, :cond_e

    .line 102
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/requests/JacksonRequest;->mPostFields:Ljava/util/Properties;

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/requests/JacksonRequest;->mPostFields:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 105
    :cond_e
    return-void
.end method
