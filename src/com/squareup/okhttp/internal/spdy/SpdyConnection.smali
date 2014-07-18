.class public final Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
.super Ljava/lang/Object;
.source "SpdyConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;,
        Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final client:Z

.field private final frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

.field private final frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

.field private final handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private nextPingId:I

.field private nextStreamId:I

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/Ping;",
            ">;"
        }
    .end annotation
.end field

.field settings:Lcom/squareup/okhttp/internal/spdy/Settings;

.field private shutdown:Z

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;",
            ">;"
        }
    .end annotation
.end field

.field final variant:Lcom/squareup/okhttp/internal/spdy/Variant;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 44
    const-class v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    .line 58
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v7, "OkHttp SpdyConnection"

    invoke-static {v7}, Lcom/squareup/okhttp/internal/Util;->daemonThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_27
    move v0, v1

    .line 44
    goto :goto_a
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)V
    .registers 7
    .param p1, "builder"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    .line 81
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J

    .line 91
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->variant:Lcom/squareup/okhttp/internal/spdy/Variant;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/internal/spdy/Variant;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/squareup/okhttp/internal/spdy/Variant;

    .line 92
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    .line 93
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    .line 94
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/squareup/okhttp/internal/spdy/Variant;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->in:Ljava/io/InputStream;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$300(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/io/InputStream;

    move-result-object v3

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Variant;->newReader(Ljava/io/InputStream;Z)Lcom/squareup/okhttp/internal/spdy/FrameReader;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    .line 95
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->variant:Lcom/squareup/okhttp/internal/spdy/Variant;

    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->out:Ljava/io/OutputStream;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/io/OutputStream;

    move-result-object v3

    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v3, v4}, Lcom/squareup/okhttp/internal/spdy/Variant;->newWriter(Ljava/io/OutputStream;Z)Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    .line 96
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_7c

    move v0, v1

    :goto_47
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 97
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->client:Z
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_7e

    :goto_4f
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextPingId:I

    .line 99
    # getter for: Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->hostName:Ljava/lang/String;
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;->access$500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Spdy Reader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 102
    return-void

    :cond_7c
    move v0, v2

    .line 96
    goto :goto_47

    :cond_7e
    move v1, v2

    .line 97
    goto :goto_4f
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1400(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->handler:Lcom/squareup/okhttp/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;I)Lcom/squareup/okhttp/internal/spdy/Ping;
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->removePing(I)Lcom/squareup/okhttp/internal/spdy/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .registers 5
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/squareup/okhttp/internal/spdy/Ping;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePingLater(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method static synthetic access$700(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .registers 5
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/squareup/okhttp/internal/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->writePing(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    return-void
.end method

.method static synthetic access$900(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;)Lcom/squareup/okhttp/internal/spdy/FrameReader;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/SpdyConnection;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    return-object v0
.end method

.method private close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 15
    .param p1, "connectionCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .param p2, "streamCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    sget-boolean v10, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    if-nez v10, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 303
    :cond_10
    const/4 v9, 0x0

    .line 305
    .local v9, "thrown":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_6b

    .line 310
    :goto_14
    const/4 v8, 0x0

    .line 311
    .local v8, "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    const/4 v6, 0x0

    .line 312
    .local v6, "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/Ping;
    monitor-enter p0

    .line 313
    :try_start_17
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3e

    .line 314
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-object v8, v0

    .line 315
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->clear()V

    .line 316
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 318
    :cond_3e
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v10, :cond_5b

    .line 319
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    new-array v11, v11, [Lcom/squareup/okhttp/internal/spdy/Ping;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/Ping;

    move-object v6, v0

    .line 320
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    .line 322
    :cond_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_17 .. :try_end_5c} :catchall_6e

    .line 324
    if-eqz v8, :cond_76

    .line 325
    move-object v1, v8

    .local v1, "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_61
    if-ge v3, v4, :cond_76

    aget-object v7, v1, v3

    .line 327
    .local v7, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :try_start_65
    invoke-virtual {v7, p2}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_71

    .line 325
    :cond_68
    :goto_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    .line 306
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/Ping;
    .end local v7    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v8    # "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catch_6b
    move-exception v2

    .line 307
    .local v2, "e":Ljava/io/IOException;
    move-object v9, v2

    goto :goto_14

    .line 322
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v6    # "pingsToCancel":[Lcom/squareup/okhttp/internal/spdy/Ping;
    .restart local v8    # "streamsToClose":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_6e
    move-exception v10

    :try_start_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v10

    .line 328
    .restart local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v7    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catch_71
    move-exception v2

    .line 329
    .restart local v2    # "e":Ljava/io/IOException;
    if-eqz v9, :cond_68

    move-object v9, v2

    goto :goto_68

    .line 334
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :cond_76
    if-eqz v6, :cond_85

    .line 335
    move-object v1, v6

    .local v1, "arr$":[Lcom/squareup/okhttp/internal/spdy/Ping;
    array-length v4, v1

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_7b
    if-ge v3, v4, :cond_85

    aget-object v5, v1, v3

    .line 336
    .local v5, "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/spdy/Ping;->cancel()V

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_7b

    .line 341
    .end local v1    # "arr$":[Lcom/squareup/okhttp/internal/spdy/Ping;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "ping":Lcom/squareup/okhttp/internal/spdy/Ping;
    :cond_85
    :try_start_85
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameReader:Lcom/squareup/okhttp/internal/spdy/FrameReader;

    invoke-interface {v10}, Lcom/squareup/okhttp/internal/spdy/FrameReader;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8a} :catch_92

    .line 346
    :goto_8a
    :try_start_8a
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v10}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8f} :catch_95

    .line 351
    :cond_8f
    :goto_8f
    if-eqz v9, :cond_9a

    throw v9

    .line 342
    :catch_92
    move-exception v2

    .line 343
    .restart local v2    # "e":Ljava/io/IOException;
    move-object v9, v2

    goto :goto_8a

    .line 347
    .end local v2    # "e":Ljava/io/IOException;
    :catch_95
    move-exception v2

    .line 348
    .restart local v2    # "e":Ljava/io/IOException;
    if-nez v9, :cond_8f

    move-object v9, v2

    goto :goto_8f

    .line 352
    .end local v2    # "e":Ljava/io/IOException;
    :cond_9a
    return-void
.end method

.method private declared-synchronized getStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removePing(I)Lcom/squareup/okhttp/internal/spdy/Ping;
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 260
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/Ping;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIdle(Z)V
    .registers 4
    .param p1, "value"    # Z

    .prologue
    .line 125
    monitor-enter p0

    if-eqz p1, :cond_b

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_7
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_e

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_7

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .registers 7
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/squareup/okhttp/internal/spdy/Ping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v1

    .line 254
    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/spdy/Ping;->send()V

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->ping(ZII)V

    .line 256
    monitor-exit v1

    .line 257
    return-void

    .line 256
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private writePingLater(ZIILcom/squareup/okhttp/internal/spdy/Ping;)V
    .registers 14
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lcom/squareup/okhttp/internal/spdy/Ping;

    .prologue
    .line 240
    sget-object v8, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;

    const-string/jumbo v2, "OkHttp SPDY Writer %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$3;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/squareup/okhttp/internal/spdy/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 249
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
    .line 298
    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->close(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 299
    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->flush()V

    .line 270
    return-void
.end method

.method public declared-synchronized getIdleStartTimeNs()J
    .registers 3

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isIdle()Z
    .registers 5

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->idleStartTimeNs:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .registers 21
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/squareup/okhttp/internal/spdy/SpdyStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_26

    const/4 v4, 0x1

    .line 149
    .local v4, "outFinished":Z
    :goto_3
    if-nez p3, :cond_28

    const/4 v5, 0x1

    .line 150
    .local v5, "inFinished":Z
    :goto_6
    const/4 v12, 0x0

    .line 151
    .local v12, "associatedStreamId":I
    const/4 v6, 0x0

    .line 152
    .local v6, "priority":I
    const/4 v7, 0x0

    .line 156
    .local v7, "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 157
    :try_start_10
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_23

    .line 158
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v3, :cond_2a

    .line 159
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v8, "shutdown"

    invoke-direct {v3, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 169
    :catchall_20
    move-exception v3

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_20

    :try_start_22
    throw v3

    .line 173
    :catchall_23
    move-exception v3

    monitor-exit v16
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_23

    throw v3

    .line 148
    .end local v4    # "outFinished":Z
    .end local v5    # "inFinished":Z
    .end local v6    # "priority":I
    .end local v7    # "slot":I
    .end local v12    # "associatedStreamId":I
    :cond_26
    const/4 v4, 0x0

    goto :goto_3

    .line 149
    .restart local v4    # "outFinished":Z
    :cond_28
    const/4 v5, 0x0

    goto :goto_6

    .line 161
    .restart local v5    # "inFinished":Z
    .restart local v6    # "priority":I
    .restart local v7    # "slot":I
    .restart local v12    # "associatedStreamId":I
    :cond_2a
    :try_start_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 162
    .local v2, "streamId":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->nextStreamId:I

    .line 163
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->settings:Lcom/squareup/okhttp/internal/spdy/Settings;

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;-><init>(ILcom/squareup/okhttp/internal/spdy/SpdyConnection;ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 165
    .local v1, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V

    .line 169
    :cond_5c
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_2a .. :try_end_5d} :catchall_20

    .line 171
    :try_start_5d
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    move v9, v4

    move v10, v5

    move v11, v2

    move v13, v6

    move v14, v7

    move-object/from16 v15, p1

    invoke-interface/range {v8 .. v15}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->synStream(ZZIIIILjava/util/List;)V

    .line 173
    monitor-exit v16
    :try_end_6c
    .catchall {:try_start_5d .. :try_end_6c} :catchall_23

    .line 175
    return-object v1
.end method

.method declared-synchronized removeStream(I)Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .registers 5
    .param p1, "streamId"    # I

    .prologue
    .line 117
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 118
    .local v0, "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 119
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->setIdle(Z)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 121
    :cond_1b
    monitor-exit p0

    return-object v0

    .line 117
    .end local v0    # "stream":Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendConnectionHeader()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->connectionHeader()V

    .line 360
    return-void
.end method

.method public shutdown(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 5
    .param p1, "statusCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    monitor-enter v2

    .line 281
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_18

    .line 282
    :try_start_4
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    if-eqz v1, :cond_b

    .line 283
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1b

    :try_start_9
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_18

    .line 290
    :goto_a
    return-void

    .line 285
    :cond_b
    const/4 v1, 0x1

    :try_start_c
    iput-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->shutdown:Z

    .line 286
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->lastGoodStreamId:I

    .line 287
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1b

    .line 288
    :try_start_11
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v1, v0, p1}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 289
    monitor-exit v2

    goto :goto_a

    .end local v0    # "lastGoodStreamId":I
    :catchall_18
    move-exception v1

    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1

    .line 287
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_18
.end method

.method public writeData(IZ[BII)V
    .registers 12
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    move v1, p2

    move v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->data(ZI[BII)V

    .line 186
    return-void
.end method

.method writeSynReset(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 201
    return-void
.end method

.method writeSynResetLater(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    .prologue
    .line 189
    sget-object v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;

    const-string/jumbo v2, "OkHttp SPDY Writer %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$1;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 197
    return-void
.end method

.method writeWindowUpdate(II)V
    .registers 4
    .param p1, "streamId"    # I
    .param p2, "deltaWindowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->frameWriter:Lcom/squareup/okhttp/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/FrameWriter;->windowUpdate(II)V

    .line 216
    return-void
.end method

.method writeWindowUpdateLater(II)V
    .registers 10
    .param p1, "streamId"    # I
    .param p2, "deltaWindowSize"    # I

    .prologue
    .line 204
    sget-object v6, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$2;

    const-string/jumbo v2, "OkHttp SPDY Writer %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/SpdyConnection;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/SpdyConnection$2;-><init>(Lcom/squareup/okhttp/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 212
    return-void
.end method
