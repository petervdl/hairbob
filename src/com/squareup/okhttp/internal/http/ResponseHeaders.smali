.class public final Lcom/squareup/okhttp/internal/http/ResponseHeaders;
.super Ljava/lang/Object;
.source "ResponseHeaders.java"


# static fields
.field private static final RECEIVED_MILLIS:Ljava/lang/String;

.field static final RESPONSE_SOURCE:Ljava/lang/String;

.field static final SELECTED_TRANSPORT:Ljava/lang/String;

.field private static final SENT_MILLIS:Ljava/lang/String;


# instance fields
.field private ageSeconds:I

.field private connection:Ljava/lang/String;

.field private contentEncoding:Ljava/lang/String;

.field private contentLength:I

.field private etag:Ljava/lang/String;

.field private expires:Ljava/util/Date;

.field private final headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

.field private isPublic:Z

.field private lastModified:Ljava/util/Date;

.field private maxAgeSeconds:I

.field private mustRevalidate:Z

.field private noCache:Z

.field private noStore:Z

.field private receivedResponseMillis:J

.field private sMaxAgeSeconds:I

.field private sentRequestMillis:J

.field private servedDate:Ljava/util/Date;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private varyFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Sent-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->SENT_MILLIS:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Received-Millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Response-Source"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/squareup/okhttp/internal/Platform;->get()Lcom/squareup/okhttp/internal/Platform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/Platform;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-Selected-Transport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->SELECTED_TRANSPORT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
    .registers 13
    .param p1, "uri"    # Ljava/net/URI;
    .param p2, "headers"    # Lcom/squareup/okhttp/internal/http/RawHeaders;

    .prologue
    const/4 v9, -0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    .line 98
    iput v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    .line 110
    iput v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->ageSeconds:I

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 117
    iput v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentLength:I

    .line 121
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    .line 122
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    .line 124
    new-instance v2, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;

    invoke-direct {v2, p0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders$1;-><init>(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)V

    .line 142
    .local v2, "handler":Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v8

    if-ge v3, v8, :cond_129

    .line 143
    invoke-virtual {p2, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "fieldName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v8, "Cache-Control"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 146
    invoke-static {v6, v2}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/squareup/okhttp/internal/http/HeaderParser$CacheControlHandler;)V

    .line 142
    :cond_36
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 147
    :cond_39
    const-string/jumbo v8, "Date"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 148
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    goto :goto_36

    .line 149
    :cond_49
    const-string/jumbo v8, "Expires"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 150
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    goto :goto_36

    .line 151
    :cond_59
    const-string/jumbo v8, "Last-Modified"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 152
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HttpDate;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    goto :goto_36

    .line 153
    :cond_69
    const-string/jumbo v8, "ETag"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_75

    .line 154
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    goto :goto_36

    .line 155
    :cond_75
    const-string/jumbo v8, "Pragma"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8b

    .line 156
    const-string/jumbo v8, "no-cache"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 157
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noCache:Z

    goto :goto_36

    .line 159
    :cond_8b
    const-string/jumbo v8, "Age"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 160
    invoke-static {v6}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->ageSeconds:I

    goto :goto_36

    .line 161
    :cond_9b
    const-string/jumbo v8, "Vary"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ce

    .line 163
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 164
    new-instance v8, Ljava/util/TreeSet;

    sget-object v9, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    .line 166
    :cond_b5
    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_be
    if-ge v4, v5, :cond_36

    aget-object v7, v0, v4

    .line 167
    .local v7, "varyField":Ljava/lang/String;
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v4, v4, 0x1

    goto :goto_be

    .line 169
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "varyField":Ljava/lang/String;
    :cond_ce
    const-string/jumbo v8, "Content-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 170
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    goto/16 :goto_36

    .line 171
    :cond_db
    const-string/jumbo v8, "Transfer-Encoding"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e8

    .line 172
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    goto/16 :goto_36

    .line 173
    :cond_e8
    const-string/jumbo v8, "Content-Length"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fc

    .line 175
    :try_start_f1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentLength:I
    :try_end_f7
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_f7} :catch_f9

    goto/16 :goto_36

    .line 176
    :catch_f9
    move-exception v8

    goto/16 :goto_36

    .line 178
    :cond_fc
    const-string/jumbo v8, "Connection"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_109

    .line 179
    iput-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->connection:Ljava/lang/String;

    goto/16 :goto_36

    .line 180
    :cond_109
    sget-object v8, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_119

    .line 181
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sentRequestMillis:J

    goto/16 :goto_36

    .line 182
    :cond_119
    sget-object v8, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    .line 183
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    goto/16 :goto_36

    .line 186
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_129
    return-void
