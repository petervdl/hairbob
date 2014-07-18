.class public Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnectionImpl.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/http/Policy;
.implements Lcom/squareup/okhttp/internal/http/ReflectMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    }
.end annotation


# instance fields
.field allowFailedPostRetry:Z

.field final client:Lcom/squareup/okhttp/OkHttpClient;

.field private fixedContentLength:J

.field protected httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;

.field private final rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private redirectionCount:I


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/squareup/okhttp/OkHttpClient;)V
    .registers 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "client"    # Lcom/squareup/okhttp/OkHttpClient;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 75
    new-instance v0, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 77
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->allowFailedPostRetry:Z

    .line 85
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    .line 86
    return-void
.end method

.method static applyPatchMethodToHttpURLConnection(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    .registers 6
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 610
    const-class v2, Ljava/net/HttpURLConnection;

    const-string/jumbo v3, "method"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 611
    .local v1, "methodField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 613
    :try_start_d
    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_10} :catch_11

    .line 617
    return-void

    .line 614
    :catch_11
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Unsupported PATCH type"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private execute(Z)Z
    .registers 4
    .param p1, "readResponse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->sendRequest()V

    .line 366
    if-eqz p1, :cond_c

    .line 367
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->readResponse()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_e

    .line 369
    :cond_c
    const/4 v1, 0x1

    .line 372
    :goto_d
    return v1

    .line 370
    :catch_e
    move-exception v0

    .line 371
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->handleFailure(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 372
    const/4 v1, 0x0

    goto :goto_d

    .line 374
    :cond_17
    throw v0
.end method

.method private getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 311
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 312
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 323
    :goto_d
    return-object v4

    .line 316
    :cond_e
    :goto_e
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->execute(Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 320
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->processResponseHeaders()Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    move-result-object v2

    .line 321
    .local v2, "retry":Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    sget-object v4, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v2, v4, :cond_25

    .line 322
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 323
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    goto :goto_d

    .line 327
    :cond_25
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 328
    .local v3, "retryMethod":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 333
    .local v0, "requestBody":Ljava/io/OutputStream;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    .line 334
    .local v1, "responseCode":I
    const/16 v4, 0x12c

    if-eq v1, v4, :cond_41

    const/16 v4, 0x12d

    if-eq v1, v4, :cond_41

    const/16 v4, 0x12e

    if-eq v1, v4, :cond_41

    const/16 v4, 0x12f

    if-ne v1, v4, :cond_45

    .line 338
    :cond_41
    const-string/jumbo v3, "GET"

    .line 339
    const/4 v0, 0x0

    .line 342
    :cond_45
    if-eqz v0, :cond_5a

    instance-of v4, v0, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    if-nez v4, :cond_5a

    .line 343
    new-instance v4, Ljava/net/HttpRetryException;

    const-string/jumbo v5, "Cannot retry streamed HTTP body"

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseCode()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 347
    :cond_5a
    sget-object v4, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v2, v4, :cond_63

    .line 348
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    .line 351
    :cond_63
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->release(Z)V

    .line 353
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getConnection()Lcom/squareup/okhttp/Connection;

    move-result-object v5

    check-cast v0, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    .end local v0    # "requestBody":Ljava/io/OutputStream;
    invoke-direct {p0, v3, v4, v5, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    goto :goto_e
.end method

.method private handleFailure(Ljava/io/IOException;)Z
    .registers 10
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 385
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v3, v6, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    .line 386
    .local v3, "routeSelector":Lcom/squareup/okhttp/internal/http/RouteSelector;
    if-eqz v3, :cond_15

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v6, :cond_15

    .line 387
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v3, v6, p1}, Lcom/squareup/okhttp/internal/http/RouteSelector;->connectFailed(Lcom/squareup/okhttp/Connection;Ljava/io/IOException;)V

    .line 390
    :cond_15
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v1

    .line 391
    .local v1, "requestBody":Ljava/io/OutputStream;
    if-eqz v1, :cond_21

    instance-of v6, v1, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    if-eqz v6, :cond_41

    :cond_21
    move v0, v5

    .line 393
    .local v0, "canRetryRequestBody":Z
    :goto_22
    if-nez v3, :cond_2a

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v6, :cond_3e

    :cond_2a
    if-eqz v3, :cond_32

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RouteSelector;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    :cond_32
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->isRecoverable(Ljava/io/IOException;)Z

    move-result v6

    if-eqz v6, :cond_3e

    if-eqz v0, :cond_3e

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->allowFailedPostRetry:Z

    if-nez v6, :cond_43

    .line 398
    :cond_3e
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 406
    :goto_40
    return v4

    .end local v0    # "canRetryRequestBody":Z
    :cond_41
    move v0, v4

    .line 391
    goto :goto_22

    .line 402
    .restart local v0    # "canRetryRequestBody":Z
    :cond_43
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v4, v5}, Lcom/squareup/okhttp/internal/http/HttpEngine;->release(Z)V

    move-object v2, v1

    .line 403
    check-cast v2, Lcom/squareup/okhttp/internal/http/RetryableOutputStream;

    .line 404
    .local v2, "retryableOutputStream":Lcom/squareup/okhttp/internal/http/RetryableOutputStream;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7, v2}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 405
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iput-object v3, v4, Lcom/squareup/okhttp/internal/http/HttpEngine;->routeSelector:Lcom/squareup/okhttp/internal/http/RouteSelector;

    move v4, v5

    .line 406
    goto :goto_40
