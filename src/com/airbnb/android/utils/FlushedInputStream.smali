.class Lcom/airbnb/android/utils/FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "FlushedInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    return-void
.end method


# virtual methods
.method public skip(J)J
    .registers 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const-wide/16 v3, 0x0

    .line 28
    .local v3, "totalBytesSkipped":J
    :goto_2
    cmp-long v5, v3, p1

    if-gez v5, :cond_1a

    .line 30
    iget-object v5, p0, Lcom/airbnb/android/utils/FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v3

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 33
    .local v1, "bytesSkipped":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_1d

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/android/utils/FlushedInputStream;->read()I

    move-result v0

    .line 38
    .local v0, "bytesRead":I
    if-gez v0, :cond_1b

    .line 49
    .end local v0    # "bytesRead":I
    .end local v1    # "bytesSkipped":J
    :cond_1a
    return-wide v3

    .line 43
    .restart local v0    # "bytesRead":I
    .restart local v1    # "bytesSkipped":J
    :cond_1b
    const-wide/16 v1, 0x1

    .line 47
    .end local v0    # "bytesRead":I
    :cond_1d
    add-long/2addr v3, v1

    .line 48
    goto :goto_2
.end method