.end method

.method static synthetic access$002(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noStore:Z

    return p1
.end method

.method static synthetic access$202(Lcom/squareup/okhttp/internal/http/ResponseHeaders;I)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/squareup/okhttp/internal/http/ResponseHeaders;I)I
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isPublic:Z

    return p1
.end method

.method static synthetic access$502(Lcom/squareup/okhttp/internal/http/ResponseHeaders;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->mustRevalidate:Z

    return p1
.end method

.method private computeAge(J)J
    .registers 15
    .param p1, "nowMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 294
    iget-object v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v8, :cond_13

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    iget-object v10, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 296
    .local v0, "apparentReceivedAge":J
    :cond_13
    iget v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->ageSeconds:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_33

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->ageSeconds:I

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 299
    .local v2, "receivedAge":J
    :goto_25
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sentRequestMillis:J

    sub-long v6, v8, v10

    .line 300
    .local v6, "responseDuration":J
    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    sub-long v4, p1, v8

    .line 301
    .local v4, "residentDuration":J
    add-long v8, v2, v6

    add-long/2addr v8, v4

    return-wide v8

    .end local v2    # "receivedAge":J
    .end local v4    # "residentDuration":J
    .end local v6    # "responseDuration":J
    :cond_33
    move-wide v2, v0

    .line 296
    goto :goto_25
.end method

.method private computeFreshnessLifetime()J
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    .line 309
    iget v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_11

    .line 310
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    .line 324
    :cond_10
    :goto_10
    return-wide v4

    .line 311
    :cond_11
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-eqz v6, :cond_32

    .line 312
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 313
    .local v2, "servedMillis":J
    :goto_1f
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v6, v2

    .line 314
    .local v0, "delta":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_30

    .end local v0    # "delta":J
    :goto_2b
    move-wide v4, v0

    goto :goto_10

    .line 312
    .end local v2    # "servedMillis":J
    :cond_2d
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    goto :goto_1f

    .restart local v0    # "delta":J
    .restart local v2    # "servedMillis":J
    :cond_30
    move-wide v0, v4

    .line 314
    goto :goto_2b

    .line 315
    .end local v0    # "delta":J
    .end local v2    # "servedMillis":J
    :cond_32
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-virtual {v6}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_10

    .line 320
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v6, :cond_59

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 321
    .restart local v2    # "servedMillis":J
    :goto_48
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v0, v2, v6

    .line 322
    .restart local v0    # "delta":J
    cmp-long v6, v0, v4

    if-lez v6, :cond_10

    const-wide/16 v4, 0xa

    div-long v4, v0, v4

    goto :goto_10

    .line 320
    .end local v0    # "delta":J
    .end local v2    # "servedMillis":J
    :cond_59
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sentRequestMillis:J

    goto :goto_48
.end method

.method private static isEndToEnd(Ljava/lang/String;)Z
    .registers 2
    .param p0, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 496
    const-string/jumbo v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const-string/jumbo v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    :goto_49
    return v0

    :cond_4a
    const/4 v0, 0x0

    goto :goto_49
.end method

.method private isFreshnessLifetimeHeuristic()Z
    .registers 3

    .prologue
    .line 333
    iget v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->maxAgeSeconds:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->expires:Ljava/util/Date;

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public chooseResponseSource(JLcom/squareup/okhttp/internal/http/RequestHeaders;)Lcom/squareup/okhttp/ResponseSource;
    .registers 19
    .param p1, "nowMillis"    # J
    .param p3, "request"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;

    .prologue
    .line 392
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isCacheable(Lcom/squareup/okhttp/internal/http/RequestHeaders;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 393
    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    .line 438
    :goto_a
    return-object v11

    .line 396
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->isNoCache()Z

    move-result v11

    if-nez v11, :cond_17

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasConditions()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 397
    :cond_17
    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    goto :goto_a

    .line 400
    :cond_1a
    invoke-direct/range {p0 .. p2}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->computeAge(J)J

    move-result-wide v1

    .line 401
    .local v1, "ageMillis":J
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->computeFreshnessLifetime()J

    move-result-wide v3

    .line 403
    .local v3, "freshMillis":J
    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_38

    .line 404
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMaxAgeSeconds()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 407
    :cond_38
    const-wide/16 v7, 0x0

    .line 408
    .local v7, "minFreshMillis":J
    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4c

    .line 409
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMinFreshSeconds()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 412
    :cond_4c
    const-wide/16 v5, 0x0

    .line 413
    .local v5, "maxStaleMillis":J
    iget-boolean v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v11, :cond_64

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_64

    .line 414
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->getMaxStaleSeconds()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    .line 417
    :cond_64
    iget-boolean v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noCache:Z

    if-nez v11, :cond_9d

    add-long v11, v1, v7

    add-long v13, v3, v5

    cmp-long v11, v11, v13

    if-gez v11, :cond_9d

    .line 418
    add-long v11, v1, v7

    cmp-long v11, v11, v3

    if-ltz v11, :cond_81

    .line 419
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v12, "Warning"

    const-string/jumbo v13, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v11, v12, v13}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_81
    const-wide/32 v9, 0x5265c00

    .line 422
    .local v9, "oneDayMillis":J
    cmp-long v11, v1, v9

    if-lez v11, :cond_99

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isFreshnessLifetimeHeuristic()Z

    move-result v11

    if-eqz v11, :cond_99

    .line 423
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v12, "Warning"

    const-string/jumbo v13, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v11, v12, v13}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_99
    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->CACHE:Lcom/squareup/okhttp/ResponseSource;

    goto/16 :goto_a

    .line 428
    .end local v9    # "oneDayMillis":J
    :cond_9d
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v11, :cond_bd

    .line 429
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 434
    :cond_a8
    :goto_a8
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    if-eqz v11, :cond_b3

    .line 435
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->etag:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setIfNoneMatch(Ljava/lang/String;)V

    .line 438
    :cond_b3
    invoke-virtual/range {p3 .. p3}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasConditions()Z

    move-result v11

    if-eqz v11, :cond_c9

    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->CONDITIONAL_CACHE:Lcom/squareup/okhttp/ResponseSource;

    goto/16 :goto_a

    .line 430
    :cond_bd
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    if-eqz v11, :cond_a8

    .line 431
    iget-object v11, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->servedDate:Ljava/util/Date;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    goto :goto_a8

    .line 438
    :cond_c9
    sget-object v11, Lcom/squareup/okhttp/ResponseSource;->NETWORK:Lcom/squareup/okhttp/ResponseSource;

    goto/16 :goto_a
