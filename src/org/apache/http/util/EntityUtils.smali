.class public final Lorg/apache/http/util/EntityUtils;
.super Ljava/lang/Object;
.source "EntityUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .registers 2
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    check-cast v0, Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "defaultCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 270
    if-eqz p1, :cond_b

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_6
    invoke-static {p0, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static toString(Lorg/apache/http/HttpEntity;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 16
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .param p1, "defaultCharset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 213
    const-string/jumbo v10, "Entity"

    invoke-static {p0, v10}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 215
    .local v5, "instream":Ljava/io/InputStream;
    if-nez v5, :cond_f

    .line 216
    const/4 v9, 0x0

    .line 249
    :goto_e
    return-object v9

    .line 219
    :cond_f
    :try_start_f
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v10, v10, v12

    if-gtz v10, :cond_1b

    const/4 v9, 0x1

    :cond_1b
    const-string/jumbo v10, "HTTP entity too large to be buffered in memory"

    invoke-static {v9, v10}, Lorg/apache/http/util/Args;->check(ZLjava/lang/String;)V

    .line 221
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_56

    move-result-wide v9

    long-to-int v4, v9

    .line 222
    .local v4, "i":I
    if-gez v4, :cond_2a

    .line 223
    const/16 v4, 0x1000

    .line 225
    :cond_2a
    const/4 v1, 0x0

    .line 227
    .local v1, "charset":Ljava/nio/charset/Charset;
    :try_start_2b
    invoke-static {p0}, Lorg/apache/http/entity/ContentType;->get(Lorg/apache/http/HttpEntity;)Lorg/apache/http/entity/ContentType;

    move-result-object v2

    .line 228
    .local v2, "contentType":Lorg/apache/http/entity/ContentType;
    if-eqz v2, :cond_35

    .line 229
    invoke-virtual {v2}, Lorg/apache/http/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;
    :try_end_34
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2b .. :try_end_34} :catch_5b
    .catchall {:try_start_2b .. :try_end_34} :catchall_56

    move-result-object v1

    .line 234
    :cond_35
    if-nez v1, :cond_38

    .line 235
    move-object v1, p1

    .line 237
    :cond_38
    if-nez v1, :cond_3c

    .line 238
    :try_start_3a
    sget-object v1, Lorg/apache/http/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    .line 240
    :cond_3c
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 241
    .local v7, "reader":Ljava/io/Reader;
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v4}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 242
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v9, 0x400

    new-array v8, v9, [C

    .line 244
    .local v8, "tmp":[C
    :goto_4a
    invoke-virtual {v7, v8}, Ljava/io/Reader;->read([C)I

    move-result v6

    .local v6, "l":I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_66

    .line 245
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_55
    .catchall {:try_start_3a .. :try_end_55} :catchall_56

    goto :goto_4a

    .line 249
    .end local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .end local v1    # "charset":Ljava/nio/charset/Charset;
    .end local v2    # "contentType":Lorg/apache/http/entity/ContentType;
    .end local v4    # "i":I
    .end local v6    # "l":I
    .end local v7    # "reader":Ljava/io/Reader;
    .end local v8    # "tmp":[C
    :catchall_56
    move-exception v9

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9

    .line 231
    .restart local v1    # "charset":Ljava/nio/charset/Charset;
    .restart local v4    # "i":I
    :catch_5b
    move-exception v3

    .line 232
    .local v3, "ex":Ljava/nio/charset/UnsupportedCharsetException;
    :try_start_5c
    new-instance v9, Ljava/io/UnsupportedEncodingException;

    invoke-virtual {v3}, Ljava/nio/charset/UnsupportedCharsetException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 247
    .end local v3    # "ex":Ljava/nio/charset/UnsupportedCharsetException;
    .restart local v0    # "buffer":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v2    # "contentType":Lorg/apache/http/entity/ContentType;
    .restart local v6    # "l":I
    .restart local v7    # "reader":Ljava/io/Reader;
    .restart local v8    # "tmp":[C
    :cond_66
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_56

    move-result-object v9

    .line 249
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    goto :goto_e
.end method
