.class public Lorg/apache/http/entity/BasicHttpEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "BasicHttpEntity.java"


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private length:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->length:J

    .line 58
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    const-string/jumbo v1, "Content has not been provided"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 75
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    return-object v0

    .line 74
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->length:J

    return-wide v0
.end method

.method public isRepeatable()Z
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public isStreaming()Z
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setContent(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/apache/http/entity/BasicHttpEntity;->content:Ljava/io/InputStream;

    .line 105
    return-void
.end method

.method public setContentLength(J)V
    .registers 3
    .param p1, "len"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lorg/apache/http/entity/BasicHttpEntity;->length:J

    .line 95
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const-string/jumbo v3, "Output stream"

    invoke-static {p1, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lorg/apache/http/entity/BasicHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 112
    .local v0, "instream":Ljava/io/InputStream;
    const/16 v3, 0x1000

    :try_start_c
    new-array v2, v3, [B

    .line 113
    .local v2, "tmp":[B
    :goto_e
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1f

    .line 114
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1a

    goto :goto_e

    .line 117
    .end local v1    # "l":I
    .end local v2    # "tmp":[B
    :catchall_1a
    move-exception v3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v3

    .restart local v1    # "l":I
    .restart local v2    # "tmp":[B
    :cond_1f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    return-void
.end method
