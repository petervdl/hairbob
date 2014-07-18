.class public Landroid/support/v4/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 6
    .param p1, "maxSize"    # I

    .prologue
    .line 47
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-gtz p1, :cond_e

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_e
    iput p1, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    .line 52
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 53
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 234
    .local v0, "result":I
    if-gez v0, :cond_2b

    .line 235
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :cond_2b
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .registers 2

    .prologue
    .line 295
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final evictAll()V
    .registers 2

    .prologue
    .line 255
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 256
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .registers 2

    .prologue
    .line 309
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_b

    .line 63
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_b
    monitor-enter p0

    .line 68
    :try_start_c
    iget-object v2, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 69
    .local v1, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1d

    .line 70
    iget v2, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    .line 71
    monitor-exit p0

    move-object v0, v1

    .line 105
    :goto_1c
    return-object v0

    .line 73
    :cond_1d
    iget v2, p0, Landroid/support/v4/util/LruCache;->missCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v4/util/LruCache;->missCount:I

    .line 74
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_2c

    .line 83
    invoke-virtual {p0, p1}, Landroid/support/v4/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2f

    .line 85
    const/4 v0, 0x0

    goto :goto_1c

    .line 74
    .end local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_2c
    move-exception v2

    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v2

    .line 88
    .restart local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .restart local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2f
    monitor-enter p0

    .line 89
    :try_start_30
    iget v2, p0, Landroid/support/v4/util/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v4/util/LruCache;->createCount:I

    .line 90
    iget-object v2, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_4c

    .line 94
    iget-object v2, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :goto_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_56

    .line 100
    if-eqz v1, :cond_59

    .line 101
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 102
    goto :goto_1c

    .line 96
    :cond_4c
    :try_start_4c
    iget v2, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/util/LruCache;->size:I

    goto :goto_43

    .line 98
    :catchall_56
    move-exception v2

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_56

    throw v2

    .line 104
    :cond_59
    iget v2, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    invoke-virtual {p0, v2}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    goto :goto_1c
.end method

.method public final declared-synchronized hitCount()I
    .registers 2

    .prologue
    .line 280
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .registers 2

    .prologue
    .line 273
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .registers 2

    .prologue
    .line 288
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_4

    if-nez p2, :cond_d

    .line 117
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_d
    monitor-enter p0

    .line 122
    :try_start_e
    iget v1, p0, Landroid/support/v4/util/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/util/LruCache;->putCount:I

    .line 123
    iget v1, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/LruCache;->size:I

    .line 124
    iget-object v1, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2e

    .line 126
    iget v1, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/LruCache;->size:I

    .line 128
    :cond_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_e .. :try_end_2f} :catchall_3b

    .line 130
    if-eqz v0, :cond_35

    .line 131
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :cond_35
    iget v1, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    invoke-virtual {p0, v1}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    .line 135
    return-object v0

    .line 128
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public final declared-synchronized putCount()I
    .registers 2

    .prologue
    .line 302
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p1, :cond_b

    .line 178
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "key == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_b
    monitor-enter p0

    .line 183
    :try_start_c
    iget-object v1, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1d

    .line 185
    iget v1, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/support/v4/util/LruCache;->size:I

    .line 187
    :cond_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_26

    .line 189
    if-eqz v0, :cond_25

    .line 190
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    :cond_25
    return-object v0

    .line 187
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final declared-synchronized size()I
    .registers 2

    .prologue
    .line 264
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/support/v4/util/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .registers 7

    .prologue
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    const/4 v1, 0x0

    .line 321
    monitor-enter p0

    :try_start_2
    iget v2, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    iget v3, p0, Landroid/support/v4/util/LruCache;->missCount:I

    add-int v0, v2, v3

    .line 322
    .local v0, "accesses":I
    if-eqz v0, :cond_10

    iget v2, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    mul-int/lit8 v2, v2, 0x64

    div-int v1, v2, v0

    .line 323
    .local v1, "hitPercent":I
    :cond_10
    const-string/jumbo v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/support/v4/util/LruCache;->maxSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Landroid/support/v4/util/LruCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Landroid/support/v4/util/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_2 .. :try_end_3b} :catchall_3e

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 321
    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_3e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public trimToSize(I)V
    .registers 8
    .param p1, "maxSize"    # I

    .prologue
    .line 149
    .local p0, "this":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 150
    :try_start_1
    iget v3, p0, Landroid/support/v4/util/LruCache;->size:I

    if-ltz v3, :cond_11

    iget-object v3, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, p0, Landroid/support/v4/util/LruCache;->size:I

    if-eqz v3, :cond_36

    .line 151
    :cond_11
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :catchall_33
    move-exception v3

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v3

    .line 155
    :cond_36
    :try_start_36
    iget v3, p0, Landroid/support/v4/util/LruCache;->size:I

    if-le v3, p1, :cond_42

    iget-object v3, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 156
    :cond_42
    monitor-exit p0

    .line 169
    return-void

    .line 159
    :cond_44
    iget-object v3, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 162
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Landroid/support/v4/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget v3, p0, Landroid/support/v4/util/LruCache;->size:I

    invoke-direct {p0, v0, v2}, Landroid/support/v4/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/support/v4/util/LruCache;->size:I

    .line 164
    iget v3, p0, Landroid/support/v4/util/LruCache;->evictionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/v4/util/LruCache;->evictionCount:I

    .line 165
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_36 .. :try_end_71} :catchall_33

    .line 167
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v2, v4}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
