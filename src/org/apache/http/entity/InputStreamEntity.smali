.class public Lorg/apache/http/entity/InputStreamEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "InputStreamEntity.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final content:Ljava/io/InputStream;

.field private final length:J


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 13
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, -0x1

    .line 124
    const-string/jumbo v5, "Output stream"

    invoke-static {p1, v5}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lorg/apache/http/entity/InputStreamEntity;->content:Ljava/io/InputStream;

    .line 127
    .local v1, "instream":Ljava/io/InputStream;
    const/16 v5, 0x1000

    :try_start_d
    new-array v0, v5, [B

    .line 129
    .local v0, "buffer":[B
    iget-wide v5, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_25

    .line 131
    :goto_15
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "l":I
    if-eq v2, v8, :cond_39

    .line 132
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_20

    goto :goto_15

    .line 147
    .end local v0    # "buffer":[B
    .end local v2    # "l":I
    :catchall_20
    move-exception v5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v5

    .line 136
    .restart local v0    # "buffer":[B
    :cond_25
    :try_start_25
    iget-wide v3, p0, Lorg/apache/http/entity/InputStreamEntity;->length:J

    .line 137
    .local v3, "remaining":J
    :goto_27
    cmp-long v5, v3, v9

    if-lez v5, :cond_39

    .line 138
    const/4 v5, 0x0

    const-wide/16 v6, 0x1000

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_20

    move-result v2

    .line 139
    .restart local v2    # "l":I
    if-ne v2, v8, :cond_3d

    .line 147
    .end local v2    # "l":I
    .end local v3    # "remaining":J
    :cond_39
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 149
    return-void

    .line 142
    .restart local v2    # "l":I
    .restart local v3    # "remaining":J
    :cond_3d
    const/4 v5, 0x0

    :try_start_3e
    invoke-virtual {p1, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_20

    .line 143
    int-to-long v5, v2

    sub-long/2addr v3, v5

    goto :goto_27
.end method