.end method

.method public combine(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .registers 8
    .param p1, "network"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    new-instance v2, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 468
    .local v2, "result":Lcom/squareup/okhttp/internal/http/RawHeaders;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_4a

    .line 471
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "fieldName":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 473
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "Warning"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 470
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 476
    :cond_38
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    iget-object v4, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_35

    .line 477
    :cond_46
    invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 481
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    iget-object v4, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->length()I

    move-result v4

    if-ge v1, v4, :cond_6b

    .line 482
    iget-object v4, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    .restart local v0    # "fieldName":Ljava/lang/String;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 484
    iget-object v4, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v4, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 488
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_6b
    new-instance v4, Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->uri:Ljava/net/URI;

    invoke-direct {v4, v5, v2}, Lcom/squareup/okhttp/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    return-object v4
.end method

.method public getContentLength()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentLength:I

    return v0
.end method

.method public getHeaders()Lcom/squareup/okhttp/internal/http/RawHeaders;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    return-object v0
.end method

.method public getVaryFields()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    return-object v0
.end method

.method public hasConnectionClose()Z
    .registers 3

    .prologue
    .line 207
    const-string/jumbo v0, "close"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasVaryAll()Z
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    const-string/jumbo v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCacheable(Lcom/squareup/okhttp/internal/http/RequestHeaders;)Z
    .registers 6
    .param p1, "request"    # Lcom/squareup/okhttp/internal/http/RequestHeaders;

    .prologue
    const/4 v1, 0x0

    .line 343
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v0

    .line 344
    .local v0, "responseCode":I
    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1c

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x12c

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x12d

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x19a

    if-eq v0, v2, :cond_1c

    .line 362
    :cond_1b
    :goto_1b
    return v1

    .line 354
    :cond_1c
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/RequestHeaders;->hasAuthorization()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->isPublic:Z

    if-nez v2, :cond_2f

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->mustRevalidate:Z

    if-nez v2, :cond_2f

    iget v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sMaxAgeSeconds:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1b

    .line 358
    :cond_2f
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->noStore:Z

    if-nez v2, :cond_1b

    .line 362
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method public isChunked()Z
    .registers 3

    .prologue
    .line 203
    const-string/jumbo v0, "chunked"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isContentEncodingGzip()Z
    .registers 3

    .prologue
    .line 189
    const-string/jumbo v0, "gzip"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLocalTimestamps(JJ)V
    .registers 8
    .param p1, "sentRequestMillis"    # J
    .param p3, "receivedResponseMillis"    # J

    .prologue
    .line 275
    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->sentRequestMillis:J

    .line 276
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    sget-object v1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->SENT_MILLIS:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iput-wide p3, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->receivedResponseMillis:J

    .line 278
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    sget-object v1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->RECEIVED_MILLIS:Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public setResponseSource(Lcom/squareup/okhttp/ResponseSource;)V
    .registers 6
    .param p1, "responseSource"    # Lcom/squareup/okhttp/ResponseSource;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    sget-object v1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->RESPONSE_SOURCE:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseSource;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public setTransport(Ljava/lang/String;)V
    .registers 4
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    sget-object v1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->SELECTED_TRANSPORT:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method

.method public stripContentEncoding()V
    .registers 3

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentEncoding:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public stripContentLength()V
    .registers 3

    .prologue
    .line 198
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->contentLength:I

    .line 199
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public validate(Lcom/squareup/okhttp/internal/http/ResponseHeaders;)Z
    .registers 7
    .param p1, "networkResponse"    # Lcom/squareup/okhttp/internal/http/ResponseHeaders;

    .prologue
    const/4 v0, 0x1

    .line 446
    iget-object v1, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->headers:Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x130

    if-ne v1, v2, :cond_c

    .line 459
    :cond_b
    :goto_b
    return v0

    .line 453
    :cond_c
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_24

    iget-object v1, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    if-eqz v1, :cond_24

    iget-object v1, p1, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->lastModified:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_b

    .line 459
    :cond_24
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public varyMatches(Ljava/util/Map;Ljava/util/Map;)Z
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
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, "cachedRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "newRequest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ResponseHeaders;->varyFields:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    .local v0, "field":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 381
    const/4 v2, 0x0

    .line 384
    .end local v0    # "field":Ljava/lang/String;
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x1

    goto :goto_21
.end method
