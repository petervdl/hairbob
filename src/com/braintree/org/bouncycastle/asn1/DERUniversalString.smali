.class public Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DERUniversalString.java"


# static fields
.field private static final table:[C


# instance fields
.field private string:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->table:[C

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>([B)V
    .registers 2
    .param p1, "string"    # [B

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->string:[B

    .line 64
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 4
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    .line 112
    instance-of v0, p1, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;

    if-nez v0, :cond_6

    .line 114
    const/4 v0, 0x0

    .line 117
    .end local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :goto_5
    return v0

    .restart local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :cond_6
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;

    .end local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    invoke-virtual {p1}, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .param p1, "out"    # Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/16 v0, 0x1c

    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 107
    return-void
.end method

.method public getOctets()[B
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->string:[B

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 68
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v6, "#"

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 74
    .local v0, "aOut":Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_12
    invoke-virtual {v0, p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_38

    .line 81
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 83
    .local v5, "string":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    array-length v6, v5

    if-eq v4, v6, :cond_42

    .line 85
    sget-object v6, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->table:[C

    aget-byte v7, v5, v4

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    sget-object v6, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->table:[C

    aget-byte v7, v5, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 76
    .end local v4    # "i":I
    .end local v5    # "string":[B
    :catch_38
    move-exception v3

    .line 78
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "internal error encoding BitString"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 89
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "string":[B
    :cond_42
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
