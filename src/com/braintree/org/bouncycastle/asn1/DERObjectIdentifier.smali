.class public Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DERObjectIdentifier.java"


# instance fields
.field identifier:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .registers 14
    .param p1, "bytes"    # [B

    .prologue
    const/16 v11, 0x2e

    .line 57
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 58
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v4, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v5, 0x0

    .line 60
    .local v5, "value":J
    const/4 v1, 0x0

    .line 61
    .local v1, "bigValue":Ljava/math/BigInteger;
    const/4 v2, 0x1

    .line 63
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    array-length v7, p1

    if-eq v3, v7, :cond_77

    .line 65
    aget-byte v7, p1, v3

    and-int/lit16 v0, v7, 0xff

    .line 67
    .local v0, "b":I
    const-wide/high16 v7, 0x80000000000000L

    cmp-long v7, v5, v7

    if-gez v7, :cond_53

    .line 69
    const-wide/16 v7, 0x80

    mul-long/2addr v7, v5

    and-int/lit8 v9, v0, 0x7f

    int-to-long v9, v9

    add-long v5, v7, v9

    .line 70
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_41

    .line 72
    if-eqz v2, :cond_39

    .line 74
    long-to-int v7, v5

    div-int/lit8 v7, v7, 0x28

    packed-switch v7, :pswitch_data_7e

    .line 84
    const/16 v7, 0x32

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    const-wide/16 v7, 0x50

    sub-long/2addr v5, v7

    .line 87
    :goto_38
    const/4 v2, 0x0

    .line 90
    :cond_39
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 92
    const-wide/16 v5, 0x0

    .line 63
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 77
    :pswitch_44
    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_38

    .line 80
    :pswitch_4a
    const/16 v7, 0x31

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    const-wide/16 v7, 0x28

    sub-long/2addr v5, v7

    .line 82
    goto :goto_38

    .line 97
    :cond_53
    if-nez v1, :cond_59

    .line 99
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    :cond_59
    const/4 v7, 0x7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 102
    and-int/lit8 v7, v0, 0x7f

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 103
    and-int/lit16 v7, v0, 0x80

    if-nez v7, :cond_41

    .line 105
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 107
    const/4 v1, 0x0

    .line 108
    const-wide/16 v5, 0x0

    goto :goto_41

    .line 113
    .end local v0    # "b":I
    :cond_77
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 114
    return-void

    .line 74
    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_44
        :pswitch_4a
    .end packed-switch
.end method

.method private writeField(Ljava/io/OutputStream;J)V
    .registers 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "fieldValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const/16 v2, 0x9

    new-array v1, v2, [B

    .line 138
    .local v1, "result":[B
    const/16 v0, 0x8

    .line 139
    .local v0, "pos":I
    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 140
    :goto_c
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-ltz v2, :cond_1f

    .line 142
    const/4 v2, 0x7

    shr-long/2addr p2, v2

    .line 143
    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_c

    .line 145
    :cond_1f
    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 146
    return-void
.end method

.method private writeField(Ljava/io/OutputStream;Ljava/math/BigInteger;)V
    .registers 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "fieldValue"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    div-int/lit8 v0, v4, 0x7

    .line 154
    .local v0, "byteCount":I
    if-nez v0, :cond_f

    .line 156
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    .line 171
    :goto_e
    return-void

    .line 160
    :cond_f
    move-object v3, p2

    .line 161
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v2, v0, [B

    .line 162
    .local v2, "tmp":[B
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_29

    .line 164
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 165
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 162
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 167
    :cond_29
    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 168
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_e
.end method


# virtual methods
.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 4
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    .line 213
    instance-of v0, p1, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_6

    .line 215
    const/4 v0, 0x0

    .line 218
    .end local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :goto_5
    return v0

    .restart local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :cond_6
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;

    .end local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    iget-object v1, p1, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 9
    .param p1, "out"    # Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    new-instance v3, Lcom/braintree/org/bouncycastle/asn1/OIDTokenizer;

    iget-object v5, p0, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v3, v5}, Lcom/braintree/org/bouncycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 178
    .local v3, "tok":Lcom/braintree/org/bouncycastle/asn1/OIDTokenizer;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 181
    .local v2, "dOut":Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x28

    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v5, v5

    invoke-direct {p0, v0, v5, v6}, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;J)V

    .line 185
    :goto_28
    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 187
    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "token":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x12

    if-ge v5, v6, :cond_42

    .line 190
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6}, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;J)V

    goto :goto_28

    .line 194
    :cond_42
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/OutputStream;Ljava/math/BigInteger;)V

    goto :goto_28

    .line 198
    .end local v4    # "token":Ljava/lang/String;
    :cond_4b
    invoke-virtual {v2}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->close()V

    .line 200
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 202
    .local v1, "bytes":[B
    const/4 v5, 0x6

    invoke-virtual {p1, v5, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 203
    return-void
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
