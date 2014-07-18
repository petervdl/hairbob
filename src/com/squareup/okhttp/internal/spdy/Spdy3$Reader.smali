.class final Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/FrameReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/Spdy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final client:Z

.field private compressedLimit:I

.field private final in:Ljava/io/DataInputStream;

.field private final nameValueBlockIn:Ljava/io/DataInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "client"    # Z

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    .line 112
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->newNameValueBlockStream()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->nameValueBlockIn:Ljava/io/DataInputStream;

    .line 113
    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->client:Z

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;

    .prologue
    .line 104
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$020(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;I)I
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;
    .param p1, "x1"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->compressedLimit:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->compressedLimit:I

    return v0
.end method

.method static synthetic access$100(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;)Ljava/io/DataInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    return-object v0
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private newNameValueBlockStream()Ljava/io/DataInputStream;
    .registers 5

    .prologue
    .line 247
    new-instance v1, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$1;

    invoke-direct {v1, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$1;-><init>(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;)V

    .line 265
    .local v1, "throttleStream":Ljava/io/InputStream;
    new-instance v0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$2;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader$2;-><init>(Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;)V

    .line 277
    .local v0, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v3, v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2
.end method

.method private readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .registers 11
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 322
    const/16 v3, 0x8

    if-eq p3, v3, :cond_16

    const-string/jumbo v3, "TYPE_GOAWAY length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 323
    :cond_16
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 324
    .local v2, "lastGoodStreamId":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 325
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromSpdyGoAway(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .line 326
    .local v0, "errorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_3d

    .line 327
    const-string/jumbo v3, "TYPE_GOAWAY unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 329
    :cond_3d
    invoke-interface {p1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 330
    return-void
.end method

.method private readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .registers 8
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 231
    .local v2, "w1":I
    const v3, 0x7fffffff

    and-int v1, v2, v3

    .line 232
    .local v1, "streamId":I
    add-int/lit8 v3, p3, -0x4

    invoke-direct {p0, v3}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1, v1, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->headers(ILjava/util/List;)V

    .line 234
    return-void
.end method

.method private readNameValueBlock(I)Ljava/util/List;
    .registers 11
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 281
    iget v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->compressedLimit:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->compressedLimit:I

    .line 283
    :try_start_5
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 284
    .local v4, "numberOfPairs":I
    mul-int/lit8 v6, v4, 0x2

    if-gez v6, :cond_48

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "numberOfPairs < 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v6, "numberOfPairs < 0"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v6

    throw v6
    :try_end_3d
    .catch Ljava/util/zip/DataFormatException; {:try_start_5 .. :try_end_3d} :catch_3d

    .line 302
    .end local v4    # "numberOfPairs":I
    :catch_3d
    move-exception v0

    .line 303
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v6, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 288
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .restart local v4    # "numberOfPairs":I
    :cond_48
    :try_start_48
    new-instance v1, Ljava/util/ArrayList;

    mul-int/lit8 v6, v4, 0x2

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_50
    if-ge v2, v4, :cond_74

    .line 290
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readString()Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "values":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6b

    const-string/jumbo v6, "name.length == 0"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v6

    throw v6

    .line 293
    :cond_6b
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_50

    .line 297
    .end local v3    # "name":Ljava/lang/String;
    .end local v5    # "values":Ljava/lang/String;
    :cond_74
    iget v6, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->compressedLimit:I

    if-eqz v6, :cond_9d

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "compressedLimit > 0: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->compressedLimit:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_9d
    .catch Ljava/util/zip/DataFormatException; {:try_start_48 .. :try_end_9d} :catch_3d

    .line 301
    :cond_9d
    return-object v1
.end method

.method private readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .registers 10
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    const/4 v3, 0x4

    if-eq p3, v3, :cond_15

    const-string/jumbo v3, "TYPE_PING length: %d != 4"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 316
    :cond_15
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 317
    .local v0, "id":I
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->client:Z

    rem-int/lit8 v3, v0, 0x2

    if-ne v3, v1, :cond_28

    move v3, v1

    :goto_22
    if-ne v4, v3, :cond_2a

    .line 318
    .local v1, "reply":Z
    :goto_24
    invoke-interface {p1, v1, v0, v2}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 319
    return-void

    .end local v1    # "reply":Z
    :cond_28
    move v3, v2

    .line 317
    goto :goto_22

    :cond_2a
    move v1, v2

    goto :goto_24
.end method

.method private readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .registers 11
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 219
    const/16 v3, 0x8

    if-eq p3, v3, :cond_16

    const-string/jumbo v3, "TYPE_RST_STREAM length: %d != 8"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 220
    :cond_16
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 221
    .local v2, "streamId":I
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 222
    .local v1, "errorCodeInt":I
    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->fromSpdy3Rst(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    .line 223
    .local v0, "errorCode":Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    if-nez v0, :cond_3d

    .line 224
    const-string/jumbo v3, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 226
    :cond_3d
    invoke-interface {p1, v2, v0}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 227
    return-void
.end method

.method private readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .registers 16
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 333
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 334
    .local v4, "numberOfEntries":I
    mul-int/lit8 v9, v4, 0x8

    add-int/lit8 v9, v9, 0x4

    if-eq p3, v9, :cond_25

    .line 335
    const-string/jumbo v9, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v0

    invoke-static {v9, v10}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v8

    throw v8

    .line 337
    :cond_25
    new-instance v5, Lcom/squareup/okhttp/internal/spdy/Settings;

    invoke-direct {v5}, Lcom/squareup/okhttp/internal/spdy/Settings;-><init>()V

    .line 338
    .local v5, "settings":Lcom/squareup/okhttp/internal/spdy/Settings;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, v4, :cond_49

    .line 339
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 340
    .local v7, "w1":I
    iget-object v9, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 341
    .local v6, "value":I
    const/high16 v9, -0x1000000

    and-int/2addr v9, v7

    ushr-int/lit8 v3, v9, 0x18

    .line 342
    .local v3, "idFlags":I
    const v9, 0xffffff

    and-int v2, v7, v9

    .line 343
    .local v2, "id":I
    invoke-virtual {v5, v2, v3, v6}, Lcom/squareup/okhttp/internal/spdy/Settings;->set(III)V

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 345
    .end local v2    # "id":I
    .end local v3    # "idFlags":I
    .end local v6    # "value":I
    .end local v7    # "w1":I
    :cond_49
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_51

    .line 346
    .local v0, "clearPrevious":Z
    :goto_4d
    invoke-interface {p1, v0, v5}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V

    .line 347
    return-void

    .end local v0    # "clearPrevious":Z
    :cond_51
    move v0, v8

    .line 345
    goto :goto_4d
.end method

.method private readString()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 309
    .local v1, "length":I
    new-array v0, v1, [B

    .line 310
    .local v0, "bytes":[B
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-static {v2, v0}, Lcom/squareup/okhttp/internal/Util;->readFully(Ljava/io/InputStream;[B)V

    .line 311
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private readSynReply(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .registers 9
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 212
    .local v3, "w1":I
    const v4, 0x7fffffff

    and-int v2, v3, v4

    .line 213
    .local v2, "streamId":I
    add-int/lit8 v4, p3, -0x4

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v1

    .line 214
    .local v1, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1a

    const/4 v0, 0x1

    .line 215
    .local v0, "inFinished":Z
    :goto_16
    invoke-interface {p1, v0, v2, v1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->synReply(ZILjava/util/List;)V

    .line 216
    return-void

    .line 214
    .end local v0    # "inFinished":Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private readSynStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .registers 15
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 196
    .local v9, "w1":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 197
    .local v10, "w2":I
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v8

    .line 198
    .local v8, "s3":I
    const v0, 0x7fffffff

    and-int v3, v9, v0

    .line 199
    .local v3, "streamId":I
    const v0, 0x7fffffff

    and-int v4, v10, v0

    .line 200
    .local v4, "associatedStreamId":I
    const v0, 0xe000

    and-int/2addr v0, v8

    ushr-int/lit8 v5, v0, 0xd

    .line 201
    .local v5, "priority":I
    and-int/lit16 v6, v8, 0xff

    .line 202
    .local v6, "slot":I
    add-int/lit8 v0, p3, -0xa

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v7

    .line 204
    .local v7, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_39

    const/4 v2, 0x1

    .line 205
    .local v2, "inFinished":Z
    :goto_2f
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3b

    const/4 v1, 0x1

    .local v1, "outFinished":Z
    :goto_34
    move-object v0, p1

    .line 206
    invoke-interface/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->synStream(ZZIIIILjava/util/List;)V

    .line 208
    return-void

    .line 204
    .end local v1    # "outFinished":Z
    .end local v2    # "inFinished":Z
    :cond_39
    const/4 v2, 0x0

    goto :goto_2f

    .line 205
    .restart local v2    # "inFinished":Z
    :cond_3b
    const/4 v1, 0x0

    goto :goto_34
.end method

.method private readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V
    .registers 12
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .param p2, "flags"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/4 v7, 0x0

    .line 237
    const/16 v4, 0x8

    if-eq p3, v4, :cond_19

    const-string/jumbo v4, "TYPE_WINDOW_UPDATE length: %d != 8"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v4

    throw v4

    .line 238
    :cond_19
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 239
    .local v2, "w1":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 240
    .local v3, "w2":I
    and-int v1, v2, v5

    .line 241
    .local v1, "streamId":I
    and-int v0, v3, v5

    .line 242
    .local v0, "deltaWindowSize":I
    invoke-interface {p1, v1, v0, v7}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->windowUpdate(IIZ)V

    .line 243
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
    .line 354
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->nameValueBlockIn:Ljava/io/DataInputStream;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 355
    return-void
.end method

.method public nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
    .registers 15
    .param p1, "handler"    # Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 123
    :try_start_2
    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_47

    move-result v8

    .line 127
    .local v8, "w1":I
    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 129
    .local v9, "w2":I
    const/high16 v11, -0x80000000

    and-int/2addr v11, v8

    if-eqz v11, :cond_4a

    move v0, v10

    .line 130
    .local v0, "control":Z
    :goto_14
    const/high16 v11, -0x1000000

    and-int/2addr v11, v9

    ushr-int/lit8 v2, v11, 0x18

    .line 131
    .local v2, "flags":I
    const v11, 0xffffff

    and-int v4, v9, v11

    .line 133
    .local v4, "length":I
    if-eqz v0, :cond_9d

    .line 134
    const/high16 v11, 0x7fff0000

    and-int/2addr v11, v8

    ushr-int/lit8 v7, v11, 0x10

    .line 135
    .local v7, "version":I
    const v11, 0xffff

    and-int v6, v8, v11

    .line 137
    .local v6, "type":I
    const/4 v11, 0x3

    if-eq v7, v11, :cond_4c

    .line 138
    new-instance v10, Ljava/net/ProtocolException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "version != 3: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 124
    .end local v0    # "control":Z
    .end local v2    # "flags":I
    .end local v4    # "length":I
    .end local v6    # "type":I
    .end local v7    # "version":I
    .end local v8    # "w1":I
    .end local v9    # "w2":I
    :catch_47
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move v10, v3

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    :goto_49
    return v10

    .restart local v8    # "w1":I
    .restart local v9    # "w2":I
    :cond_4a
    move v0, v3

    .line 129
    goto :goto_14

    .line 141
    .restart local v0    # "control":Z
    .restart local v2    # "flags":I
    .restart local v4    # "length":I
    .restart local v6    # "type":I
    .restart local v7    # "version":I
    :cond_4c
    packed-switch v6, :pswitch_data_ae

    .line 184
    :pswitch_4f
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Unexpected frame"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 143
    :pswitch_58
    invoke-direct {p0, p1, v2, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readSynStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_49

    .line 147
    :pswitch_5c
    invoke-direct {p0, p1, v2, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readSynReply(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_49

    .line 151
    :pswitch_60
    invoke-direct {p0, p1, v2, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readRstStream(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_49

    .line 155
    :pswitch_64
    invoke-direct {p0, p1, v2, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readSettings(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_49

    .line 159
    :pswitch_68
    if-eqz v4, :cond_7a

    const-string/jumbo v11, "TYPE_NOOP length: %d != 0"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v3

    invoke-static {v11, v10}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v10

    throw v10

    .line 160
    :cond_7a
    invoke-interface {p1}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->noop()V

    goto :goto_49

    .line 164
    :pswitch_7e
    invoke-direct {p0, p1, v2, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readPing(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_49

    .line 168
    :pswitch_82
    invoke-direct {p0, p1, v2, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readGoAway(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_49

    .line 172
    :pswitch_86
    invoke-direct {p0, p1, v2, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readHeaders(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_49

    .line 176
    :pswitch_8a
    invoke-direct {p0, p1, v2, v4}, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->readWindowUpdate(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;II)V

    goto :goto_49

    .line 180
    :pswitch_8e
    iget-object v10, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    int-to-long v11, v4

    invoke-static {v10, v11, v12}, Lcom/squareup/okhttp/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    .line 181
    new-instance v10, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v11, "TODO"

    invoke-direct {v10, v11}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 187
    .end local v6    # "type":I
    .end local v7    # "version":I
    :cond_9d
    const v11, 0x7fffffff

    and-int v5, v8, v11

    .line 188
    .local v5, "streamId":I
    and-int/lit8 v11, v2, 0x1

    if-eqz v11, :cond_a7

    move v3, v10

    .line 189
    .local v3, "inFinished":Z
    :cond_a7
    iget-object v11, p0, Lcom/squareup/okhttp/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-interface {p1, v3, v5, v11, v4}, Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;->data(ZILjava/io/InputStream;I)V

    goto :goto_49

    .line 141
    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_58
        :pswitch_5c
        :pswitch_60
        :pswitch_64
        :pswitch_68
        :pswitch_7e
        :pswitch_82
        :pswitch_86
        :pswitch_8a
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_8e
    .end packed-switch
.end method
