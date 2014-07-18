.class public Lcom/squareup/okhttp/internal/StrictLineReader;
.super Ljava/lang/Object;
.source "StrictLineReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private buf:[B

.field private final charset:Ljava/nio/charset/Charset;

.field private end:I

.field private final in:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "capacity"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    if-eqz p1, :cond_7

    if-nez p3, :cond_d

    .line 88
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 90
    :cond_d
    if-gez p2, :cond_18

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capacity <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_18
    sget-object v0, Lcom/squareup/okhttp/internal/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_29
    iput-object p1, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->in:Ljava/io/InputStream;

    .line 98
    iput-object p3, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    .line 99
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 72
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lcom/squareup/okhttp/internal/StrictLineReader;-><init>(Ljava/io/InputStream;ILjava/nio/charset/Charset;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/okhttp/internal/StrictLineReader;)Ljava/nio/charset/Charset;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/StrictLineReader;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private fillBuf()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 199
    iget-object v1, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    iget-object v3, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 200
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 201
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 203
    :cond_15
    iput v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    .line 204
    iput v0, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->end:I

    .line 205
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
    .line 109
    iget-object v1, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v1

    .line 110
    :try_start_3
    iget-object v0, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    if-eqz v0, :cond_f

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    .line 112
    iget-object v0, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 114
    :cond_f
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public readInt()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "intString":Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    return v2

    .line 189
    :catch_9
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public readLine()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0xa

    .line 126
    iget-object v5, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->in:Ljava/io/InputStream;

    monitor-enter v5

    .line 127
    :try_start_5
    iget-object v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    if-nez v4, :cond_15

    .line 128
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "LineReader is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    :catchall_12
    move-exception v4

    monitor-exit v5
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v4

    .line 134
    :cond_15
    :try_start_15
    iget v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    iget v6, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->end:I

    if-lt v4, v6, :cond_1e

    .line 135
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/StrictLineReader;->fillBuf()V

    .line 138
    :cond_1e
    iget v0, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    .local v0, "i":I
    :goto_20
    iget v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->end:I

    if-eq v0, v4, :cond_58

    .line 139
    iget-object v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_55

    .line 140
    iget v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    if-eq v0, v4, :cond_53

    iget-object v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    add-int/lit8 v6, v0, -0x1

    aget-byte v4, v4, v6

    const/16 v6, 0xd

    if-ne v4, v6, :cond_53

    add-int/lit8 v1, v0, -0x1

    .line 141
    .local v1, "lineEnd":I
    :goto_3a
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    iget v7, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    sub-int v7, v1, v7

    iget-object v8, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v4, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 142
    .local v3, "res":Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    .line 143
    monitor-exit v5

    .line 171
    .end local v1    # "lineEnd":I
    .end local v3    # "res":Ljava/lang/String;
    :goto_52
    return-object v3

    :cond_53
    move v1, v0

    .line 140
    goto :goto_3a

    .line 138
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 148
    :cond_58
    new-instance v2, Lcom/squareup/okhttp/internal/StrictLineReader$1;

    iget v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->end:I

    iget v6, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x50

    invoke-direct {v2, p0, v4}, Lcom/squareup/okhttp/internal/StrictLineReader$1;-><init>(Lcom/squareup/okhttp/internal/StrictLineReader;I)V

    .line 160
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    :cond_64
    iget-object v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    iget v7, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->end:I

    iget v8, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    sub-int/2addr v7, v8

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 162
    const/4 v4, -0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->end:I

    .line 163
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/StrictLineReader;->fillBuf()V

    .line 165
    iget v0, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    :goto_78
    iget v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->end:I

    if-eq v0, v4, :cond_64

    .line 166
    iget-object v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    aget-byte v4, v4, v0

    if-ne v4, v9, :cond_9b

    .line 167
    iget v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    if-eq v0, v4, :cond_91

    .line 168
    iget-object v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->buf:[B

    iget v6, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    iget v7, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    sub-int v7, v0, v7

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 170
    :cond_91
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/StrictLineReader;->pos:I

    .line 171
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v5
    :try_end_9a
    .catchall {:try_start_15 .. :try_end_9a} :catchall_12

    goto :goto_52

    .line 165
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_78
.end method
