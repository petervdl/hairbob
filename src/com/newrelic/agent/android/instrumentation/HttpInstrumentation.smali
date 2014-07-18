.class public final Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;
.super Ljava/lang/Object;
.source "HttpInstrumentation.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;
    .registers 4
    .param p0, "host"    # Lorg/apache/http/HttpHost;
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .prologue
    .line 190
    invoke-static {p2, p0, p1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpRequest;

    move-result-object v0

    return-object v0
.end method

.method private static _(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    .registers 3
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .param p1, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .prologue
    .line 194
    invoke-static {p1, p0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private static _(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;
    .registers 3
    .param p1, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lcom/newrelic/agent/android/instrumentation/TransactionState;",
            ")",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "handler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/httpclient/ResponseHandlerImpl;->wrap(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v0

    return-object v0
.end method

.method private static _(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 3
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .prologue
    .line 186
    invoke-static {p1, p0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 8
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 85
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 87
    .local v1, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    invoke-static {p3, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v3

    invoke-interface {p0, p1, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_17

    move-result-object v2

    return-object v2

    .line 89
    :catch_12
    move-exception v0

    .line 90
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 91
    throw v0

    .line 93
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_17
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 95
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 9
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 69
    .local v1, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    invoke-static {p3, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v3

    invoke-interface {p0, p1, v2, v3, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_17

    move-result-object v2

    return-object v2

    .line 71
    :catch_12
    move-exception v0

    .line 72
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 73
    throw v0

    .line 75
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_17
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 77
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 7
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 149
    .local v1, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    :try_start_5
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-static {p2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_17

    move-result-object v2

    return-object v2

    .line 151
    :catch_12
    move-exception v0

    .line 152
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 153
    throw v0

    .line 155
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_17
    move-exception v0

    .line 156
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 157
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 8
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/HttpClient;",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 131
    .local v1, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    :try_start_5
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-static {p2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/ResponseHandler;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/ResponseHandler;

    move-result-object v3

    invoke-interface {p0, v2, v3, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_10} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_17

    move-result-object v2

    return-object v2

    .line 133
    :catch_12
    move-exception v0

    .line 134
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 135
    throw v0

    .line 137
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_17
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 139
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 104
    .local v1, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    invoke-interface {p0, p1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 106
    :catch_12
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 108
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 7
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 55
    .local v1, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    :try_start_5
    invoke-static {p1, p2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpRequest;

    move-result-object v2

    invoke-interface {p0, p1, v2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 57
    :catch_12
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 59
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 5
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 165
    .local v1, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    :try_start_5
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 167
    :catch_12
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 169
    throw v0
.end method

.method public static execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 6
    .param p0, "httpClient"    # Lorg/apache/http/client/HttpClient;
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    .line 117
    .local v1, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    :try_start_5
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->_(Lorg/apache/http/HttpResponse;Lcom/newrelic/agent/android/instrumentation/TransactionState;)Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_10} :catch_12

    move-result-object v2

    return-object v2

    .line 119
    :catch_12
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 121
    throw v0
.end method

.method private static httpClientError(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V
    .registers 16
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_36

    .line 175
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 176
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v13

    .line 177
    .local v13, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v2

    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v3

    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v8

    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v10

    invoke-virtual {v13}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v0}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 179
    .end local v13    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_36
    return-void
.end method

.method public static openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .registers 2
    .param p0, "connection"    # Ljava/net/URLConnection;
    .annotation build Lcom/newrelic/agent/android/instrumentation/WrapReturn;
        className = "java/net/URL"
        methodDesc = "()Ljava/net/URLConnection;"
        methodName = "openConnection"
    .end annotation

    .prologue
    .line 26
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_d

    .line 27
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .end local p0    # "connection":Ljava/net/URLConnection;
    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    move-object p0, v0

    .line 33
    :cond_c
    :goto_c
    return-object p0

    .line 29
    .restart local p0    # "connection":Ljava/net/URLConnection;
    :cond_d
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    .line 30
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    check-cast p0, Ljava/net/HttpURLConnection;

    .end local p0    # "connection":Ljava/net/URLConnection;
    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    move-object p0, v0

    goto :goto_c
.end method

.method public static openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;
    .registers 2
    .param p0, "connection"    # Ljava/net/URLConnection;
    .annotation build Lcom/newrelic/agent/android/instrumentation/WrapReturn;
        className = "java.net.URL"
        methodDesc = "(Ljava/net/Proxy;)Ljava/net/URLConnection;"
        methodName = "openConnection"
    .end annotation

    .prologue
    .line 39
    instance-of v0, p0, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_d

    .line 40
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .end local p0    # "connection":Ljava/net/URLConnection;
    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpsURLConnectionExtension;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    move-object p0, v0

    .line 46
    :cond_c
    :goto_c
    return-object p0

    .line 42
    .restart local p0    # "connection":Ljava/net/URLConnection;
    :cond_d
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    .line 43
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;

    check-cast p0, Ljava/net/HttpURLConnection;

    .end local p0    # "connection":Ljava/net/URLConnection;
    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/instrumentation/HttpURLConnectionExtension;-><init>(Ljava/net/HttpURLConnection;)V

    move-object p0, v0

    goto :goto_c
.end method
