.class public Lcom/braintree/org/bouncycastle/asn1/BERSet;
.super Lcom/braintree/org/bouncycastle/asn1/DERSet;
.source "BERSet.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/DERSet;-><init>()V

    .line 14
    return-void
.end method

.method constructor <init>(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .registers 3
    .param p1, "v"    # Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;
    .param p2, "needsSorting"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/braintree/org/bouncycastle/asn1/DERSet;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 5
    .param p1, "out"    # Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 50
    instance-of v1, p1, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v1, :cond_9

    instance-of v1, p1, Lcom/braintree/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v1, :cond_2c

    .line 52
    :cond_9
    const/16 v1, 0x31

    invoke-virtual {p1, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 53
    const/16 v1, 0x80

    invoke-virtual {p1, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 55
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/BERSet;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 56
    .local v0, "e":Ljava/util/Enumeration;
    :goto_17
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 58
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_17

    .line 61
    :cond_25
    invoke-virtual {p1, v2}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 62
    invoke-virtual {p1, v2}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 68
    .end local v0    # "e":Ljava/util/Enumeration;
    :goto_2b
    return-void

    .line 66
    :cond_2c
    invoke-super {p0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERSet;->encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_2b
.end method
