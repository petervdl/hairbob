.class public final Lcom/squareup/okhttp/internal/http/RawHeaders;
.super Ljava/lang/Object;
.source "RawHeaders.java"


# static fields
.field private static final FIELD_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private httpMinorVersion:I

.field private final namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestLine:Ljava/lang/String;

.field private responseCode:I

.field private responseMessage:Ljava/lang/String;

.field private statusLine:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Lcom/squareup/okhttp/internal/http/RawHeaders$1;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders$1;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/http/RawHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/internal/http/RawHeaders;)V
    .registers 4
    .param p1, "copyFrom"    # Lcom/squareup/okhttp/internal/http/RawHeaders;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    .line 80
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    .line 82
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    .line 83
    iget v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    .line 84
    iget v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    iput v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    .line 85
    iget-object v0, p1, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    .line 86
    return-void
.end method

.method private addLenient(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public static fromBytes(Ljava/io/InputStream;)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    :cond_0
    new-instance v0, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 308
    .local v0, "headers":Lcom/squareup/okhttp/internal/http/RawHeaders;
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 309
    invoke-static {p0, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->readHeaders(Ljava/io/InputStream;Lcom/squareup/okhttp/internal/http/RawHeaders;)V

    .line 310
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 311
    return-object v0
.end method

.method public static fromMultimap(Ljava/util/Map;Z)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .registers 10
    .param p1, "response"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)",
            "Lcom/squareup/okhttp/internal/http/RawHeaders;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p1, :cond_8

    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 357
    :cond_8
    new-instance v4, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 358
    .local v4, "result":Lcom/squareup/okhttp/internal/http/RawHeaders;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 359
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 360
    .local v1, "fieldName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 361
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_43

    .line 362
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 363
    .local v5, "value":Ljava/lang/String;
    invoke-direct {v4, v1, v5}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLenient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 365
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "value":Ljava/lang/String;
    :cond_43
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_15

    .line 366
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    goto :goto_15

    .line 369
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_59
    return-object v4
.end method

.method public static fromNameValueBlock(Ljava/util/List;)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/okhttp/internal/http/RawHeaders;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    .local p0, "nameValueBlock":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_22

    .line 414
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unexpected name value block: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 416
    :cond_22
    const/4 v5, 0x0

    .line 417
    .local v5, "status":Ljava/lang/String;
    const/4 v8, 0x0

    .line 418
    .local v8, "version":Ljava/lang/String;
    new-instance v3, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 419
    .local v3, "result":Lcom/squareup/okhttp/internal/http/RawHeaders;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_7b

    .line 420
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 421
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-interface {p0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 422
    .local v7, "values":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "start":I
    :goto_3f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_78

    .line 423
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 424
    .local v0, "end":I
    const/4 v9, -0x1

    if-ne v0, v9, :cond_51

    .line 425
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 427
    :cond_51
    invoke-virtual {v7, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v9, ":status"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 429
    move-object v5, v6

    .line 436
    :goto_5f
    add-int/lit8 v4, v0, 0x1

    .line 437
    goto :goto_3f

    .line 430
    :cond_62
    const-string/jumbo v9, ":version"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 431
    move-object v8, v6

    goto :goto_5f

    .line 433
    :cond_6d
    iget-object v9, v3, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v9, v3, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 419
    .end local v0    # "end":I
    .end local v6    # "value":Ljava/lang/String;
    :cond_78
    add-int/lit8 v1, v1, 0x2

    goto :goto_2a

    .line 439
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "start":I
    .end local v7    # "values":Ljava/lang/String;
    :cond_7b
    if-nez v5, :cond_86

    new-instance v9, Ljava/net/ProtocolException;

    const-string/jumbo v10, "Expected \':status\' header not present"

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 440
    :cond_86
    if-nez v8, :cond_91

    new-instance v9, Ljava/net/ProtocolException;

    const-string/jumbo v10, "Expected \':version\' header not present"

    invoke-direct {v9, v10}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 441
    :cond_91
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/squareup/okhttp/internal/http/RawHeaders;->setStatusLine(Ljava/lang/String;)V

    .line 442
    return-object v3
.end method

.method public static readHeaders(Ljava/io/InputStream;Lcom/squareup/okhttp/internal/http/RawHeaders;)V
    .registers 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Lcom/squareup/okhttp/internal/http/RawHeaders;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    :goto_0
    invoke-static {p0}, Lcom/squareup/okhttp/internal/Util;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 319
    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLine(Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :cond_e
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 180
    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fieldname == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_d
    if-nez p2, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_4f

    .line 183
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_4f
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLenient(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/List;)V
    .registers 6
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "headerFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 208
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, p1, v1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 210
    .end local v1    # "value":Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public addLine(Ljava/lang/String;)V
    .registers 5
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    .line 170
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 172
    const-string/jumbo v1, ""

    invoke-direct {p0, v1, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLenient(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_10
    return-void

    .line 174
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->addLenient(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public addSpdyRequestHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string/jumbo v0, ":method"

    invoke-virtual {p0, v0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, ":scheme"

    invoke-virtual {p0, v0, p5}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v0, ":path"

    invoke-virtual {p0, v0, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v0, ":version"

    invoke-virtual {p0, v0, p3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v0, ":host"

    invoke-virtual {p0, v0, p4}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x2

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 256
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 257
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    :goto_22
    return-object v1

    .line 255
    :cond_23
    add-int/lit8 v0, v0, -0x2

    goto :goto_8

    .line 260
    :cond_26
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public getAll(Ljava/util/Set;)Lcom/squareup/okhttp/internal/http/RawHeaders;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/okhttp/internal/http/RawHeaders;"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "fieldNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Lcom/squareup/okhttp/internal/http/RawHeaders;

    invoke-direct {v2}, Lcom/squareup/okhttp/internal/http/RawHeaders;-><init>()V

    .line 280
    .local v2, "result":Lcom/squareup/okhttp/internal/http/RawHeaders;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2c

    .line 281
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 282
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 283
    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_29
    add-int/lit8 v1, v1, 0x2

    goto :goto_6

    .line 286
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2c
    return-object v2
.end method

.method public getFieldName(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 228
    mul-int/lit8 v0, p1, 0x2

    .line 229
    .local v0, "fieldNameIndex":I
    if-ltz v0, :cond_c

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 230
    :cond_c
    const/4 v1, 0x0

    .line 232
    :goto_d
    return-object v1

    :cond_e
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_d
.end method

.method public getHttpMinorVersion()I
    .registers 3

    .prologue
    .line 152
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public getResponseCode()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusLine()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 246
    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 247
    .local v0, "valueIndex":I
    if-ltz v0, :cond_e

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 248
    :cond_e
    const/4 v1, 0x0

    .line 250
    :goto_f
    return-object v1

    :cond_10
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_f
.end method

.method public length()I
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public removeAll(Ljava/lang/String;)V
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_24

    .line 199
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 200
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 198
    :cond_21
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 204
    :cond_24
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/squareup/okhttp/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public setRequestLine(Ljava/lang/String;)V
    .registers 2
    .param p1, "requestLine"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setStatusLine(Ljava/lang/String;)V
    .registers 11
    .param p1, "statusLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0xd

    const/16 v6, 0x9

    const/16 v5, 0xc

    .line 98
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 99
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "statusLine is already set"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_55

    const/4 v1, 0x1

    .line 104
    .local v1, "hasMessage":Z
    :goto_1c
    const-string/jumbo v4, "HTTP/1."

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v5, :cond_3b

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_3b

    if-eqz v1, :cond_57

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v8, :cond_57

    .line 108
    :cond_3b
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected status line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    .end local v1    # "hasMessage":Z
    :cond_55
    const/4 v1, 0x0

    goto :goto_1c

    .line 110
    .restart local v1    # "hasMessage":Z
    :cond_57
    const/4 v4, 0x7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v2, v4, -0x30

    .line 111
    .local v2, "httpMinorVersion":I
    if-ltz v2, :cond_62

    if-le v2, v6, :cond_7c

    .line 112
    :cond_62
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected status line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_7c
    const/16 v4, 0x9

    const/16 v5, 0xc

    :try_start_80
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_80 .. :try_end_87} :catch_97

    move-result v3

    .line 120
    .local v3, "responseCode":I
    if-eqz v1, :cond_b2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_8e
    iput-object v4, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseMessage:Ljava/lang/String;

    .line 121
    iput v3, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->responseCode:I

    .line 122
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    .line 123
    iput v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->httpMinorVersion:I

    .line 124
    return-void

    .line 117
    .end local v3    # "responseCode":I
    :catch_97
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/net/ProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected status line: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 120
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "responseCode":I
    :cond_b2
    const-string/jumbo v4, ""

    goto :goto_8e
.end method

.method public toBytes()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 292
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_46

    .line 294
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    add-int/lit8 v0, v0, 0x2

    goto :goto_14

    .line 299
    :cond_46
    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method public toMultimap(Z)Ljava/util/Map;
    .registers 11
    .param p1, "response"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 328
    new-instance v4, Ljava/util/TreeMap;

    sget-object v6, Lcom/squareup/okhttp/internal/http/RawHeaders;->FIELD_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v4, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 329
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_40

    .line 330
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 331
    .local v1, "fieldName":Ljava/lang/String;
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 333
    .local v5, "value":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v0, "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 335
    .local v3, "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_33

    .line 336
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 338
    :cond_33
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 341
    .end local v0    # "allValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "fieldName":Ljava/lang/String;
    .end local v3    # "otherValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :cond_40
    if-eqz p1, :cond_58

    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    if-eqz v6, :cond_58

    .line 342
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->statusLine:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_53
    :goto_53
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    return-object v6

    .line 343
    :cond_58
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    if-eqz v6, :cond_53

    .line 344
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->requestLine:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53
.end method

.method public toNameValueBlock()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 379
    .local v3, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_a2

    .line 381
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/squareup/okhttp/internal/http/RawHeaders;->namesAndValues:Ljava/util/List;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 385
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "connection"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    const-string/jumbo v6, "host"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    const-string/jumbo v6, "keep-alive"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    const-string/jumbo v6, "proxy-connection"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_58

    const-string/jumbo v6, "transfer-encoding"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5b

    .line 380
    :cond_58
    :goto_58
    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    .line 394
    :cond_5b
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 395
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 401
    :cond_68
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_69
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_58

    .line 402
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9f

    .line 403
    add-int/lit8 v7, v1, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v1, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "\u0000"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_58

    .line 401
    :cond_9f
    add-int/lit8 v1, v1, 0x2

    goto :goto_69

    .line 408
    .end local v1    # "j":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_a2
    return-object v4
.end method
