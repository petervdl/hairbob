.class public Lcom/braintree/org/bouncycastle/asn1/DERBitString;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DERBitString.java"


# static fields
.field private static final table:[C


# instance fields
.field protected data:[B

.field protected padBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->table:[C

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

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "padBits"    # I

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->data:[B

    .line 149
    iput p2, p0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->padBits:I

    .line 150
    return-void
.end method

.method static fromOctetString([B)Lcom/braintree/org/bouncycastle/asn1/DERBitString;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    array-length v2, p0

    if-ge v2, v4, :cond_e

    .line 264
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "truncated BIT STRING detected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_e
    aget-byte v1, p0, v3

    .line 268
    .local v1, "padBits":I
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [B

    .line 270
    .local v0, "data":[B
    array-length v2, v0

    if-eqz v2, :cond_1e

    .line 272
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-static {p0, v4, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    :cond_1e
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v2, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-object v2
.end method


# virtual methods
.method protected asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 6
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    const/4 v1, 0x0

    .line 218
    instance-of v2, p1, Lcom/braintree/org/bouncycastle/asn1/DERBitString;

    if-nez v2, :cond_6

    .line 225
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 223
    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;

    .line 225
    .local v0, "other":Lcom/braintree/org/bouncycastle/asn1/DERBitString;
    iget v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->padBits:I

    iget v3, v0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->padBits:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->data:[B

    iget-object v3, v0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->data:[B

    invoke-static {v2, v3}, Lcom/braintree/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 7
    .param p1, "out"    # Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 204
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 205
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 208
    return-void
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->data:[B

    return-object v0
.end method

.method public getPadBits()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->padBits:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 231
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v6, "#"

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 232
    .local v2, "buf":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 237
    .local v0, "aOut":Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_12
    invoke-virtual {v0, p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_38

    .line 244
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 246
    .local v5, "string":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    array-length v6, v5

    if-eq v4, v6, :cond_42

    .line 248
    sget-object v6, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    ushr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    sget-object v6, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 246
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 239
    .end local v4    # "i":I
    .end local v5    # "string":[B
    :catch_38
    move-exception v3

    .line 241
    .local v3, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "internal error encoding BitString"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 252
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i":I
    .restart local v5    # "string":[B
    :cond_42
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 212
    iget v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->padBits:I

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->data:[B

    invoke-static {v1}, Lcom/braintree/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
