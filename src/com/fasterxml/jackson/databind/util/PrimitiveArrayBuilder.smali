.class public abstract Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;
.super Ljava/lang/Object;
.source "PrimitiveArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected _bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected _bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected _bufferedEntryCount:I

.field protected _freeBuffer:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract _constructArray(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method protected _reset()V
    .registers 2

    .prologue
    .line 120
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    if-eqz v0, :cond_c

    .line 121
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->getData()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    .line 124
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    .line 126
    return-void
.end method

.method public final appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6
    .param p2, "fullChunkLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder<TT;>;"
    .local p1, "fullChunk":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;-><init>(Ljava/lang/Object;I)V

    .line 66
    .local v0, "next":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<TT;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    if-nez v2, :cond_1d

    .line 67
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    .line 72
    :goto_d
    iget v2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    .line 73
    move v1, p2

    .line 75
    .local v1, "nextLen":I
    const/16 v2, 0x4000

    if-ge v1, v2, :cond_25

    .line 76
    add-int/2addr v1, v1

    .line 80
    :goto_18
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 69
    .end local v1    # "nextLen":I
    :cond_1d
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->linkNext(Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;)V

    .line 70
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferTail:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    goto :goto_d

    .line 78
    .restart local v1    # "nextLen":I
    :cond_25
    shr-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    goto :goto_18
.end method

.method public completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 10
    .param p2, "lastChunkEntries"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder<TT;>;"
    .local p1, "lastChunk":Ljava/lang/Object;, "TT;"
    iget v4, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferedEntryCount:I

    add-int v3, p2, v4

    .line 86
    .local v3, "totalSize":I
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v2

    .line 88
    .local v2, "resultArray":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    .line 90
    .local v1, "ptr":I
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_bufferHead:Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    .local v0, "n":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node<TT;>;"
    :goto_b
    if-eqz v0, :cond_16

    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->copyData(Ljava/lang/Object;I)I

    move-result v1

    .line 90
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;->next()Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder$Node;

    move-result-object v0

    goto :goto_b

    .line 93
    :cond_16
    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    add-int/2addr v1, p2

    .line 97
    if-eq v1, v3, :cond_42

    .line 98
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Should have gotten "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " entries, got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_42
    return-object v2
.end method

.method public resetAndStart()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;, "Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder<TT;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_reset()V

    .line 56
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    if-nez v0, :cond_e

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_constructArray(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/PrimitiveArrayBuilder;->_freeBuffer:Ljava/lang/Object;

    goto :goto_d
.end method
