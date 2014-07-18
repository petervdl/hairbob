.class public Lcom/newrelic/agent/android/stats/StatsEngine;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "StatsEngine.java"


# static fields
.field public static final INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;


# instance fields
.field public enabled:Z

.field private statsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-direct {v0}, Lcom/newrelic/agent/android/stats/StatsEngine;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->statsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    return-void
.end method

.method public static declared-synchronized disable()V
    .registers 3

    .prologue
    .line 111
    const-class v1, Lcom/newrelic/agent/android/stats/StatsEngine;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 112
    monitor-exit v1

    return-void

    .line 111
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized enable()V
    .registers 3

    .prologue
    .line 118
    const-class v1, Lcom/newrelic/agent/android/stats/StatsEngine;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 119
    monitor-exit v1

    return-void

    .line 118
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static get()Lcom/newrelic/agent/android/stats/StatsEngine;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    return-object v0
.end method

.method private getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/metric/Metric;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->statsMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->statsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/metric/Metric;

    .line 128
    .local v0, "m":Lcom/newrelic/agent/android/metric/Metric;
    if-nez v0, :cond_18

    .line 129
    new-instance v0, Lcom/newrelic/agent/android/metric/Metric;

    .end local v0    # "m":Lcom/newrelic/agent/android/metric/Metric;
    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;)V

    .line 131
    .restart local v0    # "m":Lcom/newrelic/agent/android/metric/Metric;
    iget-boolean v1, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->enabled:Z

    if-eqz v1, :cond_18

    .line 132
    iget-object v1, p0, Lcom/newrelic/agent/android/stats/StatsEngine;->statsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_18
    return-object v0
.end method

.method public static populateMetrics()V
    .registers 4

    .prologue
    .line 86
    sget-object v3, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-direct {v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 87
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/metric/Metric;

    .line 88
    .local v2, "metric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-static {v2}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    goto :goto_e

    .line 90
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;"
    .end local v2    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    :cond_24
    return-void
.end method

.method public static reset()V
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/newrelic/agent/android/stats/StatsEngine;->INSTANCE:Lcom/newrelic/agent/android/stats/StatsEngine;

    invoke-direct {v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->getStatsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 104
    return-void
.end method


# virtual methods
.method public inc(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object v0

    .line 38
    .local v0, "m":Lcom/newrelic/agent/android/metric/Metric;
    monitor-enter v0

    .line 39
    :try_start_5
    invoke-virtual {v0}, Lcom/newrelic/agent/android/metric/Metric;->increment()V

    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 40
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public inc(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # J

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object v0

    .line 52
    .local v0, "m":Lcom/newrelic/agent/android/metric/Metric;
    monitor-enter v0

    .line 53
    :try_start_5
    invoke-virtual {v0, p2, p3}, Lcom/newrelic/agent/android/metric/Metric;->increment(J)V

    .line 54
    monitor-exit v0

    .line 55
    return-void

    .line 54
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public onHarvest()V
    .registers 1

    .prologue
    .line 94
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->populateMetrics()V

    .line 95
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->reset()V

    .line 96
    return-void
.end method

.method public sample(Ljava/lang/String;F)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/stats/StatsEngine;->lazyGet(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object v0

    .line 66
    .local v0, "m":Lcom/newrelic/agent/android/metric/Metric;
    monitor-enter v0

    .line 68
    float-to-double v1, p2

    :try_start_6
    invoke-virtual {v0, v1, v2}, Lcom/newrelic/agent/android/metric/Metric;->sample(D)V

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public sampleTimeMs(Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 79
    long-to-float v0, p2

    const/high16 v1, 0x447a0000

    div-float/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/newrelic/agent/android/stats/StatsEngine;->sample(Ljava/lang/String;F)V

    .line 80
    return-void
.end method
