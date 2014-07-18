.class public Lcom/newrelic/agent/android/harvest/HarvestConnection;
.super Ljava/lang/Object;
.source "HarvestConnection.java"


# static fields
.field private static final APPLICATION_TOKEN_HEADER:Ljava/lang/String; = "X-App-License-Key"

.field private static final COLLECTOR_CONNECT_URI:Ljava/lang/String; = "/mobile/v2/connect"

.field private static final COLLECTOR_DATA_URI:Ljava/lang/String; = "/mobile/v2/data"

.field private static final CONNECT_TIME_HEADER:Ljava/lang/String; = "X-NewRelic-Connect-Time"

.field private static final DISABLE_COMPRESSION_FOR_DEBUGGING:Ljava/lang/Boolean;

.field public static final NSURLErrorBadServerResponse:I = -0x3f3

.field public static final NSURLErrorBadURL:I = -0x3e8

.field public static final NSURLErrorCannotConnectToHost:I = -0x3ec

.field public static final NSURLErrorDNSLookupFailed:I = -0x3ee

.field public static final NSURLErrorSecureConnectionFailed:I = -0x4b0

.field public static final NSURLErrorTimedOut:I = -0x3e9

.field public static final NSURLErrorUnknown:I = -0x1


# instance fields
.field private applicationToken:Ljava/lang/String;

.field private final collectorClient:Lorg/apache/http/client/HttpClient;

.field private collectorHost:Ljava/lang/String;

.field private connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private serverTimestamp:J

