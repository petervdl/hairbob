.class public Lcom/braintree/org/bouncycastle/asn1/DERSequence;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;
.source "DERSequence.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 4
    .param p1, "v"    # Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;-><init>()V

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 34
    invoke-virtual {p1, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/braintree/org/bouncycastle/asn1/DERSequence;->addObject(Lcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 36
    :cond_14
    return-void
.end method


# virtual methods
.method encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 8
    .param p1, "out"    # Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v2, v0}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 65
    .local v2, "dOut":Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 67
    .local v3, "e":Ljava/util/Enumeration;
    :goto_e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 69
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 71
    .local v4, "obj":Ljava/lang/Object;
    invoke-virtual {v2, v4}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_e

    .line 74
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_1c
    invoke-virtual {v2}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->close()V

    .line 76
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 78
    .local v1, "bytes":[B
    const/16 v5, 0x30

    invoke-virtual {p1, v5, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 79
    return-void
.end method
