.class final Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

.field private _currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

.field private _nextBucketIndex:I


# direct methods
.method public constructor <init>([Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;)V
    .registers 7
    .param p1, "buckets"    # [Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "i":I
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    array-length v3, v4

    .local v3, "len":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_a
    if-ge v2, v3, :cond_1b

    .line 383
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v0, v4, v2

    .line 384
    .local v0, "b":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
    if-eqz v0, :cond_19

    .line 385
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 389
    .end local v0    # "b":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
    :goto_16
    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    .line 390
    return-void

    .restart local v0    # "b":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
    :cond_19
    move v2, v1

    .line 388
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_a

    .end local v0    # "b":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
    :cond_1b
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_16
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .registers 6

    .prologue
    .line 400
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 401
    .local v1, "curr":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
    if-nez v1, :cond_a

    .line 402
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 405
    :cond_a
    iget-object v0, v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 406
    .local v0, "b":Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;
    :goto_c
    if-nez v0, :cond_20

    iget v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    array-length v3, v3

    if-ge v2, v3, :cond_20

    .line 407
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    iget v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    aget-object v0, v2, v3

    goto :goto_c

    .line 409
    :cond_20
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;

    .line 410
    iget-object v2, v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    return-object v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap$IteratorImpl;->next()Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 415
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
