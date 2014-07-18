.class public Lcom/newrelic/agent/android/harvest/HttpErrors;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "HttpErrors.java"


# instance fields
.field private final httpErrors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HttpError;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V
    .registers 6
    .param p1, "httpError"    # Lcom/newrelic/agent/android/harvest/HttpError;

    .prologue
    .line 23
    monitor-enter p1

    .line 24
    :try_start_1
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 25
    .local v0, "error":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpError;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpError;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpError;->incrementCount()V

    .line 27
    monitor-exit p1

    .line 33
    .end local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    :goto_25
    return-void

    .line 31
    :cond_26
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit p1

    goto :goto_25

    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_2d
    move-exception v2

    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 5

    .prologue
    .line 45
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 46
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 47
    .local v1, "httpError":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpError;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_b

    .line 49
    .end local v1    # "httpError":Lcom/newrelic/agent/android/harvest/HttpError;
    :cond_1f
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 41
    return-void
.end method

.method public count()I
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getHttpErrors()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HttpError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    return-object v0
.end method

.method public declared-synchronized removeHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V
    .registers 3
    .param p1, "error"    # Lcom/newrelic/agent/android/harvest/HttpError;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpErrors;->httpErrors:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 37
    monitor-exit p0

    return-void

    .line 36
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
