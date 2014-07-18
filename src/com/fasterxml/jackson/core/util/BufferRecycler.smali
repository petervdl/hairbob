.class public Lcom/fasterxml/jackson/core/util/BufferRecycler;
.super Ljava/lang/Object;
.source "BufferRecycler.java"


# static fields
.field private static final BYTE_BUFFER_LENGTHS:[I

.field private static final CHAR_BUFFER_LENGTHS:[I


# instance fields
.field protected final _byteBuffers:[[B

.field protected final _charBuffers:[[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->BYTE_BUFFER_LENGTHS:[I

    .line 46
    new-array v0, v1, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->CHAR_BUFFER_LENGTHS:[I

    return-void

    .line 45
    :array_10
    .array-data 4
        0x1f40
        0x1f40
        0x7d0
        0x7d0
    .end array-data

    .line 46
    :array_1c
    .array-data 4
        0xfa0
        0xfa0
        0xc8
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x4

    .line 62
    invoke-direct {p0, v0, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;-><init>(II)V

    .line 63
    return-void
.end method

.method protected constructor <init>(II)V
    .registers 4
    .param p1, "bbCount"    # I
    .param p2, "cbCount"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-array v0, p1, [[B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    .line 73
    new-array v0, p2, [[C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    .line 74
    return-void
.end method


# virtual methods
.method public final allocByteBuffer(I)[B
    .registers 3
    .param p1, "ix"    # I

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocByteBuffer(II)[B

    move-result-object v0

    return-object v0
.end method

.method public allocByteBuffer(II)[B
    .registers 7
    .param p1, "ix"    # I
    .param p2, "minSize"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->byteBufferLength(I)I

    move-result v0

    .line 91
    .local v0, "DEF_SIZE":I
    if-ge p2, v0, :cond_7

    .line 92
    move p2, v0

    .line 94
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    aget-object v1, v2, p1

    .line 95
    .local v1, "buffer":[B
    if-eqz v1, :cond_10

    array-length v2, v1

    if-ge v2, p2, :cond_15

    .line 96
    :cond_10
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->balloc(I)[B

    move-result-object v1

    .line 100
    :goto_14
    return-object v1

    .line 98
    :cond_15
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    const/4 v3, 0x0

    aput-object v3, v2, p1

    goto :goto_14
.end method

.method public final allocCharBuffer(I)[C
    .registers 3
    .param p1, "ix"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->allocCharBuffer(II)[C

    move-result-object v0

    return-object v0
.end method

.method public allocCharBuffer(II)[C
    .registers 7
    .param p1, "ix"    # I
    .param p2, "minSize"    # I

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->charBufferLength(I)I

    move-result v0

    .line 119
    .local v0, "DEF_SIZE":I
    if-ge p2, v0, :cond_7

    .line 120
    move p2, v0

    .line 122
    :cond_7
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    aget-object v1, v2, p1

    .line 123
    .local v1, "buffer":[C
    if-eqz v1, :cond_10

    array-length v2, v1

    if-ge v2, p2, :cond_15

    .line 124
    :cond_10
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/util/BufferRecycler;->calloc(I)[C

    move-result-object v1

    .line 128
    :goto_14
    return-object v1

    .line 126
    :cond_15
    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    const/4 v3, 0x0

    aput-object v3, v2, p1

    goto :goto_14
.end method

.method protected balloc(I)[B
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 155
    new-array v0, p1, [B

    return-object v0
.end method

.method protected byteBufferLength(I)I
    .registers 3
    .param p1, "ix"    # I

    .prologue
    .line 142
    sget-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->BYTE_BUFFER_LENGTHS:[I

    aget v0, v0, p1

    return v0
.end method

.method protected calloc(I)[C
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 156
    new-array v0, p1, [C

    return-object v0
.end method

.method protected charBufferLength(I)I
    .registers 3
    .param p1, "ix"    # I

    .prologue
    .line 146
    sget-object v0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->CHAR_BUFFER_LENGTHS:[I

    aget v0, v0, p1

    return v0
.end method

.method public final releaseByteBuffer(I[B)V
    .registers 4
    .param p1, "ix"    # I
    .param p2, "buffer"    # [B

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_byteBuffers:[[B

    aput-object p2, v0, p1

    .line 105
    return-void
.end method

.method public releaseCharBuffer(I[C)V
    .registers 4
    .param p1, "ix"    # I
    .param p2, "buffer"    # [C

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/BufferRecycler;->_charBuffers:[[C

    aput-object p2, v0, p1

    .line 133
    return-void
.end method
