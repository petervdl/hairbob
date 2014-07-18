.class public final Lorg/apache/http/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private buffer:[C

.field private len:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string/jumbo v0, "Buffer capacity"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    .line 57
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 58
    return-void
.end method

.method private expand(I)V
    .registers 6
    .param p1, "newlen"    # I

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [C

    .line 62
    .local v0, "newbuffer":[C
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 64
    return-void
.end method


# virtual methods
.method public append(C)V
    .registers 5
    .param p1, "ch"    # C

    .prologue
    .line 155
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/lit8 v0, v1, 0x1

    .line 156
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 157
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 159
    :cond_c
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 160
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 161
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .registers 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p1, :cond_1e

    move-object v1, p1

    .line 105
    .local v1, "s":Ljava/lang/String;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 106
    .local v2, "strlen":I
    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int v0, v3, v2

    .line 107
    .local v0, "newlen":I
    iget-object v3, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v3, v3

    if-le v0, v3, :cond_13

    .line 108
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 110
    :cond_13
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v5, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {v1, v3, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 111
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 112
    return-void

    .line 104
    .end local v0    # "newlen":I
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "strlen":I
    :cond_1e
    const-string/jumbo v1, "null"

    goto :goto_3
.end method

.method public append(Lorg/apache/http/util/ByteArrayBuffer;II)V
    .registers 5
    .param p1, "b"    # Lorg/apache/http/util/ByteArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 214
    if-nez p1, :cond_3

    .line 218
    :goto_2
    return-void

    .line 217
    :cond_3
    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    goto :goto_2
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .registers 5
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 128
    if-nez p1, :cond_3

    .line 132
    :goto_2
    return-void

    .line 131
    :cond_3
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_2
.end method

.method public append([BII)V
    .registers 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 178
    if-nez p1, :cond_3

    .line 197
    :cond_2
    :goto_2
    return-void

    .line 181
    :cond_3
    if-ltz p2, :cond_13

    array-length v4, p1

    if-gt p2, v4, :cond_13

    if-ltz p3, :cond_13

    add-int v4, p2, p3

    if-ltz v4, :cond_13

    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_44

    .line 183
    :cond_13
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "off: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " b.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_44
    if-eqz p3, :cond_2

    .line 188
    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 189
    .local v3, "oldlen":I
    add-int v2, v3, p3

    .line 190
    .local v2, "newlen":I
    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v4, v4

    if-le v2, v4, :cond_52

    .line 191
    invoke-direct {p0, v2}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 193
    :cond_52
    move v0, p2

    .local v0, "i1":I
    move v1, v3

    .local v1, "i2":I
    :goto_54
    if-ge v1, v2, :cond_64

    .line 194
    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v4, v1

    .line 193
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 196
    :cond_64
    iput v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    goto :goto_2
.end method

.method public append([CII)V
    .registers 8
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 79
    if-nez p1, :cond_3

    .line 95
    :cond_2
    :goto_2
    return-void

    .line 82
    :cond_3
    if-ltz p2, :cond_13

    array-length v1, p1

    if-gt p2, v1, :cond_13

    if-ltz p3, :cond_13

    add-int v1, p2, p3

    if-ltz v1, :cond_13

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_44

    .line 84
    :cond_13
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " b.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 86
    :cond_44
    if-eqz p3, :cond_2

    .line 89
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int v0, v1, p3

    .line 90
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_52

    .line 91
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 93
    :cond_52
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    goto :goto_2
.end method

.method public charAt(I)C
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 236
    return-void
.end method

.method public ensureCapacity(I)V
    .registers 5
    .param p1, "required"    # I

    .prologue
    .line 303
    if-gtz p1, :cond_3

    .line 310
    :cond_2
    :goto_2
    return-void

    .line 306
    :cond_3
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    sub-int v0, v1, v2

    .line 307
    .local v0, "available":I
    if-le p1, v0, :cond_2

    .line 308
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    goto :goto_2
.end method

.method public indexOf(I)I
    .registers 4
    .param p1, "ch"    # I

    .prologue
    .line 401
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    return v0
.end method

.method public indexOf(III)I
    .registers 9
    .param p1, "ch"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    const/4 v3, -0x1

    .line 371
    move v0, p2

    .line 372
    .local v0, "beginIndex":I
    if-gez v0, :cond_5

    .line 373
    const/4 v0, 0x0

    .line 375
    :cond_5
    move v1, p3

    .line 376
    .local v1, "endIndex":I
    iget v4, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le v1, v4, :cond_c

    .line 377
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 379
    :cond_c
    if-le v0, v1, :cond_10

    move v2, v3

    .line 387
    :cond_f
    :goto_f
    return v2

    .line 382
    :cond_10
    move v2, v0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_1c

    .line 383
    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v4, v4, v2

    if-eq v4, p1, :cond_f

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1c
    move v2, v3

    .line 387
    goto :goto_f
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 336
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public length()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    return v0
.end method

.method public substring(II)Ljava/lang/String;
    .registers 6
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 419
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .registers 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 439
    move v0, p1

    .line 440
    .local v0, "beginIndex":I
    move v1, p2

    .line 441
    .local v1, "endIndex":I
    if-gez v0, :cond_1e

    .line 442
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Negative beginIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_1e
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le v1, v2, :cond_49

    .line 445
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_49
    if-le v0, v1, :cond_70

    .line 448
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "beginIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " > endIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_70
    :goto_70
    if-ge v0, v1, :cond_7f

    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_70

    .line 453
    :cond_7f
    :goto_7f
    if-le v1, v0, :cond_90

    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 454
    add-int/lit8 v1, v1, -0x1

    goto :goto_7f

    .line 456
    :cond_90
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v4, v1, v0

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 461
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method