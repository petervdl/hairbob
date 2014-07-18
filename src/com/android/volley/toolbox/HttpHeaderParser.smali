.class public Lcom/android/volley/toolbox/HttpHeaderParser;
.super Ljava/lang/Object;
.source "HttpHeaderParser.java"


# direct methods
.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .registers 23
    .param p0, "response"    # Lcom/android/volley/NetworkResponse;

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 42
    .local v9, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 44
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v11, 0x0

    .line 45
    .local v11, "serverDate":J
    const-wide/16 v14, 0x0

    .line 46
    .local v14, "serverExpires":J
    const-wide/16 v16, 0x0

    .line 47
    .local v16, "softExpire":J
    const-wide/16 v7, 0x0

    .line 48
    .local v7, "maxAge":J
    const/4 v3, 0x0

    .line 50
    .local v3, "hasCacheControl":Z
    const/4 v13, 0x0

    .line 53
    .local v13, "serverEtag":Ljava/lang/String;
    const-string/jumbo v20, "Date"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 54
    .local v4, "headerValue":Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 55
    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v11

    .line 58
    :cond_23
    const-string/jumbo v20, "Cache-Control"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "headerValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 59
    .restart local v4    # "headerValue":Ljava/lang/String;
    if-eqz v4, :cond_a1

    .line 60
    const/4 v3, 0x1

    .line 61
    const-string/jumbo v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 62
    .local v19, "tokens":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3b
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_a1

    .line 63
    aget-object v20, v19, v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .line 64
    .local v18, "token":Ljava/lang/String;
    const-string/jumbo v20, "no-cache"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_64

    const-string/jumbo v20, "no-store"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_66

    .line 65
    :cond_64
    const/4 v2, 0x0

    .line 102
    .end local v6    # "i":I
    .end local v18    # "token":Ljava/lang/String;
    .end local v19    # "tokens":[Ljava/lang/String;
    :goto_65
    return-object v2

    .line 66
    .restart local v6    # "i":I
    .restart local v18    # "token":Ljava/lang/String;
    .restart local v19    # "tokens":[Ljava/lang/String;
    :cond_66
    const-string/jumbo v20, "max-age="

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_84

    .line 68
    const/16 v20, 0x8

    :try_start_75
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_80} :catch_101

    move-result-wide v7

    .line 62
    :cond_81
    :goto_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 71
    :cond_84
    const-string/jumbo v20, "must-revalidate"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9e

    const-string/jumbo v20, "proxy-revalidate"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_81

    .line 72
    :cond_9e
    const-wide/16 v7, 0x0

    goto :goto_81

    .line 77
    .end local v6    # "i":I
    .end local v18    # "token":Ljava/lang/String;
    .end local v19    # "tokens":[Ljava/lang/String;
    :cond_a1
    const-string/jumbo v20, "Expires"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "headerValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 78
    .restart local v4    # "headerValue":Ljava/lang/String;
    if-eqz v4, :cond_b2

    .line 79
    invoke-static {v4}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseDateAsEpoch(Ljava/lang/String;)J

    move-result-wide v14

    .line 82
    :cond_b2
    const-string/jumbo v20, "ETag"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "serverEtag":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 86
    .restart local v13    # "serverEtag":Ljava/lang/String;
    if-eqz v3, :cond_f2

    .line 87
    const-wide/16 v20, 0x3e8

    mul-long v20, v20, v7

    add-long v16, v9, v20

    .line 93
    :cond_c5
    :goto_c5
    new-instance v2, Lcom/android/volley/Cache$Entry;

    invoke-direct {v2}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 94
    .local v2, "entry":Lcom/android/volley/Cache$Entry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/volley/NetworkResponse;->data:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v2, Lcom/android/volley/Cache$Entry;->data:[B

    .line 95
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/volley/NetworkResponse;->isImage:Z

    move/from16 v20, v0

    move/from16 v0, v20

    iput-boolean v0, v2, Lcom/android/volley/Cache$Entry;->isImage:Z

    .line 96
    iput-object v13, v2, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 97
    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 98
    iget-wide v0, v2, Lcom/android/volley/Cache$Entry;->softTtl:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v2, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 99
    iput-wide v11, v2, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 100
    iput-object v5, v2, Lcom/android/volley/Cache$Entry;->responseHeaders:Ljava/util/Map;

    goto/16 :goto_65

    .line 88
    .end local v2    # "entry":Lcom/android/volley/Cache$Entry;
    :cond_f2
    const-wide/16 v20, 0x0

    cmp-long v20, v11, v20

    if-lez v20, :cond_c5

    cmp-long v20, v14, v11

    if-ltz v20, :cond_c5

    .line 90
    sub-long v20, v14, v11

    add-long v16, v9, v20

    goto :goto_c5

    .line 69
    .restart local v6    # "i":I
    .restart local v18    # "token":Ljava/lang/String;
    .restart local v19    # "tokens":[Ljava/lang/String;
    :catch_101
    move-exception v20

    goto/16 :goto_81
.end method

.method public static parseCharset(Ljava/util/Map;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "Content-Type"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 125
    const-string/jumbo v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, "params":[Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_13
    array-length v4, v3

    if-ge v1, v4, :cond_3a

    .line 127
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "pair":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_37

    .line 129
    const/4 v4, 0x0

    aget-object v4, v2, v4

    const-string/jumbo v5, "charset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 130
    const/4 v4, 0x1

    aget-object v4, v2, v4

    .line 136
    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :goto_36
    return-object v4

    .line 126
    .restart local v1    # "i":I
    .restart local v2    # "pair":[Ljava/lang/String;
    .restart local v3    # "params":[Ljava/lang/String;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 136
    .end local v1    # "i":I
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :cond_3a
    const-string/jumbo v4, "ISO-8859-1"

    goto :goto_36
.end method

.method public static parseDateAsEpoch(Ljava/lang/String;)J
    .registers 4
    .param p0, "dateStr"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_7
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v1

    .line 114
    :goto_8
    return-wide v1

    .line 112
    :catch_9
    move-exception v0

    .line 114
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-wide/16 v1, 0x0

    goto :goto_8
.end method