.end method

.method private initHttpEngine()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v1, :cond_7

    .line 264
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v1

    .line 265
    :cond_7
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v1, :cond_c

    .line 285
    :goto_b
    return-void

    .line 269
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    .line 271
    :try_start_f
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v1, :cond_23

    .line 272
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 274
    const-string/jumbo v1, "POST"

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    .line 280
    :cond_23
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_2f} :catch_30

    goto :goto_b

    .line 281
    :catch_30
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    .line 283
    throw v0

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :cond_34
    :try_start_34
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v2, "PUT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v2, "PATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 277
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not support writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_71} :catch_30
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .registers 7
    .param p1, "e"    # Ljava/io/IOException;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 412
    instance-of v4, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v4, :cond_16

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/CertificateException;

    if-eqz v4, :cond_16

    move v1, v2

    .line 414
    .local v1, "sslFailure":Z
    :goto_f
    instance-of v0, p1, Ljava/net/ProtocolException;

    .line 415
    .local v0, "protocolFailure":Z
    if-nez v1, :cond_18

    if-nez v0, :cond_18

    :goto_15
    return v2

    .end local v0    # "protocolFailure":Z
    .end local v1    # "sslFailure":Z
    :cond_16
    move v1, v3

    .line 412
    goto :goto_f

    .restart local v0    # "protocolFailure":Z
    .restart local v1    # "sslFailure":Z
    :cond_18
    move v2, v3

    .line 415
    goto :goto_15
.end method

