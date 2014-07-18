.class public Lcom/android/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/android/volley/Cache;

.field private final mDelivery:Lcom/android/volley/ResponseDelivery;

.field private final mNetwork:Lcom/android/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/android/volley/Network;Lcom/android/volley/Cache;Lcom/android/volley/ResponseDelivery;)V
    .registers 6
    .param p2, "network"    # Lcom/android/volley/Network;
    .param p3, "cache"    # Lcom/android/volley/Cache;
    .param p4, "delivery"    # Lcom/android/volley/ResponseDelivery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/volley/Request",
            "<*>;>;",
            "Lcom/android/volley/Network;",
            "Lcom/android/volley/Cache;",
            "Lcom/android/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/android/volley/Request<*>;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 60
    iput-object p1, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 61
    iput-object p2, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    .line 62
    iput-object p3, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    .line 63
    iput-object p4, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    .line 64
    return-void
.end method

.method private addTrafficStatsTag(Lcom/android/volley/Request;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_d

    .line 79
    invoke-virtual {p1}, Lcom/android/volley/Request;->getTrafficStatsTag()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 81
    :cond_d
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V
    .registers 4
    .param p2, "error"    # Lcom/android/volley/VolleyError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Request",
            "<*>;",
            "Lcom/android/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    invoke-virtual {p1, p2}, Lcom/android/volley/Request;->parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    move-result-object p2

    .line 160
    iget-object v0, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    .line 161
    return-void
.end method


# virtual methods
.method public quit()V
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    .line 72
    invoke-virtual {p0}, Lcom/android/volley/NetworkDispatcher;->interrupt()V

    .line 73
    return-void
.end method

.method public run()V
    .registers 10

    .prologue
    .line 85
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    :cond_5
    :goto_5
    :try_start_5
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/Request;
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_d} :catch_33

    .line 100
    .local v2, "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :try_start_d
    const-string/jumbo v5, "network-queue-take"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lcom/android/volley/Request;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 105
    const-string/jumbo v5, "network-discard-cancelled"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_1f
    .catch Lcom/android/volley/VolleyError; {:try_start_d .. :try_end_1f} :catch_20
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_59

    goto :goto_5

    .line 143
    :catch_20
    move-exception v4

    .line 144
    .local v4, "volleyError":Lcom/android/volley/VolleyError;
    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-virtual {v2}, Lcom/android/volley/Request;->getReturnStrategy()Lcom/android/volley/Request$ReturnStrategy;

    move-result-object v5

    sget-object v6, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    if-eq v5, v6, :cond_5

    .line 147
    :cond_2f
    invoke-direct {p0, v2, v4}, Lcom/android/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_5

    .line 91
    .end local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    .end local v4    # "volleyError":Lcom/android/volley/VolleyError;
    :catch_33
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-boolean v5, p0, Lcom/android/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v5, :cond_5

    .line 94
    return-void

    .line 109
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Lcom/android/volley/Request;, "Lcom/android/volley/Request<*>;"
    :cond_39
    :try_start_39
    invoke-direct {p0, v2}, Lcom/android/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/android/volley/Request;)V

    .line 112
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mNetwork:Lcom/android/volley/Network;

    invoke-interface {v5, v2}, Lcom/android/volley/Network;->performRequest(Lcom/android/volley/Request;)Lcom/android/volley/NetworkResponse;

    move-result-object v1

    .line 113
    .local v1, "networkResponse":Lcom/android/volley/NetworkResponse;
    const-string/jumbo v5, "network-http-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 117
    iget-boolean v5, v1, Lcom/android/volley/NetworkResponse;->notModified:Z

    if-eqz v5, :cond_89

    .line 118
    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 119
    const-string/jumbo v5, "not-modified-already-delivered"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
    :try_end_58
    .catch Lcom/android/volley/VolleyError; {:try_start_39 .. :try_end_58} :catch_20
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_58} :catch_59

    goto :goto_5

    .line 148
    .end local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :catch_59
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "Unhandled exception %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v5, v6}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-virtual {v2}, Lcom/android/volley/Request;->getReturnStrategy()Lcom/android/volley/Request$ReturnStrategy;

    move-result-object v5

    sget-object v6, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    if-eq v5, v6, :cond_5

    .line 153
    :cond_78
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    new-instance v6, Lcom/android/volley/VolleyError;

    invoke-direct {v6, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v5, v2, v6}, Lcom/android/volley/ResponseDelivery;->postError(Lcom/android/volley/Request;Lcom/android/volley/VolleyError;)V

    goto :goto_5

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "networkResponse":Lcom/android/volley/NetworkResponse;
    :cond_83
    :try_start_83
    const-string/jumbo v5, "not-modified-but-will-deliver"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 127
    :cond_89
    invoke-virtual {v2, v1}, Lcom/android/volley/Request;->parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;

    move-result-object v3

    .line 128
    .local v3, "response":Lcom/android/volley/Response;, "Lcom/android/volley/Response<*>;"
    const-string/jumbo v5, "network-parse-complete"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v2}, Lcom/android/volley/Request;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_ae

    iget-object v5, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    if-eqz v5, :cond_ae

    .line 133
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mCache:Lcom/android/volley/Cache;

    invoke-virtual {v2}, Lcom/android/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/volley/Response;->cacheEntry:Lcom/android/volley/Cache$Entry;

    invoke-interface {v5, v6, v7}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    .line 134
    const-string/jumbo v5, "network-cache-written"

    invoke-virtual {v2, v5}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 138
    :cond_ae
    invoke-virtual {v2}, Lcom/android/volley/Request;->hasHadResponseDelivered()Z

    move-result v5

    if-eqz v5, :cond_bf

    invoke-virtual {v2}, Lcom/android/volley/Request;->getReturnStrategy()Lcom/android/volley/Request$ReturnStrategy;

    move-result-object v5

    sget-object v6, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    if-ne v5, v6, :cond_bf

    .line 139
    invoke-virtual {v2}, Lcom/android/volley/Request;->cancel()V

    .line 141
    :cond_bf
    invoke-virtual {v2}, Lcom/android/volley/Request;->markDelivered()V

    .line 142
    iget-object v5, p0, Lcom/android/volley/NetworkDispatcher;->mDelivery:Lcom/android/volley/ResponseDelivery;

    invoke-interface {v5, v2, v3}, Lcom/android/volley/ResponseDelivery;->postResponse(Lcom/android/volley/Request;Lcom/android/volley/Response;)V
    :try_end_c7
    .catch Lcom/android/volley/VolleyError; {:try_start_83 .. :try_end_c7} :catch_20
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_c7} :catch_59

    goto/16 :goto_5
.end method
