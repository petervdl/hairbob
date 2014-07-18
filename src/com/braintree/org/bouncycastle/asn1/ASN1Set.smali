.class public abstract Lcom/braintree/org/bouncycastle/asn1/ASN1Set;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Set.java"


# instance fields
.field protected set:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    .line 105
    return-void
.end method

.method private getEncoded(Lcom/braintree/org/bouncycastle/asn1/DEREncodable;)[B
    .registers 7
    .param p1, "obj"    # Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .prologue
    .line 275
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 276
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 280
    .local v0, "aOut":Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;
    :try_start_a
    invoke-virtual {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    .line 287
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 282
    :catch_12
    move-exception v2

    .line 284
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "cannot encode object added to SET"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getNext(Ljava/util/Enumeration;)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    .registers 3
    .param p1, "e"    # Ljava/util/Enumeration;

    .prologue
    .line 243
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .line 246
    .local v0, "encObj":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    if-nez v0, :cond_a

    .line 248
    sget-object v0, Lcom/braintree/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/braintree/org/bouncycastle/asn1/DERNull;

    .line 251
    .end local v0    # "encObj":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    :cond_a
    return-object v0
.end method

.method private lessThanOrEqual([B[B)Z
    .registers 9
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 261
    array-length v4, p1

    array-length v5, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 262
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-eq v0, v1, :cond_21

    .line 264
    aget-byte v4, p1, v0

    aget-byte v5, p2, v0

    if-eq v4, v5, :cond_1e

    .line 266
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p2, v0

    and-int/lit16 v5, v5, 0xff

    if-ge v4, v5, :cond_1c

    .line 269
    :cond_1b
    :goto_1b
    return v2

    :cond_1c
    move v2, v3

    .line 266
    goto :goto_1b

    .line 262
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 269
    :cond_21
    array-length v4, p1

    if-eq v1, v4, :cond_1b

    move v2, v3

    goto :goto_1b
.end method


# virtual methods
.method protected addObject(Lcom/braintree/org/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .param p1, "obj"    # Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 336
    return-void
.end method

.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 12
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    const/4 v7, 0x0

    .line 207
    instance-of v8, p1, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;

    if-nez v8, :cond_6

    .line 238
    :cond_5
    :goto_5
    return v7

    :cond_6
    move-object v4, p1

    .line 212
    check-cast v4, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;

    .line 214
    .local v4, "other":Lcom/braintree/org/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v8

    invoke-virtual {v4}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v9

    if-ne v8, v9, :cond_5

    .line 219
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 220
    .local v5, "s1":Ljava/util/Enumeration;
    invoke-virtual {v4}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 222
    .local v6, "s2":Ljava/util/Enumeration;
    :cond_1b
    :goto_1b
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 224
    invoke-direct {p0, v5}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    .line 225
    .local v2, "obj1":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    invoke-direct {p0, v6}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    .line 227
    .local v3, "obj2":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    invoke-interface {v2}, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 228
    .local v0, "o1":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    invoke-interface {v3}, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 230
    .local v1, "o2":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    if-eq v0, v1, :cond_1b

    invoke-virtual {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_1b

    .line 238
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
    .line 109
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 191
    .local v0, "e":Ljava/util/Enumeration;
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    .line 193
    .local v1, "hashCode":I
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 195
    invoke-direct {p0, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->getNext(Ljava/util/Enumeration;)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    .line 196
    .local v2, "o":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    mul-int/lit8 v1, v1, 0x11

    .line 198
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v1, v3

    .line 199
    goto :goto_8

    .line 201
    .end local v2    # "o":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    :cond_1a
    return v1
.end method

.method public size()I
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method protected sort()V
    .registers 11

    .prologue
    .line 292
    iget-object v7, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_5d

    .line 294
    const/4 v6, 0x1

    .line 295
    .local v6, "swapped":Z
    iget-object v7, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 297
    .local v3, "lastSwap":I
    :goto_12
    if-eqz v6, :cond_5d

    .line 299
    const/4 v2, 0x0

    .line 300
    .local v2, "index":I
    const/4 v5, 0x0

    .line 301
    .local v5, "swapIndex":I
    iget-object v7, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    invoke-direct {p0, v7}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->getEncoded(Lcom/braintree/org/bouncycastle/asn1/DEREncodable;)[B

    move-result-object v0

    .line 303
    .local v0, "a":[B
    const/4 v6, 0x0

    .line 305
    :goto_24
    if-eq v2, v3, :cond_5b

    .line 307
    iget-object v7, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    invoke-direct {p0, v7}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->getEncoded(Lcom/braintree/org/bouncycastle/asn1/DEREncodable;)[B

    move-result-object v1

    .line 309
    .local v1, "b":[B
    invoke-direct {p0, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 311
    move-object v0, v1

    .line 324
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    .line 325
    goto :goto_24

    .line 315
    :cond_3e
    iget-object v7, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 317
    .local v4, "o":Ljava/lang/Object;
    iget-object v7, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    iget-object v8, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 318
    iget-object v7, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v4, v8}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 320
    const/4 v6, 0x1

    .line 321
    move v5, v2

    goto :goto_3b

    .line 327
    .end local v1    # "b":[B
    .end local v4    # "o":Ljava/lang/Object;
    :cond_5b
    move v3, v5

    .line 328
    goto :goto_12

    .line 330
    .end local v0    # "a":[B
    .end local v2    # "index":I
    .end local v3    # "lastSwap":I
    .end local v5    # "swapIndex":I
    .end local v6    # "swapped":Z
    :cond_5d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1Set;->set:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
