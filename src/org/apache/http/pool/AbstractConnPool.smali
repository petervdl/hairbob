.class public abstract Lorg/apache/http/pool/AbstractConnPool;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lorg/apache/http/pool/ConnPool;
.implements Lorg/apache/http/pool/ConnPoolControl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "E:",
        "Lorg/apache/http/pool/PoolEntry",
        "<TT;TC;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/http/pool/ConnPool",
        "<TT;TE;>;",
        "Lorg/apache/http/pool/ConnPoolControl",
        "<TT;>;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final available:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final connFactory:Lorg/apache/http/pool/ConnFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/pool/ConnFactory",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field private volatile defaultMaxPerRoute:I

.field private volatile isShutDown:Z

.field private final leased:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final maxPerRoute:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile maxTotal:I

.field private final pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/pool/PoolEntryFuture",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final routeToPool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Lorg/apache/http/pool/RouteSpecificPool",
            "<TT;TC;TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/http/pool/ConnFactory;II)V
    .registers 5
    .param p2, "defaultMaxPerRoute"    # I
    .param p3, "maxTotal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/ConnFactory",
            "<TT;TC;>;II)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "connFactory":Lorg/apache/http/pool/ConnFactory;, "Lorg/apache/http/pool/ConnFactory<TT;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-string/jumbo v0, "Connection factory"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/ConnFactory;

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->connFactory:Lorg/apache/http/pool/ConnFactory;

    .line 85
    const-string/jumbo v0, "Max per route value"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/pool/AbstractConnPool;->defaultMaxPerRoute:I

    .line 86
    const-string/jumbo v0, "Max total value"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/http/pool/AbstractConnPool;->maxTotal:I

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/pool/PoolEntryFuture;)Lorg/apache/http/pool/PoolEntry;
    .registers 8
    .param p0, "x0"    # Lorg/apache/http/pool/AbstractConnPool;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "x5"    # Lorg/apache/http/pool/PoolEntryFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct/range {p0 .. p6}, Lorg/apache/http/pool/AbstractConnPool;->getPoolEntryBlocking(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/pool/PoolEntryFuture;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    return-object v0
.end method

