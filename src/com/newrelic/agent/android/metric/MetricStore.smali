.class public Lcom/newrelic/agent/android/metric/MetricStore;
.super Ljava/lang/Object;
.source "MetricStore.java"


# instance fields
.field private final metricStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method public add(Lcom/newrelic/agent/android/metric/Metric;)V
    .registers 6
    .param p1, "metric"    # Lcom/newrelic/agent/android/metric/Metric;

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getStringScope()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "scope":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 25
    iget-object v2, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_1a
    iget-object v2, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 29
    iget-object v2, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/metric/Metric;

    invoke-virtual {v2, p1}, Lcom/newrelic/agent/android/metric/Metric;->aggregate(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 33
    :goto_39
    return-void

    .line 31
    :cond_3a
    iget-object v2, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/newrelic/agent/android/metric/MetricStore;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "scope"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    if-nez p2, :cond_7

    const-string/jumbo p2, ""

    .end local p2    # "scope":Ljava/lang/String;
    :cond_7
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/metric/Metric;
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_13} :catch_14

    .line 43
    :goto_13
    return-object v1

    .line 42
    :catch_14
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public getAll()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v4, "metrics":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/metric/Metric;>;"
    iget-object v5, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 52
    .local v3, "metricEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 56
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "metricEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;"
    :cond_3d
    return-object v4
.end method

.method public getAllByScope(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, "metrics":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/metric/Metric;>;"
    :try_start_5
    iget-object v3, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 64
    .local v1, "metricEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_28} :catch_29

    goto :goto_15

    .line 66
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metricEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;"
    :catch_29
    move-exception v3

    .line 70
    :cond_2a
    return-object v2
.end method

.method public getAllUnscoped()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/metric/MetricStore;->getAllByScope(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Lcom/newrelic/agent/android/metric/Metric;)V
    .registers 5
    .param p1, "metric"    # Lcom/newrelic/agent/android/metric/Metric;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getStringScope()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "scope":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 88
    :cond_10
    :goto_10
    return-void

    .line 84
    :cond_11
    iget-object v2, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 87
    iget-object v2, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method public removeAll(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "metrics":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/metric/Metric;>;"
    iget-object v3, p0, Lcom/newrelic/agent/android/metric/MetricStore;->metricStore:Ljava/util/Map;

    monitor-enter v3

    .line 92
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/metric/Metric;

    .line 93
    .local v1, "metric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/metric/MetricStore;->remove(Lcom/newrelic/agent/android/metric/Metric;)V

    goto :goto_7

    .line 95
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1a
    :try_start_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_17

    .line 96
    return-void
.end method

.method public removeAllWithScope(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "scope"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/metric/MetricStore;->getAllByScope(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "metrics":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/metric/Metric;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 101
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/metric/MetricStore;->removeAll(Ljava/util/List;)V

    .line 103
    :cond_d
    return-object v0
.end method
