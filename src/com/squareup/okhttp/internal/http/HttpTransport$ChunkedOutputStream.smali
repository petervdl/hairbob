.class final Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;
.super Lcom/squareup/okhttp/internal/AbstractOutputStream;
.source "HttpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/HttpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ChunkedOutputStream"
.end annotation


# static fields
.field private static final CRLF:[B

.field private static final FINAL_CHUNK:[B

.field private static final HEX_DIGITS:[B


# instance fields
.field private final bufferedChunk:Ljava/io/ByteArrayOutputStream;

.field private final hex:[B

.field private final maxChunkLength:I

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 268
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->CRLF:[B

    .line 269
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->HEX_DIGITS:[B

    .line 272
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->FINAL_CHUNK:[B

    return-void

    .line 268
    :array_1a
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 269
    nop

    :array_20
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    .line 272
    :array_2c
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Ljava/io/OutputStream;I)V
    .registers 5
    .param p1, "socketOut"    # Ljava/io/OutputStream;
    .param p2, "maxChunkLength"    # I

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/AbstractOutputStream;-><init>()V

    .line 275
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    .line 282
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->dataLength(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    .line 284
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    .line 285
    return-void

    .line 275
    nop

    :array_22
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0xat
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;ILcom/squareup/okhttp/internal/http/HttpTransport$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/io/OutputStream;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/squareup/okhttp/internal/http/HttpTransport$1;

    .prologue
    .line 267
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private dataLength(I)I
    .registers 5
    .param p1, "dataPlusHeaderLength"    # I

    .prologue
    .line 293
    const/4 v0, 0x4

    .line 294
    .local v0, "headerLength":I
    sub-int v1, p1, v0

    .local v1, "i":I
    :goto_3
    if-lez v1, :cond_a

    .line 295
    add-int/lit8 v0, v0, 0x1

    .line 294
    shr-int/lit8 v1, v1, 0x4

    goto :goto_3

    .line 297
    :cond_a
    sub-int v2, p1, v0

    return v2
.end method

.method private writeBufferedChunkToSocket()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 360
    .local v0, "size":I
    if-gtz v0, :cond_9

    .line 368
    :goto_8
    return-void

    .line 364
    :cond_9
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeHex(I)V

    .line 365
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 366
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 367
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v2, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_8
.end method

.method private writeHex(I)V
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const/16 v0, 0x8

    .line 336
    .local v0, "cursor":I
    :cond_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->HEX_DIGITS:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 337
    ushr-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 339
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 356
    :goto_5
    monitor-exit p0

    return-void

    .line 353
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z

    .line 354
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 355
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v1, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->FINAL_CHUNK:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 350
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-eqz v0, :cond_7

    .line 347
    :goto_5
    monitor-exit p0

    return-void

    .line 345
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 346
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_10

    goto :goto_5

    .line 342
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->checkNotClosed()V

    .line 303
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/squareup/okhttp/internal/Util;->checkOffsetAndCount(III)V

    .line 305
    :goto_8
    if-lez p3, :cond_4d

    .line 308
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-gtz v1, :cond_16

    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    if-ge p3, v1, :cond_38

    .line 310
    :cond_16
    iget v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 312
    .local v0, "numBytesWritten":I
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 313
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget v2, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    if-ne v1, v2, :cond_35

    .line 314
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 324
    :cond_35
    :goto_35
    add-int/2addr p2, v0

    .line 325
    sub-int/2addr p3, v0

    .line 326
    goto :goto_8

    .line 318
    .end local v0    # "numBytesWritten":I
    :cond_38
    iget v0, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    .line 319
    .restart local v0    # "numBytesWritten":I
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->writeHex(I)V

    .line 320
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 321
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v2, Lcom/squareup/okhttp/internal/http/HttpTransport$ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4a

    goto :goto_35

    .line 302
    .end local v0    # "numBytesWritten":I
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 327
    :cond_4d
    monitor-exit p0

    return-void
.end method
