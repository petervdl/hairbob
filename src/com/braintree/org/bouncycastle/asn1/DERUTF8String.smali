.class public Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DERUTF8String.java"


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 5
    .param p1, "string"    # [B

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 67
    :try_start_3
    invoke-static {p1}, Lcom/braintree/org/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_9} :catch_a

    .line 73
    return-void

    .line 69
    :catch_a
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "UTF8 encoding invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    .line 100
    instance-of v1, p1, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;

    if-nez v1, :cond_6

    .line 102
    const/4 v1, 0x0

    .line 107
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 105
    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;

    .line 107
    .local v0, "s":Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

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
    .line 113
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    invoke-static {v1}, Lcom/braintree/org/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 114
    return-void
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;->string:Ljava/lang/String;

    return-object v0
.end method
