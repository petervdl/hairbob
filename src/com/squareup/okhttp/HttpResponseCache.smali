.class public final Lcom/squareup/okhttp/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;,
        Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;,
        Lcom/squareup/okhttp/HttpResponseCache$Entry;,
        Lcom/squareup/okhttp/HttpResponseCache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final DIGITS:[C


# instance fields
.field private final cache:Lcom/squareup/okhttp/internal/DiskLruCache;

.field final okResponseCache:Lcom/squareup/okhttp/OkResponseCache;

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 122
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/squareup/okhttp/HttpResponseCache;->DIGITS:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .registers 3
    .param p1, "editor"    # Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .prologue
    .line 315
    if-eqz p1, :cond_5

    .line 316
    :try_start_2
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 320
    :cond_5
    :goto_5
    return-void

    .line 318
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static synthetic access$1000(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    .line 121
    invoke-static {p0}, Lcom/squareup/okhttp/HttpResponseCache;->newBodyInputStream(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$808(Lcom/squareup/okhttp/HttpResponseCache;)I
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache;

    .prologue
    .line 121
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$908(Lcom/squareup/okhttp/HttpResponseCache;)I
    .registers 3
    .param p0, "x0"    # Lcom/squareup/okhttp/HttpResponseCache;

    .prologue
    .line 121
    iget v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/okhttp/HttpResponseCache;->writeAbortCount:I

    return v0
.end method

.method private static bytesToHexString([B)Ljava/lang/String;
    .registers 10
    .param p0, "bytes"    # [B

    .prologue
    .line 191
    sget-object v5, Lcom/squareup/okhttp/HttpResponseCache;->DIGITS:[C

    .line 192
    .local v5, "digits":[C
    array-length v8, p0

    mul-int/lit8 v8, v8, 0x2

    new-array v2, v8, [C

    .line 193
    .local v2, "buf":[C
    const/4 v3, 0x0

    .line 194
    .local v3, "c":I
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v7, v0

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v4, v3

    .end local v3    # "c":I
    .local v4, "c":I
    :goto_c
    if-ge v6, v7, :cond_25

    aget-byte v1, v0, v6

    .line 195
    .local v1, "b":B
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "c":I
    .restart local v3    # "c":I
    shr-int/lit8 v8, v1, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-char v8, v5, v8

    aput-char v8, v2, v4

    .line 196
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "c":I
    .restart local v4    # "c":I
    and-int/lit8 v8, v1, 0xf

    aget-char v8, v5, v8

    aput-char v8, v2, v3

    .line 194
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 198
    .end local v1    # "b":B
    :cond_25
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    return-object v8
.end method

.method private getHttpEngine(Ljava/net/URLConnection;)Lcom/squareup/okhttp/internal/http/HttpEngine;
    .registers 3
    .param p1, "httpConnection"    # Ljava/net/URLConnection;

    .prologue
    .line 323
    instance-of v0, p1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_b

    .line 324
    check-cast p1, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    .end local p1    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;->getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    .line 328
    :goto_a
    return-object v0

    .line 325
    .restart local p1    # "httpConnection":Ljava/net/URLConnection;
    :cond_b
    instance-of v0, p1, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_16

    .line 326
    check-cast p1, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;

    .end local p1    # "httpConnection":Ljava/net/URLConnection;
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/HttpsURLConnectionImpl;->getHttpEngine()Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v0

    goto :goto_a

    .line 328
    .restart local p1    # "httpConnection":Ljava/net/URLConnection;
    :cond_16
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private maybeRemove(Ljava/lang/String;Ljava/net/URI;)Z
    .registers 5
    .param p1, "requestMethod"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/net/URI;

    .prologue
    .line 277
    const-string/jumbo v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 280
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/squareup/okhttp/HttpResponseCache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0, p2}, Lcom/squareup/okhttp/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_28

    .line 284
    :goto_24
    const/4 v0, 0x1

    .line 286
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25

    .line 281
    :catch_28
    move-exception v0

    goto :goto_24
.end method

.method private static newBodyInputStream(Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .registers 3
    .param p0, "snapshot"    # Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    .line 667
    new-instance v0, Lcom/squareup/okhttp/HttpResponseCache$2;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/okhttp/HttpResponseCache$2;-><init>(Ljava/io/InputStream;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V

    return-object v0
.end method

.method private uriToKey(Ljava/net/URI;)Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 180
    :try_start_0
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 181
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 182
    .local v1, "md5bytes":[B
    invoke-static {v1}, Lcom/squareup/okhttp/HttpResponseCache;->bytesToHexString([B)Ljava/lang/String;
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_19} :catch_1b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_19} :catch_22

    move-result-object v3

    return-object v3

    .line 183
    .end local v1    # "md5bytes":[B
    .end local v2    # "messageDigest":Ljava/security/MessageDigest;
    :catch_1b
    move-exception v0

    .line 184
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 185
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_22
    move-exception v0

    .line 186
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 10
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "requestMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .prologue
    .local p3, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 203
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "key":Ljava/lang/String;
    :try_start_5
    iget-object v5, p0, Lcom/squareup/okhttp/HttpResponseCache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v3

    .line 208
    .local v3, "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v3, :cond_e

    .line 222
    .end local v3    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :goto_d
    return-object v4

    .line 211
    .restart local v3    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :cond_e
    new-instance v1, Lcom/squareup/okhttp/HttpResponseCache$Entry;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/squareup/okhttp/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_18} :catch_22

    .line 217
    .local v1, "entry":Lcom/squareup/okhttp/HttpResponseCache$Entry;
    invoke-virtual {v1, p1, p2, p3}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 218
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;->close()V

    goto :goto_d

    .line 212
    .end local v1    # "entry":Lcom/squareup/okhttp/HttpResponseCache$Entry;
    .end local v3    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :catch_22
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    goto :goto_d

    .line 222
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "entry":Lcom/squareup/okhttp/HttpResponseCache$Entry;
    .restart local v3    # "snapshot":Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;
    :cond_24
    # invokes: Lcom/squareup/okhttp/HttpResponseCache$Entry;->isHttps()Z
    invoke-static {v1}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->access$400(Lcom/squareup/okhttp/HttpResponseCache$Entry;)Z

    move-result v4

    if-eqz v4, :cond_30

    new-instance v4, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;

    invoke-direct {v4, v1, v3}, Lcom/squareup/okhttp/HttpResponseCache$EntrySecureCacheResponse;-><init>(Lcom/squareup/okhttp/HttpResponseCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V

    goto :goto_d

    :cond_30
    new-instance v4, Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;

    invoke-direct {v4, v1, v3}, Lcom/squareup/okhttp/HttpResponseCache$EntryCacheResponse;-><init>(Lcom/squareup/okhttp/HttpResponseCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$Snapshot;)V

    goto :goto_d
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 14
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 227
    instance-of v9, p2, Ljava/net/HttpURLConnection;

    if-nez v9, :cond_6

    .line 268
    :cond_5
    :goto_5
    return-object v8

    :cond_6
    move-object v3, p2

    .line 231
    check-cast v3, Ljava/net/HttpURLConnection;

    .line 232
    .local v3, "httpConnection":Ljava/net/HttpURLConnection;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "requestMethod":Ljava/lang/String;
    invoke-direct {p0, v5, p1}, Lcom/squareup/okhttp/HttpResponseCache;->maybeRemove(Ljava/lang/String;Ljava/net/URI;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 237
    const-string/jumbo v9, "GET"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 244
    invoke-direct {p0, v3}, Lcom/squareup/okhttp/HttpResponseCache;->getHttpEngine(Ljava/net/URLConnection;)Lcom/squareup/okhttp/internal/http/HttpEngine;

    move-result-object v4

    .line 245
    .local v4, "httpEngine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    if-eqz v4, :cond_5

    .line 250
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getResponseHeaders()Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    move-result-object v6

    .line 251
    .local v6, "response":Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->hasVaryAll()Z

    move-result v9

    if-nez v9, :cond_5

    .line 255
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/HttpEngine;->getRequestHeaders()Lcom/squareup/okhttp/internal/http/RequestHeaders;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v9

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/squareup/okhttp/internal/http/RawHeaders;

    move-result-object v7

    .line 257
    .local v7, "varyHeaders":Lcom/squareup/okhttp/internal/http/RawHeaders;
    new-instance v2, Lcom/squareup/okhttp/HttpResponseCache$Entry;

    invoke-direct {v2, p1, v7, v3}, Lcom/squareup/okhttp/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 258
    .local v2, "entry":Lcom/squareup/okhttp/HttpResponseCache$Entry;
    const/4 v1, 0x0

    .line 260
    .local v1, "editor":Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    :try_start_42
    iget-object v9, p0, Lcom/squareup/okhttp/HttpResponseCache;->cache:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/squareup/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_5

    .line 264
    invoke-virtual {v2, v1}, Lcom/squareup/okhttp/HttpResponseCache$Entry;->writeTo(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    .line 265
    new-instance v9, Lcom/squareup/okhttp/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v9, p0, v1}, Lcom/squareup/okhttp/HttpResponseCache$CacheRequestImpl;-><init>(Lcom/squareup/okhttp/HttpResponseCache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_56} :catch_58

    move-object v8, v9

    goto :goto_5

    .line 266
    :catch_58
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v1}, Lcom/squareup/okhttp/HttpResponseCache;->abortQuietly(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    goto :goto_5
.end method
