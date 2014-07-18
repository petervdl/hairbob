.class public Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;
.super Lcom/braintree/org/bouncycastle/asn1/DERTaggedObject;
.source "BERTaggedObject.java"


# direct methods
.method public constructor <init>(ZILcom/braintree/org/bouncycastle/asn1/DEREncodable;)V
    .registers 4
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/braintree/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    .line 36
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
    const/4 v5, 0x0

    .line 52
    instance-of v3, p1, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;

    if-nez v3, :cond_9

    instance-of v3, p1, Lcom/braintree/org/bouncycastle/asn1/BEROutputStream;

    if-eqz v3, :cond_9f

    .line 54
    :cond_9
    const/16 v3, 0xa0

    iget v4, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->tagNo:I

    invoke-virtual {p1, v3, v4}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeTag(II)V

    .line 55
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 57
    iget-boolean v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->empty:Z

    if-nez v3, :cond_98

    .line 59
    iget-boolean v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->explicit:Z

    if-nez v3, :cond_93

    .line 62
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_51

    .line 64
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;

    if-eqz v3, :cond_3f

    .line 66
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    check-cast v3, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 88
    .local v1, "e":Ljava/util/Enumeration;
    :goto_31
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_31

    .line 70
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_3f
    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    check-cast v2, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetString;

    .line 71
    .local v2, "octs":Lcom/braintree/org/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    .line 72
    .local v0, "berO":Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;
    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 73
    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_31

    .line 75
    .end local v0    # "berO":Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;
    .end local v1    # "e":Ljava/util/Enumeration;
    .end local v2    # "octs":Lcom/braintree/org/bouncycastle/asn1/ASN1OctetString;
    :cond_51
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_60

    .line 77
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    check-cast v3, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_31

    .line 79
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_60
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    instance-of v3, v3, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;

    if-eqz v3, :cond_6f

    .line 81
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    check-cast v3, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .restart local v1    # "e":Ljava/util/Enumeration;
    goto :goto_31

    .line 85
    .end local v1    # "e":Ljava/util/Enumeration;
    :cond_6f
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not implemented: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_93
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {p1, v3}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 99
    :cond_98
    invoke-virtual {p1, v5}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 100
    invoke-virtual {p1, v5}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->write(I)V

    .line 106
    :goto_9e
    return-void

    .line 104
    :cond_9f
    invoke-super {p0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERTaggedObject;->encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V

    goto :goto_9e
.end method
