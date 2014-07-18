.class public Lcom/android/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# direct methods
.method public static newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    return-object v0
.end method

.method public static newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stack"    # Lcom/android/volley/toolbox/HttpStack;

    .prologue
    .line 44
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "volley"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v0, "cacheDir":Ljava/io/File;
    if-nez p1, :cond_31

    .line 47
    new-instance p1, Lcom/android/volley/toolbox/OkHttpStack;

    .end local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    invoke-direct {p1}, Lcom/android/volley/toolbox/OkHttpStack;-><init>()V

    .restart local p1    # "stack":Lcom/android/volley/toolbox/HttpStack;
    move-object v6, p1

    .line 48
    check-cast v6, Lcom/android/volley/toolbox/OkHttpStack;

    invoke-virtual {v6}, Lcom/android/volley/toolbox/OkHttpStack;->getClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v1

    .line 52
    .local v1, "client":Lcom/squareup/okhttp/OkHttpClient;
    :try_start_1a
    const-string/jumbo v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 53
    .local v5, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_27
    .catch Ljava/security/GeneralSecurityException; {:try_start_1a .. :try_end_27} :catch_44

    .line 57
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 58
    invoke-static {v1}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    .line 61
    .end local v1    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .end local v5    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_31
    new-instance v3, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {v3, p1}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 63
    .local v3, "network":Lcom/android/volley/Network;
    new-instance v4, Lcom/android/volley/RequestQueue;

    new-instance v6, Lcom/android/volley/toolbox/DiskBasedCache;

    invoke-direct {v6, v0}, Lcom/android/volley/toolbox/DiskBasedCache;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6, v3}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;)V

    .line 64
    .local v4, "queue":Lcom/android/volley/RequestQueue;
    invoke-virtual {v4}, Lcom/android/volley/RequestQueue;->start()V

    .line 66
    return-object v4

    .line 54
    .end local v3    # "network":Lcom/android/volley/Network;
    .end local v4    # "queue":Lcom/android/volley/RequestQueue;
    .restart local v1    # "client":Lcom/squareup/okhttp/OkHttpClient;
    :catch_44
    move-exception v2

    .line 55
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
.end method