.method private getMax(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->maxPerRoute:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 332
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    .line 333
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 335
    :goto_e
    return v1

    :cond_f
    iget v1, p0, Lorg/apache/http/pool/AbstractConnPool;->defaultMaxPerRoute:I

    goto :goto_e
.end method

.method private getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/http/pool/RouteSpecificPool",
            "<TT;TC;TE;>;"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/RouteSpecificPool;

    .line 145
    .local v0, "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    if-nez v0, :cond_14

    .line 146
    new-instance v0, Lorg/apache/http/pool/AbstractConnPool$1;

    .end local v0    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-direct {v0, p0, p1, p1}, Lorg/apache/http/pool/AbstractConnPool$1;-><init>(Lorg/apache/http/pool/AbstractConnPool;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    .restart local v0    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->routeToPool:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_14
    return-object v0
.end method

.method private getPoolEntryBlocking(Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Lorg/apache/http/pool/PoolEntryFuture;)Lorg/apache/http/pool/PoolEntry;
    .registers 28
    .param p2, "state"    # Ljava/lang/Object;
    .param p3, "timeout"    # J
    .param p5, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lorg/apache/http/pool/PoolEntryFuture",
            "<TE;>;)TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    .local p6, "future":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TE;>;"
    const/4 v4, 0x0

    .line 212
    .local v4, "deadline":Ljava/util/Date;
    const-wide/16 v17, 0x0

    cmp-long v17, p3, v17

    if-lez v17, :cond_1c

    .line 213
    new-instance v4, Ljava/util/Date;

    .end local v4    # "deadline":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p5

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v19

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 217
    .restart local v4    # "deadline":Ljava/util/Date;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 219
    :try_start_25
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;

    move-result-object v13

    .line 220
    .local v13, "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    const/4 v5, 0x0

    .line 221
    .local v5, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_2a
    if-nez v5, :cond_18f

    .line 222
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/http/pool/AbstractConnPool;->isShutDown:Z

    move/from16 v17, v0

    if-nez v17, :cond_67

    const/16 v17, 0x1

    :goto_36
    const-string/jumbo v18, "Connection pool shut down"

    invoke-static/range {v17 .. v18}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 224
    :goto_3c
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lorg/apache/http/pool/RouteSpecificPool;->getFree(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v5

    .line 225
    if-nez v5, :cond_6a

    .line 236
    :cond_44
    if-eqz v5, :cond_9d

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catchall {:try_start_25 .. :try_end_5c} :catchall_92

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v5

    .end local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .local v6, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :goto_66
    return-object v6

    .line 222
    .end local v6    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .restart local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_67
    const/16 v17, 0x0

    goto :goto_36

    .line 228
    :cond_6a
    :try_start_6a
    invoke-virtual {v5}, Lorg/apache/http/pool/PoolEntry;->isClosed()Z

    move-result v17

    if-nez v17, :cond_7c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v5, v0, v1}, Lorg/apache/http/pool/PoolEntry;->isExpired(J)Z

    move-result v17

    if-eqz v17, :cond_44

    .line 229
    :cond_7c
    invoke-virtual {v5}, Lorg/apache/http/pool/PoolEntry;->close()V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 231
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v5, v0}, Lorg/apache/http/pool/RouteSpecificPool;->free(Lorg/apache/http/pool/PoolEntry;Z)V
    :try_end_91
    .catchall {:try_start_6a .. :try_end_91} :catchall_92

    goto :goto_3c

    .line 299
    .end local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v13    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :catchall_92
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v17

    .line 243
    .restart local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .restart local v13    # "pool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_9d
    :try_start_9d
    invoke-direct/range {p0 .. p1}, Lorg/apache/http/pool/AbstractConnPool;->getMax(Ljava/lang/Object;)I

    move-result v11

    .line 245
    .local v11, "maxPerRoute":I
    const/16 v17, 0x0

    invoke-virtual {v13}, Lorg/apache/http/pool/RouteSpecificPool;->getAllocatedCount()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    sub-int v18, v18, v11

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 246
    .local v7, "excess":I
    if-lez v7, :cond_ba

    .line 247
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_b2
    if-ge v9, v7, :cond_ba

    .line 248
    invoke-virtual {v13}, Lorg/apache/http/pool/RouteSpecificPool;->getLastUsed()Lorg/apache/http/pool/PoolEntry;

    move-result-object v10

    .line 249
    .local v10, "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    if-nez v10, :cond_13f

    .line 258
    .end local v9    # "i":I
    .end local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_ba
    invoke-virtual {v13}, Lorg/apache/http/pool/RouteSpecificPool;->getAllocatedCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v11, :cond_154

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->size()I

    move-result v16

    .line 260
    .local v16, "totalUsed":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/http/pool/AbstractConnPool;->maxTotal:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 261
    .local v8, "freeCapacity":I
    if-lez v8, :cond_154

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v15

    .line 263
    .local v15, "totalAvailable":I
    add-int/lit8 v17, v8, -0x1

    move/from16 v0, v17

    if-le v15, v0, :cond_116

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_116

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/pool/PoolEntry;

    .line 266
    .restart local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    invoke-virtual {v10}, Lorg/apache/http/pool/PoolEntry;->close()V

    .line 267
    invoke-virtual {v10}, Lorg/apache/http/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/apache/http/pool/AbstractConnPool;->getPool(Ljava/lang/Object;)Lorg/apache/http/pool/RouteSpecificPool;

    move-result-object v12

    .line 268
    .local v12, "otherpool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    invoke-virtual {v12, v10}, Lorg/apache/http/pool/RouteSpecificPool;->remove(Lorg/apache/http/pool/PoolEntry;)Z

    .line 271
    .end local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v12    # "otherpool":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    :cond_116
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->connFactory:Lorg/apache/http/pool/ConnFactory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/http/pool/ConnFactory;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 272
    .local v3, "conn":Ljava/lang/Object;, "TC;"
    invoke-virtual {v13, v3}, Lorg/apache/http/pool/RouteSpecificPool;->add(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v5

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_133
    .catchall {:try_start_9d .. :try_end_133} :catchall_92

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->lock:Ljava/util/concurrent/locks/Lock;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v6, v5

    .end local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .restart local v6    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    goto/16 :goto_66

    .line 252
    .end local v3    # "conn":Ljava/lang/Object;, "TC;"
    .end local v6    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v8    # "freeCapacity":I
    .end local v15    # "totalAvailable":I
    .end local v16    # "totalUsed":I
    .restart local v5    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .restart local v9    # "i":I
    .restart local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_13f
    :try_start_13f
    invoke-virtual {v10}, Lorg/apache/http/pool/PoolEntry;->close()V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 254
    invoke-virtual {v13, v10}, Lorg/apache/http/pool/RouteSpecificPool;->remove(Lorg/apache/http/pool/PoolEntry;)Z
    :try_end_150
    .catchall {:try_start_13f .. :try_end_150} :catchall_92

    .line 247
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_b2

    .line 278
    .end local v9    # "i":I
    .end local v10    # "lastUsed":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_154
    const/4 v14, 0x0

    .line 280
    .local v14, "success":Z
    :try_start_155
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lorg/apache/http/pool/RouteSpecificPool;->queue(Lorg/apache/http/pool/PoolEntryFuture;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 282
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lorg/apache/http/pool/PoolEntryFuture;->await(Ljava/util/Date;)Z
    :try_end_16c
    .catchall {:try_start_155 .. :try_end_16c} :catchall_198

    move-result v14

    .line 288
    :try_start_16d
    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lorg/apache/http/pool/RouteSpecificPool;->unqueue(Lorg/apache/http/pool/PoolEntryFuture;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 292
    if-nez v14, :cond_2a

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-gtz v17, :cond_2a

    .line 297
    .end local v7    # "excess":I
    .end local v11    # "maxPerRoute":I
    .end local v14    # "success":Z
    :cond_18f
    new-instance v17, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v18, "Timeout waiting for connection"

    invoke-direct/range {v17 .. v18}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 288
    .restart local v7    # "excess":I
    .restart local v11    # "maxPerRoute":I
    .restart local v14    # "success":Z
    :catchall_198
    move-exception v17

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Lorg/apache/http/pool/RouteSpecificPool;->unqueue(Lorg/apache/http/pool/PoolEntryFuture;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    throw v17
    :try_end_1ac
    .catchall {:try_start_16d .. :try_end_1ac} :catchall_92
.end method


# virtual methods
.method protected abstract createEntry(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TC;)TE;"
        }
    .end annotation
.end method

.method protected onLease(Lorg/apache/http/pool/PoolEntry;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    .local p1, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 522
    .local p0, "this":Lorg/apache/http/pool/AbstractConnPool;, "Lorg/apache/http/pool/AbstractConnPool<TT;TC;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->leased:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    const-string/jumbo v1, "][available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    const-string/jumbo v1, "][pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v1, p0, Lorg/apache/http/pool/AbstractConnPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
