.class public Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "UUIDSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# static fields
.field static final HEX_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static final _appendInt(I[BI)V
    .registers 4
    .param p0, "value"    # I
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 107
    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 108
    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 109
    add-int/lit8 p2, p2, 0x1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 110
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 111
    return-void
.end method

.method private static _appendInt(I[CI)V
    .registers 4
    .param p0, "bits"    # I
    .param p1, "ch"    # [C
    .param p2, "offset"    # I

    .prologue
    .line 80
    shr-int/lit8 v0, p0, 0x10

    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 81
    add-int/lit8 v0, p2, 0x4

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 82
    return-void
.end method

.method private static _appendShort(I[CI)V
    .registers 5
    .param p0, "bits"    # I
    .param p1, "ch"    # [C
    .param p2, "offset"    # I

    .prologue
    .line 86
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 87
    add-int/lit8 p2, p2, 0x1

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 88
    add-int/lit8 p2, p2, 0x1

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 89
    add-int/lit8 p2, p2, 0x1

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->HEX_CHARS:[C

    and-int/lit8 v1, p0, 0xf

    aget-char v0, v0, v1

    aput-char v0, p1, p2

    .line 91
    return-void
.end method

.method private static final _asBytes(Ljava/util/UUID;)[B
    .registers 9
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    const/16 v7, 0x20

    .line 95
    const/16 v5, 0x10

    new-array v0, v5, [B

    .line 96
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    .line 97
    .local v1, "hi":J
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    .line 98
    .local v3, "lo":J
    shr-long v5, v1, v7

    long-to-int v5, v5

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 99
    long-to-int v5, v1

    const/4 v6, 0x4

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 100
    shr-long v5, v3, v7

    long-to-int v5, v5

    const/16 v6, 0x8

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 101
    long-to-int v5, v3

    const/16 v6, 0xc

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[BI)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public bridge synthetic isEmpty(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->isEmpty(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public isEmpty(Ljava/util/UUID;)Z
    .registers 7
    .param p1, "value"    # Ljava/util/UUID;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    .line 28
    if-nez p1, :cond_6

    .line 36
    :cond_5
    :goto_5
    return v0

    .line 32
    :cond_6
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_16

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    .line 36
    :cond_16
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 18
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/UUID;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .registers 16
    .param p1, "value"    # Ljava/util/UUID;
    .param p2, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x24

    const/16 v10, 0x20

    const/4 v9, 0x0

    const/16 v8, 0x2d

    .line 44
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteBinaryNatively()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 50
    instance-of v6, p2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    if-nez v6, :cond_19

    .line 51
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_asBytes(Ljava/util/UUID;)[B

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V

    .line 76
    :goto_18
    return-void

    .line 59
    :cond_19
    new-array v0, v11, [C

    .line 60
    .local v0, "ch":[C
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 61
    .local v4, "msb":J
    shr-long v6, v4, v10

    long-to-int v6, v6

    invoke-static {v6, v0, v9}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    .line 62
    const/16 v6, 0x8

    aput-char v8, v0, v6

    .line 63
    long-to-int v1, v4

    .line 64
    .local v1, "i":I
    ushr-int/lit8 v6, v1, 0x10

    const/16 v7, 0x9

    invoke-static {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 65
    const/16 v6, 0xd

    aput-char v8, v0, v6

    .line 66
    const/16 v6, 0xe

    invoke-static {v1, v0, v6}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 67
    const/16 v6, 0x12

    aput-char v8, v0, v6

    .line 69
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 70
    .local v2, "lsb":J
    const/16 v6, 0x30

    ushr-long v6, v2, v6

    long-to-int v6, v6

    const/16 v7, 0x13

    invoke-static {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 71
    const/16 v6, 0x17

    aput-char v8, v0, v6

    .line 72
    ushr-long v6, v2, v10

    long-to-int v6, v6

    const/16 v7, 0x18

    invoke-static {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendShort(I[CI)V

    .line 73
    long-to-int v6, v2

    const/16 v7, 0x1c

    invoke-static {v6, v0, v7}, Lcom/fasterxml/jackson/databind/ser/std/UUIDSerializer;->_appendInt(I[CI)V

    .line 75
    invoke-virtual {p2, v0, v9, v11}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V

    goto :goto_18
.end method
