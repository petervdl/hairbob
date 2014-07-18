.class public final Lcom/squareup/okhttp/internal/http/RequestHeaders;
.super Ljava/lang/Object;
.source "RequestHeaders.java"


# instance fields
.field private acceptEncoding:Ljava/lang/String;

.field private connection:Ljava/lang/String;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private hasAuthorization:Z

.field private final headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private host:Ljava/lang/String;

.field private ifModifiedSince:Ljava/lang/String;

.field private ifNoneMatch:Ljava/lang/String;

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private onlyIfCached:Z

.field private proxyAuthorization:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
    .registers 10
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "headers"    # Lcom/squareup/okhttp/internal/http/RawHeaders;

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxAgeSeconds:I

    .line 32
    iput v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxStaleSeconds:I

    .line 33
    iput v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->minFreshSeconds:I

    .line 51
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:J

    .line 63
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->uri:Ljava/net/URI;

    .line 64
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 66
    new-instance v1, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;

    invoke-direct {v1, p0}, Lcom/squareup/okhttp/internal/http/RequestHeaders$1;-><init>(Lcom/squareup/okhttp/internal/http/RequestHeaders;)V

    .line 82
    .local v1, "handler":Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    if-ge v2, v4, :cond_d9

    .line 83
    invoke-virtual {p2, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "Cache-Control"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 86
    invoke-static {v3, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;)V

    .line 82
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 87
    :cond_36
    const-string/jumbo v4, "Pragma"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 88
    const-string/jumbo v4, "no-cache"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 89
    iput-boolean v6, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->noCache:Z

    goto :goto_33

    .line 91
    :cond_4b
    const-string/jumbo v4, "If-None-Match"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 92
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    goto :goto_33

    .line 93
    :cond_57
    const-string/jumbo v4, "If-Modified-Since"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_63

    .line 94
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    goto :goto_33

    .line 95
    :cond_63
    const-string/jumbo v4, "Authorization"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 96
    iput-boolean v6, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasAuthorization:Z

    goto :goto_33

    .line 97
    :cond_6f
    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 99
    :try_start_78
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:J
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_7f} :catch_80

    goto :goto_33

    .line 100
    :catch_80
    move-exception v4

    goto :goto_33

    .line 102
    :cond_82
    const-string/jumbo v4, "Transfer-Encoding"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 103
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    goto :goto_33

    .line 104
    :cond_8e
    const-string/jumbo v4, "User-Agent"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 105
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    goto :goto_33

    .line 106
    :cond_9a
    const-string/jumbo v4, "Host"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 107
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->host:Ljava/lang/String;

    goto :goto_33

    .line 108
    :cond_a6
    const-string/jumbo v4, "Connection"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 109
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    goto :goto_33

    .line 110
    :cond_b2
    const-string/jumbo v4, "Accept-Encoding"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_bf

    .line 111
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    goto/16 :goto_33

    .line 112
    :cond_bf
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 113
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    goto/16 :goto_33

    .line 114
    :cond_cc
    const-string/jumbo v4, "Proxy-Authorization"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 115
    iput-object v3, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    goto/16 :goto_33

    .line 118
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_d9
    return-void
.end method

.method static synthetic access$002(Lcom/squareup/okhttp/internal/http/RequestHeaders;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxStaleSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/http/RequestHeaders;I)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->minFreshSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/squareup/okhttp/internal/http/RequestHeaders;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->onlyIfCached:Z

    return p1
.end method


# virtual methods
.method public addCookies(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 283
    .local p1, "allCookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 285
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v3, "Cookie"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string/jumbo v3, "Cookie2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 286
    :cond_2c
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v4, v2, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addAll(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_8

    .line 289
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_38
    return-void
.end method

.method public getAcceptEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getConnection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .registers 3

    .prologue
    .line 161
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAgeSeconds()I
    .registers 2

    .prologue
    .line 141
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public getMaxStaleSeconds()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->maxStaleSeconds:I

    return v0
.end method

.method public getMinFreshSeconds()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->minFreshSeconds:I

    return v0
.end method

.method public getProxyAuthorization()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hasAuthorization()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasAuthorization:Z

    return v0
.end method

.method public hasConditions()Z
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasConnectionClose()Z
    .registers 3

    .prologue
    .line 125
    const-string/jumbo v0, "close"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isChunked()Z
    .registers 3

    .prologue
    .line 121
    const-string/jumbo v0, "chunked"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNoCache()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->noCache:Z

    return v0
.end method

.method public isOnlyIfCached()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->onlyIfCached:Z

    return v0
.end method

.method public setAcceptEncoding(Ljava/lang/String;)V
    .registers 4
    .param p1, "acceptEncoding"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 242
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 244
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setChunked()V
    .registers 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 202
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 204
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Transfer-Encoding"

    const-string/jumbo v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string/jumbo v0, "chunked"

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setConnection(Ljava/lang/String;)V
    .registers 4
    .param p1, "connection"    # Ljava/lang/String;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 234
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 236
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Connection"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setContentLength(J)V
    .registers 7
    .param p1, "contentLength"    # J

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 210
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 212
    :cond_10
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentLength:J

    .line 214
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 4
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 250
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 252
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 4
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->host:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 226
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Host"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 228
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Host"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->host:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setIfModifiedSince(Ljava/util/Date;)V
    .registers 5
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 257
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 258
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v2, "If-Modified-Since"

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 260
    :cond_c
    invoke-static {p1}, Lcom/squareup/okhttp/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "formattedDate":Ljava/lang/String;
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setIfNoneMatch(Ljava/lang/String;)V
    .registers 4
    .param p1, "ifNoneMatch"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 267
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 269
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 4
    .param p1, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 218
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 220
    :cond_c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    .line 222
    return-void
.end method
