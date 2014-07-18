.class public Lcom/newrelic/agent/android/harvest/ActivityTraces;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "ActivityTraces.java"


# instance fields
.field private final activityTraces:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/ActivityTrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/ActivityTraces;->activityTraces:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .registers 3
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 28
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ActivityTraces;->activityTraces:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 29
    monitor-exit p0

    return-void

    .line 28
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 5

    .prologue
    .line 18
    new-instance v1, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 20
    .local v1, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/ActivityTraces;->activityTraces:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 21
    .local v0, "activityTrace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_b

    .line 24
    .end local v0    # "activityTrace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :cond_1f
    return-object v1
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ActivityTraces;->activityTraces:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 37
    return-void
.end method

.method public count()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ActivityTraces;->activityTraces:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getActivityTraces()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/ActivityTrace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ActivityTraces;->activityTraces:Ljava/util/Collection;

    return-object v0
.end method

.method public declared-synchronized remove(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .registers 3
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 32
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ActivityTraces;->activityTraces:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 33
    monitor-exit p0

    return-void

    .line 32
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
