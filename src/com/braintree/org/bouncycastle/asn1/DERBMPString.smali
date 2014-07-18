.class public Lcom/braintree/org/bouncycastle/asn1/DERBMPString;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DERBMPString.java"


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 6
    .param p1, "string"    # [B

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 63
    array-length v2, p1

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 65
    .local v0, "cs":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-eq v1, v2, :cond_21

    .line 67
    mul-int/lit8 v2, v1, 0x2

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 70
    :cond_21
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    .line 71
    return-void
.end method


# virtual methods
.method protected asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    .line 100
    instance-of v1, p1, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;

    if-nez v1, :cond_6

    .line 102
    const/4 v1, 0x0

    .line 107
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;

    .line 107
    .local v0, "s":Lcom/braintree/org/bouncycastle/asn1/DERBMPString;
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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
    .line 114
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 115
    .local v1, "c":[C
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 117
    .local v0, "b":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v1

    if-eq v2, v3, :cond_24

    .line 119
    mul-int/lit8 v3, v2, 0x2

    aget-char v4, v1, v2

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 120
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v1, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 123
    :cond_24
    const/16 v3, 0x1e

    invoke-virtual {p1, v3, v0}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 124
    return-void
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;->string:Ljava/lang/String;

    return-object v0
.end method