.method private newHttpEngine(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)Lcom/squareup/okhttp/internal/http/HttpEngine;
    .registers 12
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "requestHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p3, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p4, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 295
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/Policy;Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V

    .line 297
    :goto_1b
    return-object v0

    .line 296
    :cond_1c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 297
    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpsEngine;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/http/HttpsEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/Policy;Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V

    goto :goto_1b

    .line 299
    :cond_38
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private processResponseHeaders()Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/HttpEngine;->connection:Lcom/squareup/okhttp/Connection;

    invoke-virtual {v0}, Lcom/squareup/okhttp/Connection;->getRoute()Lcom/squareup/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    .line 437
    .local v4, "selectedProxy":Ljava/net/Proxy;
    :goto_12
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v9

    .line 438
    .local v9, "responseCode":I
    sparse-switch v9, :sswitch_data_124

    .line 488
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    :goto_1b
    return-object v0

    .line 434
    .end local v4    # "selectedProxy":Ljava/net/Proxy;
    .end local v9    # "responseCode":I
    :cond_1c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    goto :goto_12

    .line 440
    .restart local v4    # "selectedProxy":Ljava/net/Proxy;
    .restart local v9    # "responseCode":I
    :sswitch_23
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_34

    .line 441
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_34
    :sswitch_34
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getAuthenticator()Lcom/squareup/okhttp/OkAuthenticator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static/range {v0 .. v5}, Lcom/squareup/okhttp/internal/http/HttpAuthenticator;->processAuthHeader(Lcom/squareup/okhttp/OkAuthenticator;ILcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v6

    .line 448
    .local v6, "credentialsFound":Z
    if-eqz v6, :cond_55

    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1b

    :cond_55
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1b

    .line 455
    .end local v6    # "credentialsFound":Z
    :sswitch_58
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v0

    if-nez v0, :cond_61

    .line 456
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_1b

    .line 458
    :cond_61
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_87

    .line 459
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->redirectionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_87
    const/16 v0, 0x133

    if-ne v9, v0, :cond_a5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 464
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1b

    .line 466
    :cond_a5
    const-string/jumbo v0, "Location"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 467
    .local v7, "location":Ljava/lang/String;
    if-nez v7, :cond_b2

    .line 468
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1b

    .line 470
    :cond_b2
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 471
    .local v8, "previousUrl":Ljava/net/URL;
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v8, v7}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    .line 472
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dd

    .line 473
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1b

    .line 475
    :cond_dd
    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 476
    .local v12, "sameProtocol":Z
    if-nez v12, :cond_f9

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getFollowProtocolRedirects()Z

    move-result v0

    if-nez v0, :cond_f9

    .line 477
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1b

    .line 479
    :cond_f9
    invoke-virtual {v8}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 480
    .local v10, "sameHost":Z
    invoke-static {v8}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    if-ne v0, v1, :cond_11e

    const/4 v11, 0x1

    .line 481
    .local v11, "samePort":Z
    :goto_114
    if-eqz v10, :cond_120

    if-eqz v11, :cond_120

    if-eqz v12, :cond_120

    .line 482
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1b

    .line 480
    .end local v11    # "samePort":Z
    :cond_11e
    const/4 v11, 0x0

    goto :goto_114

    .line 484
    .restart local v11    # "samePort":Z
    :cond_120
    sget-object v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_1b

    .line 438
    :sswitch_data_124
    .sparse-switch
        0x12c -> :sswitch_58
        0x12d -> :sswitch_58
        0x12e -> :sswitch_58
        0x12f -> :sswitch_58
        0x133 -> :sswitch_58
        0x191 -> :sswitch_34
        0x197 -> :sswitch_23
    .end sparse-switch
.end method

.method private setTransports(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "transportsString"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    .line 578
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 579
    .local v4, "transportsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_10

    .line 580
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v5}, Lcom/squareup/okhttp/OkHttpClient;->getTransports()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 582
    :cond_10
    const-string/jumbo v5, ","

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1a
    if-ge v1, v2, :cond_24

    aget-object v3, v0, v1

    .line 583
    .local v3, "transport":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 585
    .end local v3    # "transport":Ljava/lang/String;
    :cond_24
    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v5, v4}, Lcom/squareup/okhttp/OkHttpClient;->setTransports(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;

    .line 586
    return-void
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_d

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_d
    if-nez p1, :cond_18

    .line 554
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_18
    if-nez p2, :cond_3d

    .line 562
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 571
    :goto_3c
    return-void

    .line 566
    :cond_3d
    const-string/jumbo v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 567
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->setTransports(Ljava/lang/String;Z)V

    goto :goto_3c

    .line 569
    :cond_4b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public final connect()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->initHttpEngine()V

    .line 93
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->execute(Z)Z

    move-result v0

    .line 94
    .local v0, "success":Z
    if-eqz v0, :cond_3

    .line 95
    return-void
.end method

.method public final disconnect()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    if-eqz v0, :cond_1b

    .line 106
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 107
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 109
    :cond_15
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->release(Z)V

    .line 111
    :cond_1b
    return-void
.end method

.method public final getChunkLength()I
    .registers 2

    .prologue
    .line 500
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->chunkLength:I

    return v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 120
    :try_start_1
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    .line 121
    .local v1, "response":Lcom/squareup/okhttp/internal/http/HttpEngine;
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseCode()I

    move-result v3

    const/16 v4, 0x190

    if-lt v3, v4, :cond_17

    .line 122
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_16} :catch_18

    move-result-object v2

    .line 126
    .end local v1    # "response":Lcom/squareup/okhttp/internal/http/HttpEngine;
    :cond_17
    :goto_17
    return-object v2

    .line 125
    :catch_18
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    goto :goto_17
.end method

