.class public final Lcom/squareup/okhttp/internal/http/HttpsEngine;
.super Lcom/squareup/okhttp/internal/http/HttpEngine;
.source "HttpsEngine.java"


# instance fields
.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/Policy;Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V
    .registers 8
    .param p1, "client"    # Lcom/squareup/okhttp/OkHttpClient;
    .param p2, "policy"    # Lcom/squareup/okhttp/internal/http/Policy;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "requestHeaders"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .param p5, "connection"    # Lcom/squareup/okhttp/Connection;
    .param p6, "requestBody"    # Lcom/squareup/okhttp/internal/http/RetryableOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/squareup/okhttp/internal/http/HttpEngine;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/http/Policy;Ljava/lang/String;Lcom/squareup/okhttp/internal/http/RawHeaders;Lcom/squareup/okhttp/Connection;Lcom/squareup/okhttp/internal/http/RetryableOutputStream;)V

    .line 41
    if-eqz p5, :cond_e

    invoke-virtual {p5}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    :goto_b
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 42
    return-void

    .line 41
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .registers 3
    .param p1, "cacheResponse"    # Ljava/net/CacheResponse;

    .prologue
    .line 49
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected connected(Lcom/squareup/okhttp/Connection;)V
    .registers 3
    .param p1, "connection"    # Lcom/squareup/okhttp/Connection;

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/squareup/okhttp/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 46
    return-void
.end method

.method public getSslSocket()Ljavax/net/ssl/SSLSocket;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method protected getTunnelConfig()Lcom/squareup/okhttp/TunnelRequest;
    .registers 7

    .prologue
    .line 62
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpsEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "userAgent":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 64
    invoke-static {}, Lcom/squareup/okhttp/internal/http/HttpsEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_c
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpsEngine;->policy:Lcom/squareup/okhttp/internal/http/Policy;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 68
    .local v0, "url":Ljava/net/URL;
    new-instance v2, Lcom/squareup/okhttp/TunnelRequest;

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/HttpsEngine;->requestHeaders:Lcom/squareup/okhttp/internal/http/RequestHeaders;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/squareup/okhttp/TunnelRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method protected includeAuthorityInRequestLine()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
