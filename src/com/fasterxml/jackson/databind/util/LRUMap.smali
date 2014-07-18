.class public Lcom/fasterxml/jackson/databind/util/LRUMap;
.super Ljava/lang/Object;
.source "LRUMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected final transient _map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field protected final transient _maxEntries:I


# direct methods
.method public constructor <init>(II)V
    .registers 6
    .param p1, "initialEntries"    # I
    .param p2, "maxEntries"    # I

    .prologue
    .line 28
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f4ccccd

    const/4 v2, 0x4

    invoke-direct {v0, p1, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    .line 32
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 49
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/LRUMap;, "Lcom/fasterxml/jackson/databind/util/LRUMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_19

    .line 37
    monitor-enter p0

    .line 38
    :try_start_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_maxEntries:I

    if-lt v0, v1, :cond_18

    .line 39
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->clear()V

    .line 41
    :cond_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_20

    .line 43
    :cond_19
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/LRUMap;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 41
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method
