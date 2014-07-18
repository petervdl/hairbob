.class Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;
.super Ljava/lang/Object;
.source "StreamCompleteListenerManager.java"


# instance fields
.field private streamComplete:Z

.field private streamCompleteListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamComplete:Z

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamCompleteListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private checkComplete()Z
    .registers 3

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->isComplete()Z

    move-result v0

    .line 49
    .local v0, "streamComplete":Z
    if-nez v0, :cond_a

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamComplete:Z

    .line 50
    :cond_a
    monitor-exit p0

    .line 51
    return v0

    .line 50
    .end local v0    # "streamComplete":Z
    :catchall_c
    move-exception v1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private getStreamCompleteListeners()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamCompleteListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 57
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamCompleteListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;>;"
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamCompleteListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 59
    monitor-exit v2

    .line 60
    return-object v0

    .line 59
    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;>;"
    :catchall_11
    move-exception v1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method


# virtual methods
.method public addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V
    .registers 4
    .param p1, "streamCompleteListener"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;

    .prologue
    .line 18
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamCompleteListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 19
    :try_start_3
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamCompleteListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 20
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public isComplete()Z
    .registers 2

    .prologue
    .line 12
    monitor-enter p0

    .line 13
    :try_start_1
    iget-boolean v0, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamComplete:Z

    monitor-exit p0

    return v0

    .line 14
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public notifyStreamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .registers 5
    .param p1, "ev"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->checkComplete()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 31
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->getStreamCompleteListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;

    .line 32
    .local v1, "listener":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;
    invoke-interface {v1, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;->streamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V

    goto :goto_e

    .line 35
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;
    :cond_1e
    return-void
.end method

.method public notifyStreamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .registers 5
    .param p1, "ev"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->checkComplete()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 39
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->getStreamCompleteListeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;

    .line 40
    .local v1, "listener":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;
    invoke-interface {v1, p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;->streamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V

    goto :goto_e

    .line 43
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;
    :cond_1e
    return-void
.end method

.method public removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V
    .registers 4
    .param p1, "streamCompleteListener"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;

    .prologue
    .line 24
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamCompleteListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 25
    :try_start_3
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerManager;->streamCompleteListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v1

    .line 27
    return-void

    .line 26
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
