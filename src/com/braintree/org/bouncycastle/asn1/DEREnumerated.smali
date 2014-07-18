.class public Lcom/braintree/org/bouncycastle/asn1/DEREnumerated;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DEREnumerated.java"


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    .line 70
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    .line 87
    instance-of v1, p1, Lcom/braintree/org/bouncycastle/asn1/DEREnumerated;

    if-nez v1, :cond_6

    .line 89
    const/4 v1, 0x0

    .line 94
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 92
    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DEREnumerated;

    .line 94
    .local v0, "other":Lcom/braintree/org/bouncycastle/asn1/DEREnumerated;
    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    iget-object v2, v0, Lcom/braintree/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v1, v2}, Lcom/braintree/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

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
    .line 81
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-virtual {p1, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 82
    return-void
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DEREnumerated;->bytes:[B

    invoke-static {v0}, Lcom/braintree/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
