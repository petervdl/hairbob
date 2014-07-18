.class public abstract Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Sequence.java"


# instance fields
.field private seq:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    return-void
.end method

.method private getNext(Ljava/util/Enumeration;)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    .registers 3
    .param p1, "e"    # Ljava/util/Enumeration;

    .prologue
    .line 223
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .line 226
    .local v0, "encObj":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    if-nez v0, :cond_a

    .line 228
    sget-object v0, Lcom/braintree/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/braintree/org/bouncycastle/asn1/DERNull;

    .line 231
    .end local v0    # "encObj":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    :cond_a
    return-object v0
.end method


# virtual methods
.method protected addObject(Lcom/braintree/org/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .param p1, "obj"    # Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 238
    return-void
.end method

.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 12
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    const/4 v7, 0x0

    .line 187
    instance-of v8, p1, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;

    if-nez v8, :cond_6

    .line 218
    :cond_5
    :goto_5
    return v7

    :cond_6
    move-object v4, p1

    .line 192
    check-cast v4, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;

    .line 194
    .local v4, "other":Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    invoke-virtual {v4}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 199
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 200
    .local v5, "s1":Ljava/util/Enumeration;
    invoke-virtual {v4}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 202
    .local v6, "s2":Ljava/util/Enumeration;
    :cond_1b
    :goto_1b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 204
    invoke-direct {p0, v5}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->getNext(Ljava/util/Enumeration;)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    .line 205
    .local v2, "obj1":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    invoke-direct {p0, v6}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->getNext(Ljava/util/Enumeration;)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    .line 207
    .local v3, "obj2":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    invoke-interface {v2}, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 208
    .local v0, "o1":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    invoke-interface {v3}, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 210
    .local v1, "o2":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    if-eq v0, v1, :cond_1b

    invoke-virtual {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1b

    .line 218
    .end local v0    # "o1":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .end local v1    # "o2":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .end local v2    # "obj1":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    .end local v3    # "obj2":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    :cond_3a
    const/4 v7, 0x1

    goto :goto_5
.end method

.method abstract encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getObjects()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 171
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    .line 173
    .local v1, "hashCode":I
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 175
    invoke-direct {p0, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->getNext(Ljava/util/Enumeration;)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    .line 176
    .local v2, "o":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    mul-int/lit8 v1, v1, 0x11

    .line 178
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    .line 179
    goto :goto_8

    .line 181
    .end local v2    # "o":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    :cond_1a
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Sequence;->seq:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