.field private useSsl:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->DISABLE_COMPRESSION_FOR_DEBUGGING:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v4

    iput-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 62
    const/16 v2, 0x14

    .line 63
    .local v2, "TIMEOUT_IN_SECONDS":I
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x14

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 64
    .local v0, "CONNECTION_TIMEOUT":I
    const/16 v1, 0x2000

    .line 66
    .local v1, "SOCKET_BUFFER_SIZE":I
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 67
    .local v3, "params":Lorg/apache/http/params/BasicHttpParams;
    invoke-static {v3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 68
    invoke-static {v3, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 69
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 70
    const/16 v4, 0x2000

    invoke-static {v3, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 71
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorClient:Lorg/apache/http/client/HttpClient;

    .line 72
    return-void
.end method

.method private deflate(Ljava/lang/String;)[B
    .registers 9
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 211
    const/16 v0, 0x2000

    .line 213
    .local v0, "DEFLATE_BUFFER_SIZE":I
    new-instance v4, Ljava/util/zip/Deflater;

    invoke-direct {v4}, Ljava/util/zip/Deflater;-><init>()V

    .line 214
    .local v4, "deflater":Ljava/util/zip/Deflater;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 215
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finish()V

    .line 217
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 218
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x2000

    new-array v2, v5, [B

    .line 219
    .local v2, "buf":[B
    :goto_1a
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->finished()Z

    move-result v5

    if-nez v5, :cond_33

    .line 220
    invoke-virtual {v4, v2}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 221
    .local v3, "byteCount":I
    if-gtz v3, :cond_2e

    .line 222
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v6, "HTTP request contains an incomplete payload"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 224
    :cond_2e
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1a

    .line 226
    .end local v3    # "byteCount":I
    :cond_33
    invoke-virtual {v4}, Ljava/util/zip/Deflater;->end()V

    .line 227
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private exceptionToErrorCode(Ljava/lang/Exception;)I
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    const/16 v0, -0x3e9

    .line 254
    instance-of v1, p1, Lorg/apache/http/client/ClientProtocolException;

    if-eqz v1, :cond_9

    .line 255
    const/16 v0, -0x3f3

    .line 269
    :cond_8
    :goto_8
    return v0

    .line 256
    :cond_9
    instance-of v1, p1, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_10

    .line 257
    const/16 v0, -0x3ee

    goto :goto_8

    .line 258
    :cond_10
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-nez v1, :cond_8

    .line 260
    instance-of v1, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-nez v1, :cond_8

    .line 262
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_1f

    .line 263
    const/16 v0, -0x3ec

    goto :goto_8

    .line 264
    :cond_1f
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_26

    .line 265
    const/16 v0, -0x3e8

    goto :goto_8

    .line 266
    :cond_26
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_2d

    .line 267
    const/16 v0, -0x4b0

    goto :goto_8

    .line 269
    :cond_2d
    const/4 v0, -0x1

    goto :goto_8
.end method

.method private getCollectorConnectUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    const-string/jumbo v0, "/mobile/v2/connect"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCollectorDataUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    const-string/jumbo v0, "/mobile/v2/data"

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCollectorUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "resource"    # Ljava/lang/String;

    .prologue
    .line 273
    iget-boolean v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->useSsl:Z

    if-eqz v1, :cond_1f

    const-string/jumbo v0, "https://"

    .line 274
    .local v0, "protocol":Ljava/lang/String;
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 273
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v0, "http://"

    goto :goto_7
.end method

.method public static readResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 8
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    const/16 v0, 0x2000

    .line 233
    .local v0, "RESPONSE_BUFFER_SIZE":I
    const/16 v6, 0x2000

    new-array v1, v6, [C

    .line 234
    .local v1, "buf":[C
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 237
    .local v2, "in":Ljava/io/InputStream;
    :try_start_13
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 239
    .local v4, "reader":Ljava/io/BufferedReader;
    :goto_1d
    invoke-virtual {v4, v1}, Ljava/io/BufferedReader;->read([C)I
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_30

    move-result v3

    .line 240
    .local v3, "n":I
    if-gez v3, :cond_2b

    .line 244
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 246
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 241
    :cond_2b
    const/4 v6, 0x0

    :try_start_2c
    invoke-virtual {v5, v1, v6, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_1d

    .line 244
    .end local v3    # "n":I
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_30
    move-exception v6

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v6
.end method

.method private recordCollectorError(Ljava/lang/Exception;)V
    .registers 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 250
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Supportability/AgentHealth/Collector/ResponseErrorCodes/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->exceptionToErrorCode(Ljava/lang/Exception;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 251
    return-void
.end method


# virtual methods
.method public createConnectPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorConnectUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method public createDataPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->getCollectorDataUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method public createPost(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 11
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x200

    if-le v4, v5, :cond_10

    sget-object v4, Lcom/newrelic/agent/android/harvest/HarvestConnection;->DISABLE_COMPRESSION_FOR_DEBUGGING:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_42

    :cond_10
    const-string/jumbo v0, "identity"

    .line 87
    .local v0, "contentEncoding":Ljava/lang/String;
    :goto_13
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string/jumbo v4, "Content-Type"

    const-string/jumbo v5, "application/json"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v4, "Content-Encoding"

    invoke-virtual {v3, v4, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v4, "User-Agent"

    const-string/jumbo v5, "http.agent"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    if-nez v4, :cond_46

    .line 94
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v5, "Cannot create POST without an Application Token."

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 95
    const/4 v3, 0x0

    .line 115
    .end local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    :goto_41
    return-object v3

    .line 85
    .end local v0    # "contentEncoding":Ljava/lang/String;
    :cond_42
    const-string/jumbo v0, "deflate"

    goto :goto_13

    .line 98
    .restart local v0    # "contentEncoding":Ljava/lang/String;
    .restart local v3    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_46
    const-string/jumbo v4, "X-App-License-Key"

    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-wide v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->serverTimestamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_66

    .line 101
    const-string/jumbo v4, "X-NewRelic-Connect-Time"

    iget-wide v5, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->serverTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_66
    const-string/jumbo v4, "deflate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 105
    invoke-direct {p0, p2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->deflate(Ljava/lang/String;)[B

    move-result-object v1

    .line 106
    .local v1, "deflated":[B
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_41

    .line 109
    .end local v1    # "deflated":[B
    :cond_7c
    :try_start_7c
    new-instance v4, Lorg/apache/http/entity/StringEntity;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, p2, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_87
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7c .. :try_end_87} :catch_88

    goto :goto_41

    .line 110
    :catch_88
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v5, "UTF-8 is unsupported"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 112
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getConnectInformation()Lcom/newrelic/agent/android/harvest/ConnectInformation;
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    return-object v0
.end method

.method public send(Lorg/apache/http/client/methods/HttpPost;)Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .registers 9
    .param p1, "post"    # Lorg/apache/http/client/methods/HttpPost;

    .prologue
    .line 125
    new-instance v1, Lcom/newrelic/agent/android/harvest/HarvestResponse;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;-><init>()V

    .line 129
    .local v1, "harvestResponse":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    :try_start_5
    new-instance v3, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v3}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 130
    .local v3, "timer":Lcom/newrelic/agent/android/stats/TicToc;
    invoke-virtual {v3}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 131
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 132
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {v3}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->setResponseTime(J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_2d

    .line 138
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->setStatusCode(I)V

    .line 140
    :try_start_25
    invoke-static {v2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->readResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->setResponseBody(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_50

    .line 145
    .end local v1    # "harvestResponse":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .end local v2    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "timer":Lcom/newrelic/agent/android/stats/TicToc;
    :goto_2c
    return-object v1

    .line 133
    .restart local v1    # "harvestResponse":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    :catch_2d
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to send POST to collector: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->recordCollectorError(Ljava/lang/Exception;)V

    .line 136
    const/4 v1, 0x0

    goto :goto_2c

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "timer":Lcom/newrelic/agent/android/stats/TicToc;
    :catch_50
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 143
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to retrieve collector response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public sendConnect()Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .registers 8

    .prologue
    .line 154
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    if-nez v3, :cond_a

    .line 155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 157
    :cond_a
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->toJsonString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createConnectPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 158
    .local v0, "connectPost":Lorg/apache/http/client/methods/HttpPost;
    if-nez v0, :cond_20

    .line 159
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Failed to create connect POST"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 160
    const/4 v1, 0x0

    .line 169
    :goto_1f
    return-object v1

    .line 163
    :cond_20
    new-instance v2, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v2}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 164
    .local v2, "timer":Lcom/newrelic/agent/android/stats/TicToc;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 166
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->send(Lorg/apache/http/client/methods/HttpPost;)Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v1

    .line 168
    .local v1, "response":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v3

    const-string/jumbo v4, "Supportability/AgentHealth/Collector/Connect"

    invoke-virtual {v2}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    goto :goto_1f
.end method

.method public sendData(Lcom/newrelic/agent/android/harvest/type/Harvestable;)Lcom/newrelic/agent/android/harvest/HarvestResponse;
    .registers 5
    .param p1, "harvestable"    # Lcom/newrelic/agent/android/harvest/type/Harvestable;

    .prologue
    .line 178
    if-nez p1, :cond_8

    .line 179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 181
    :cond_8
    invoke-interface {p1}, Lcom/newrelic/agent/android/harvest/type/Harvestable;->toJsonString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->createDataPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 182
    .local v0, "dataPost":Lorg/apache/http/client/methods/HttpPost;
    if-nez v0, :cond_1c

    .line 183
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v2, "Failed to create data POST"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 184
    const/4 v1, 0x0

    .line 186
    :goto_1b
    return-object v1

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->send(Lorg/apache/http/client/methods/HttpPost;)Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v1

    goto :goto_1b
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "applicationToken"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->applicationToken:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .registers 2
    .param p1, "collectorHost"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->collectorHost:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V
    .registers 2
    .param p1, "connectInformation"    # Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->connectInformation:Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .line 304
    return-void
.end method

.method public setServerTimestamp(J)V
    .registers 6
    .param p1, "serverTimestamp"    # J

    .prologue
    .line 286
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Setting server timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 287
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->serverTimestamp:J

    .line 288
    return-void
.end method

.method public useSsl(Z)V
    .registers 2
    .param p1, "useSsl"    # Z

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/newrelic/agent/android/harvest/HarvestConnection;->useSsl:Z

    .line 292
    return-void
.end method
