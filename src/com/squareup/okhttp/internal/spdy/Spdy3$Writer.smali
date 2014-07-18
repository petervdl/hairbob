.class final Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private final nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

.field private final nameValueBlockOut:Ljava/io/DataOutputStream;

.field private final out:Ljava/io/DataOutputStream;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;Z)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "client"    # Z

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    .line 367
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    .line 369
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 370
    .local v0, "deflater":Ljava/util/zip/Deflater;
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/Spdy3;->DICTIONARY:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    .line 371
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    .line 372
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/squareup/okhttp/internal/Platform;->newDeflaterOutputStream(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockOut:Ljava/io/DataOutputStream;

    .line 374
    return-void
.end method

.method private writeNameValueBlockToBuffer(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 458
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 459
    .local v1, "numberOfPairs":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockOut:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 461
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockOut:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 462
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockOut:Ljava/io/DataOutputStream;

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_14

    .line 464
    .end local v2    # "s":Ljava/lang/String;
    :cond_36
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockOut:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 465
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockOut:Ljava/io/DataOutputStream;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 533
    return-void
.end method

.method public declared-synchronized connectionHeader()V
    .registers 1

    .prologue
    .line 378
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized data(ZI[BII)V
    .registers 10
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    monitor-enter p0

    if-eqz p1, :cond_22

    const/4 v0, 0x1

    .line 451
    .local v0, "flags":I
    :goto_4
    :try_start_4
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const v2, 0x7fffffff

    and-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 452
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v2, v0, 0xff

    shl-int/lit8 v2, v2, 0x18

    const v3, 0xffffff

    and-int/2addr v3, p5

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 453
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p3, p4, p5}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_24

    .line 454
    monitor-exit p0

    return-void

    .line 450
    .end local v0    # "flags":I
    :cond_22
    const/4 v0, 0x0

    goto :goto_4

    .restart local v0    # "flags":I
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 382
    monitor-exit p0

    return-void

    .line 381
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 8
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 508
    monitor-enter p0

    :try_start_1
    iget v3, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 509
    :cond_f
    const/4 v2, 0x7

    .line 510
    .local v2, "type":I
    const/4 v0, 0x0

    .line 511
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 512
    .local v1, "length":I
    :try_start_13
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const v4, -0x7ffcfff9

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 513
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 514
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 515
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    iget v4, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 516
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_c

    .line 517
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized ping(ZII)V
    .registers 11
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 495
    monitor-enter p0

    :try_start_3
    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->client:Z

    rem-int/lit8 v5, p2, 0x2

    if-ne v5, v2, :cond_1a

    move v5, v2

    :goto_a
    if-eq v6, v5, :cond_1c

    .line 496
    .local v2, "payloadIsReply":Z
    :goto_c
    if-eq p1, v2, :cond_1e

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "payload != reply"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    .line 495
    .end local v2    # "payloadIsReply":Z
    :catchall_17
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_1a
    move v5, v4

    goto :goto_a

    :cond_1c
    move v2, v4

    goto :goto_c

    .line 497
    .restart local v2    # "payloadIsReply":Z
    :cond_1e
    const/4 v3, 0x6

    .line 498
    .local v3, "type":I
    const/4 v0, 0x0

    .line 499
    .local v0, "flags":I
    const/4 v1, 0x4

    .line 500
    .local v1, "length":I
    :try_start_21
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const v5, -0x7ffcfffa

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 501
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 502
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 503
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_39
    .catchall {:try_start_21 .. :try_end_39} :catchall_17

    .line 504
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 432
    monitor-enter p0

    :try_start_1
    iget v3, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 433
    :cond_f
    const/4 v0, 0x0

    .line 434
    .local v0, "flags":I
    const/4 v2, 0x3

    .line 435
    .local v2, "type":I
    const/16 v1, 0x8

    .line 436
    .local v1, "length":I
    :try_start_13
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const v4, -0x7ffcfffd

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 437
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 438
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const v4, 0x7fffffff

    and-int/2addr v4, p1

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 439
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    iget v4, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 440
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_c

    .line 441
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized synStream(ZZIIIILjava/util/List;)V
    .registers 16
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p5, "priority"    # I
    .param p6, "slot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIIII",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p7, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v7, 0x7fffffff

    const/4 v4, 0x0

    .line 387
    monitor-enter p0

    :try_start_5
    invoke-direct {p0, p7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->writeNameValueBlockToBuffer(Ljava/util/List;)V

    .line 388
    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/lit8 v1, v5, 0xa

    .line 389
    .local v1, "length":I
    const/4 v2, 0x1

    .line 390
    .local v2, "type":I
    if-eqz p1, :cond_5a

    const/4 v5, 0x1

    :goto_14
    if-eqz p2, :cond_17

    const/4 v4, 0x2

    :cond_17
    or-int v0, v5, v4

    .line 392
    .local v0, "flags":I
    const/4 v3, 0x0

    .line 393
    .local v3, "unused":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const v5, -0x7ffcffff

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 394
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    and-int/lit16 v5, v0, 0xff

    shl-int/lit8 v5, v5, 0x18

    const v6, 0xffffff

    and-int/2addr v6, v1

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 395
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    and-int v5, p3, v7

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 396
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    and-int v5, p4, v7

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 397
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    and-int/lit8 v5, p5, 0x7

    shl-int/lit8 v5, v5, 0xd

    or-int/lit8 v5, v5, 0x0

    and-int/lit16 v6, p6, 0xff

    or-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 398
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->nameValueBlockBuffer:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 399
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_58
    .catchall {:try_start_5 .. :try_end_58} :catchall_5c

    .line 400
    monitor-exit p0

    return-void

    .end local v0    # "flags":I
    .end local v3    # "unused":I
    :cond_5a
    move v5, v4

    .line 390
    goto :goto_14

    .line 387
    .end local v1    # "length":I
    .end local v2    # "type":I
    :catchall_5c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized windowUpdate(II)V
    .registers 8
    .param p1, "streamId"    # I
    .param p2, "deltaWindowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    monitor-enter p0

    const/16 v2, 0x9

    .line 522
    .local v2, "type":I
    const/4 v0, 0x0

    .line 523
    .local v0, "flags":I
    const/16 v1, 0x8

    .line 524
    .local v1, "length":I
    :try_start_6
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const v4, -0x7ffcfff7

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 525
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 526
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 527
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 528
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Writer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_26

    .line 529
    monitor-exit p0

    return-void

    .line 521
    :catchall_26
    move-exception v3

    monitor-exit p0

    throw v3
.end method
