.class public Lcom/newrelic/agent/android/harvest/HttpTransactions;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "HttpTransactions.java"


# instance fields
.field private final httpTransactions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HttpTransaction;",
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

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpTransactions;->httpTransactions:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .registers 3
    .param p1, "httpTransaction"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 16
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpTransactions;->httpTransactions:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 17
    monitor-exit p0

    return-void

    .line 16
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 5

    .prologue
    .line 29
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 30
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HttpTransactions;->httpTransactions:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .line 31
    .local v2, "transaction":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_b

    .line 33
    .end local v2    # "transaction":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    :cond_1f
    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpTransactions;->httpTransactions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 25
    return-void
.end method

.method public count()I
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpTransactions;->httpTransactions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public getHttpTransactions()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HttpTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpTransactions;->httpTransactions:Ljava/util/Collection;

    return-object v0
.end method

.method public declared-synchronized remove(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .registers 3
    .param p1, "transaction"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 20
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HttpTransactions;->httpTransactions:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 21
    monitor-exit p0

    return-void

    .line 20
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HttpTransactions{httpTransactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HttpTransactions;->httpTransactions:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
