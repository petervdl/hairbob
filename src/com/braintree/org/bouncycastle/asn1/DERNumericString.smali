.class public Lcom/braintree/org/bouncycastle/asn1/DERNumericString;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DERNumericString.java"


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 5
    .param p1, "string"    # [B

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 61
    array-length v2, p1

    new-array v0, v2, [C

    .line 63
    .local v0, "cs":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_14

    .line 65
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 68
    :cond_14
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;->string:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    .line 138
    instance-of v1, p1, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;

    if-nez v1, :cond_6

    .line 140
    const/4 v1, 0x0

    .line 145
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 143
    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;

    .line 145
    .local v0, "s":Lcom/braintree/org/bouncycastle/asn1/DERNumericString;
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    .line 127
    const/16 v0, 0x12

    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 128
    return-void
.end method

.method public getOctets()[B
    .registers 5

    .prologue
    .line 112
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 113
    .local v1, "cs":[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 115
    .local v0, "bs":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v1

    if-eq v2, v3, :cond_15

    .line 117
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 120
    :cond_15
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;->string:Ljava/lang/String;

    return-object v0
.end method
