.class Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Reader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V
    .registers 2

    .prologue
    .line 417
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)V

    return-void
.end method


# virtual methods
.method public data(ZILjava/io/InputStream;I)V
    .registers 8
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 440
    .local v0, "dataStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-nez v0, :cond_14

    .line 441
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 442
    int-to-long v1, p4

    invoke-static {p3, v1, v2}, Lcom/squareup/okhttp/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    .line 449
    :cond_13
    :goto_13
    return-void

    .line 445
    :cond_14
    invoke-virtual {v0, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveData(Ljava/io/InputStream;I)V

    .line 446
    if-eqz p1, :cond_13

    .line 447
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    goto :goto_13
.end method

.method public goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 9
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 552
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v4

    .line 553
    :try_start_3
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v5, 0x1

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z
    invoke-static {v3, v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1202(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z

    .line 556
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 557
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;>;"
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 558
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 559
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 560
    .local v2, "streamId":I
    if-le v2, p1, :cond_17

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 561
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    sget-object v5, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v3, v5}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveRstStream(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 562
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_17

    .line 565
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;>;"
    .end local v2    # "streamId":I
    :catchall_4a
    move-exception v3

    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4a

    throw v3

    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/squareup/okhttp/internal/spdy/SpdyStream;>;>;"
    :cond_4d
    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4a

    .line 566
    return-void
.end method

.method public headers(ILjava/util/List;)V
    .registers 5
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    .line 496
    .local p2, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-static {v1, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 497
    .local v0, "replyStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_b

    .line 498
    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveHeaders(Ljava/util/List;)V

    .line 500
    :cond_b
    return-void
.end method

.method public noop()V
    .registers 1

    .prologue
    .line 537
    return-void
.end method

.method public ping(ZII)V
    .registers 8
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 540
    if-eqz p1, :cond_e

    .line 541
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removePing(I)Lcom/squareup/okhttp/internal/spdy/Ping;
    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1800(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/Ping;

    move-result-object v0

    .line 542
    .local v0, "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    if-eqz v0, :cond_d

    .line 543
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/Ping;->receive()V

    .line 549
    .end local v0    # "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    :cond_d
    :goto_d
    return-void

    .line 547
    :cond_e
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    const/4 v2, 0x1

    const/4 v3, 0x0

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    invoke-static {v1, v2, p2, p3, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    goto :goto_d
.end method

.method public priority(II)V
    .registers 3
    .param p1, "streamId"    # I
    .param p2, "priority"    # I

    .prologue
    .line 583
    return-void
.end method

.method public rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 5
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 503
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 504
    .local v0, "rstStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_b

    .line 505
    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveRstStream(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 507
    :cond_b
    return-void
.end method

.method public run()V
    .registers 6

    .prologue
    .line 419
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 420
    .local v0, "connectionErrorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 422
    .local v2, "streamErrorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;
    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/FrameReader;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/squareup/okhttp/internal/spdy/FrameReader;->nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 424
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 425
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_14} :catch_1a
    .catchall {:try_start_4 .. :try_end_14} :catchall_27

    .line 431
    :try_start_14
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v3, v0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_30

    .line 435
    :goto_19
    return-void

    .line 426
    :catch_1a
    move-exception v1

    .line 427
    .local v1, "e":Ljava/io/IOException;
    :try_start_1b
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .line 428
    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_27

    .line 431
    :try_start_1f
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v3, v0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_25

    goto :goto_19

    .line 432
    :catch_25
    move-exception v3

    goto :goto_19

    .line 430
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_27
    move-exception v3

    .line 431
    :try_start_28
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    invoke-static {v4, v0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 433
    :goto_2d
    throw v3

    .line 432
    :catch_2e
    move-exception v4

    goto :goto_2d

    :catch_30
    move-exception v3

    goto :goto_19
.end method

.method public settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V
    .registers 12
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lcom/squareup/okhttp/internal/spdy/Settings;

    .prologue
    .line 510
    const/4 v5, 0x0

    .line 511
    .local v5, "streamsToNotify":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v7

    .line 512
    :try_start_4
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    if-eqz v6, :cond_c

    if-eqz p1, :cond_54

    .line 513
    :cond_c
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iput-object p2, v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    .line 517
    :goto_10
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3a

    .line 518
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v8, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v8}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    new-array v8, v8, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-object v5, v0

    .line 520
    :cond_3a
    monitor-exit v7
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_5c

    .line 521
    if-eqz v5, :cond_65

    .line 522
    move-object v1, v5

    .local v1, "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_40
    if-ge v2, v3, :cond_65

    aget-object v4, v1, v2

    .line 527
    .local v4, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    monitor-enter v4

    .line 528
    :try_start_45
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v7
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_62

    .line 529
    :try_start_48
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-virtual {v4, v6}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveSettings(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 530
    monitor-exit v7
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_5f

    .line 531
    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_62

    .line 522
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 515
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :cond_54
    :try_start_54
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v6, v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-virtual {v6, p2}, Lcom/squareup/okhttp/internal/spdy/Settings;->merge(Lcom/squareup/okhttp/internal/spdy/Settings;)V

    goto :goto_10

    .line 520
    :catchall_5c
    move-exception v6

    monitor-exit v7
    :try_end_5e
    .catchall {:try_start_54 .. :try_end_5e} :catchall_5c

    throw v6

    .line 530
    .restart local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_5f
    move-exception v6

    :try_start_60
    monitor-exit v7
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    :try_start_61
    throw v6

    .line 531
    :catchall_62
    move-exception v6

    monitor-exit v4
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_62

    throw v6

    .line 534
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :cond_65
    return-void
.end method

.method public synReply(ZILjava/util/List;)V
    .registers 7
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
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
    .line 483
    .local p3, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-static {v1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 484
    .local v0, "replyStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-nez v0, :cond_10

    .line 485
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    sget-object v2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 492
    :cond_f
    :goto_f
    return-void

    .line 488
    :cond_10
    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveReply(Ljava/util/List;)V

    .line 489
    if-eqz p1, :cond_f

    .line 490
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveFin()V

    goto :goto_f
.end method

.method public synStream(ZZIIIILjava/util/List;)V
    .registers 19
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

    .prologue
    .line 455
    .local p7, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    monitor-enter v10

    .line 456
    :try_start_3
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    iget-object v8, v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    move v1, p3

    move v3, p1

    move v4, p2

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 458
    .local v0, "synStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 459
    monitor-exit v10

    .line 479
    :goto_20
    return-void

    .line 461
    :cond_21
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # setter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I
    invoke-static {v1, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1302(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)I

    .line 462
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 463
    .local v9, "previous":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    monitor-exit v10
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_44

    .line 464
    if-eqz v9, :cond_47

    .line 465
    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v9, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 466
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v1, p3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    goto :goto_20

    .line 463
    .end local v0    # "synStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v9    # "previous":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v10
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v1

    .line 470
    .restart local v0    # "synStream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .restart local v9    # "previous":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :cond_47
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1700()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;

    const-string/jumbo v3, "OkHttp SPDY Callback %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;
    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader$1;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/spdy/SpdyStream;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_20
.end method

.method public windowUpdate(IIZ)V
    .registers 6
    .param p1, "streamId"    # I
    .param p2, "deltaWindowSize"    # I
    .param p3, "endFlowControl"    # Z

    .prologue
    .line 569
    if-nez p1, :cond_3

    .line 579
    :cond_2
    :goto_2
    return-void

    .line 575
    :cond_3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    # invokes: Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-static {v1, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    .line 576
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_2

    .line 577
    invoke-virtual {v0, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->receiveWindowUpdate(I)V

    goto :goto_2
.end method
