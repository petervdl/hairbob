.class public Lcom/braintree/org/bouncycastle/asn1/DERT61String;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DERT61String.java"


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

    iput-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERT61String;->string:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 4
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    .line 113
    instance-of v0, p1, Lcom/braintree/org/bouncycastle/asn1/DERT61String;

    if-nez v0, :cond_6

    .line 115
    const/4 v0, 0x0

    .line 118
    .end local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :goto_5
    return v0

    .restart local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :cond_6
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERT61String;->getString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/braintree/org/bouncycastle/asn1/DERT61String;

    .end local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    invoke-virtual {p1}, Lcom/braintree/org/bouncycastle/asn1/DERT61String;->getString()Ljava/lang/String;

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
    .line 94
    const/16 v0, 0x14

    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERT61String;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 95
    return-void
.end method

.method public getOctets()[B
    .registers 5

    .prologue
    .line 99
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/DERT61String;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 100
    .local v1, "cs":[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 102
    .local v0, "bs":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    array-length v3, v1

    if-eq v2, v3, :cond_15

    .line 104
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 107
    :cond_15
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERT61String;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERT61String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERT61String;->string:Ljava/lang/String;

    return-object v0
.end method