.method public final getFixedContentLength()J
    .registers 3

    .prologue
    .line 495
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 139
    :goto_10
    return-object v1

    .line 138
    :catch_11
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    .line 152
    .local v1, "rawHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    if-nez p1, :cond_13

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v2

    .line 154
    .end local v1    # "rawHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :goto_12
    return-object v2

    .line 152
    .restart local v1    # "rawHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :cond_13
    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_18

    move-result-object v2

    goto :goto_12

    .line 153
    .end local v1    # "rawHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    :catch_18
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_12
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 161
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 163
    :goto_10
    return-object v1

    .line 162
    :catch_11
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    .line 172
    :goto_11
    return-object v1

    .line 171
    :catch_12
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .registers 1

    .prologue
    .line 289
    return-object p0
.end method

.method public getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v2, :cond_d

    .line 188
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "This protocol does not support input"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_d
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 197
    .local v0, "response":Lcom/squareup/okhttp/internal/http/HttpEngine;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_25

    .line 198
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 201
    :cond_25
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v1

    .line 202
    .local v1, "result":Ljava/io/InputStream;
    if-nez v1, :cond_49

    .line 203
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No response body exists; responseCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_49
    return-object v1
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connect()V

    .line 212
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 213
    .local v0, "out":Ljava/io/OutputStream;
    if-nez v0, :cond_27

    .line 214
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "method does not support a request body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_27
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 216
    new-instance v1, Ljava/net/ProtocolException;

    const-string/jumbo v2, "cannot write request body after response has been read"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_38
    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "hostName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    .line 226
    .local v1, "hostPort":I
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 227
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 228
    .local v2, "proxyAddress":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    .line 231
    .end local v2    # "proxyAddress":Ljava/net/InetSocketAddress;
    :cond_2a
    new-instance v3, Ljava/net/SocketPermission;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "connect, resolve"

    invoke-direct {v3, v4, v5}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lcom/squareup/okhttp/OkHttpClient;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_d

    .line 179
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_d
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    .line 236
    if-nez p1, :cond_4

    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public final getResponseCode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getResponse()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAllowFailedPostRetry(Z)V
    .registers 2
    .param p1, "allow"    # Z

    .prologue
    .line 545
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->allowFailedPostRetry:Z

    .line 546
    return-void
.end method

.method public setConnectTimeout(I)V
    .registers 6
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 245
    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .registers 4
    .param p1, "contentLength"    # I

    .prologue
    .line 590
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    .line 591
    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .registers 5
    .param p1, "contentLength"    # J

    .prologue
    .line 595
    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_d

    .line 596
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :cond_d
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->chunkLength:I

    if-lez v0, :cond_1a

    .line 598
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_1a
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_29

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_29
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->fixedContentLength:J

    .line 602
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    .line 603
    return-void
.end method

.method public setMethodReflect(Ljava/lang/String;)V
    .registers 2
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-static {p0, p1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->applyPatchMethodToHttpURLConnection(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 6
    .param p1, "timeoutMillis"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 255
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 521
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_d

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_d
    if-nez p1, :cond_18

    .line 525
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_18
    if-nez p2, :cond_3d

    .line 533
    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring header "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 542
    :goto_3c
    return-void

    .line 537
    :cond_3d
    const-string/jumbo v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->setTransports(Ljava/lang/String;Z)V

    goto :goto_3c

    .line 540
    :cond_4b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->rawRequestHeaders:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public final usingProxy()Z
    .registers 4

    .prologue
    .line 505
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lcom/squareup/okhttp/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    .line 506
    .local v0, "proxy":Ljava/net/Proxy;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method
