.class public Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;
.super Ljava/lang/Object;
.source "ASN1StreamParser.java"


# instance fields
.field private final _in:Ljava/io/InputStream;

.field private final _limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 15
    invoke-static {p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    .line 23
    iput p2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    .line 24
    return-void
.end method

.method private set00Check(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 220
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_d

    .line 222
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 224
    :cond_d
    return-void
.end method


# virtual methods
.method readIndef(I)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    .registers 5
    .param p1, "tagValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    sparse-switch p1, :sswitch_data_3a

    .line 48
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown BER object encountered: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :sswitch_21
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v0, p0}, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    .line 46
    :goto_26
    return-object v0

    .line 42
    :sswitch_27
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v0, p0}, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_26

    .line 44
    :sswitch_2d
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v0, p0}, Lcom/braintree/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_26

    .line 46
    :sswitch_33
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v0, p0}, Lcom/braintree/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_26

    .line 37
    nop

    :sswitch_data_3a
    .sparse-switch
        0x4 -> :sswitch_27
        0x8 -> :sswitch_21
        0x10 -> :sswitch_2d
        0x11 -> :sswitch_33
    .end sparse-switch
.end method

.method public readObject()Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 119
    iget-object v9, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 120
    .local v6, "tag":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_d

    .line 122
    const/4 v8, 0x0

    .line 209
    :goto_c
    return-object v8

    .line 128
    :cond_d
    invoke-direct {p0, v3}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->set00Check(Z)V

    .line 133
    iget-object v9, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-static {v9, v6}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v7

    .line 135
    .local v7, "tagNo":I
    and-int/lit8 v9, v6, 0x20

    if-eqz v9, :cond_1b

    move v3, v8

    .line 140
    .local v3, "isConstructed":Z
    :cond_1b
    iget-object v9, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-static {v9, v10}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v4

    .line 142
    .local v4, "length":I
    if-gez v4, :cond_5a

    .line 144
    if-nez v3, :cond_30

    .line 146
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "indefinite length primitive encoding encountered"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    :cond_30
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget-object v9, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    iget v10, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v2, v9, v10}, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 150
    .local v2, "indIn":Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v5, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    iget v9, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_limit:I

    invoke-direct {v5, v2, v9}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 152
    .local v5, "sp":Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_4a

    .line 154
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v8, v7, v5}, Lcom/braintree/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 157
    :cond_4a
    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_55

    .line 159
    new-instance v9, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v9, v8, v7, v5}, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    move-object v8, v9

    goto :goto_c

    .line 162
    :cond_55
    invoke-virtual {v5, v7}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readIndef(I)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    goto :goto_c

    .line 166
    .end local v2    # "indIn":Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v5    # "sp":Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_5a
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;

    iget-object v9, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    invoke-direct {v0, v9, v4}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 168
    .local v0, "defIn":Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v9, v6, 0x40

    if-eqz v9, :cond_6f

    .line 170
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v3, v7, v9}, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    goto :goto_c

    .line 173
    :cond_6f
    and-int/lit16 v9, v6, 0x80

    if-eqz v9, :cond_7e

    .line 175
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;

    new-instance v9, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v3, v7, v9}, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto :goto_c

    .line 178
    :cond_7e
    if-eqz v3, :cond_bf

    .line 181
    sparse-switch v7, :sswitch_data_de

    .line 196
    new-instance v9, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v8, v7, v10}, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    move-object v8, v9

    goto/16 :goto_c

    .line 187
    :sswitch_8f
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;

    new-instance v9, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 189
    :sswitch_9b
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/DERSequenceParser;

    new-instance v9, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/braintree/org/bouncycastle/asn1/DERSequenceParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 191
    :sswitch_a7
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/DERSetParser;

    new-instance v9, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/braintree/org/bouncycastle/asn1/DERSetParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 193
    :sswitch_b3
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;

    new-instance v9, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v9, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    goto/16 :goto_c

    .line 201
    :cond_bf
    packed-switch v7, :pswitch_data_f0

    .line 209
    :try_start_c2
    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v8

    invoke-static {v7, v8}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :try_end_c9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c2 .. :try_end_c9} :catch_d3

    move-result-object v8

    goto/16 :goto_c

    .line 204
    :pswitch_cc
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/DEROctetStringParser;

    invoke-direct {v8, v0}, Lcom/braintree/org/bouncycastle/asn1/DEROctetStringParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;)V

    goto/16 :goto_c

    .line 211
    :catch_d3
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v9, "corrupted stream detected"

    invoke-direct {v8, v9, v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 181
    nop

    :sswitch_data_de
    .sparse-switch
        0x4 -> :sswitch_8f
        0x8 -> :sswitch_b3
        0x10 -> :sswitch_9b
        0x11 -> :sswitch_a7
    .end sparse-switch

    .line 201
    :pswitch_data_f0
    .packed-switch 0x4
        :pswitch_cc
    .end packed-switch
.end method

.method readTaggedObject(ZI)Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 9
    .param p1, "constructed"    # Z
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 95
    if-nez p1, :cond_17

    .line 98
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 99
    .local v0, "defIn":Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/DERTaggedObject;

    new-instance v3, Lcom/braintree/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/braintree/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v2, v5, p2, v3}, Lcom/braintree/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    .line 111
    .end local v0    # "defIn":Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;
    :goto_16
    return-object v2

    .line 102
    :cond_17
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    .line 104
    .local v1, "v":Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->_in:Ljava/io/InputStream;

    instance-of v2, v2, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v2, :cond_3b

    .line 106
    invoke-virtual {v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_31

    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_16

    :cond_31
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;

    invoke-static {v1}, Lcom/braintree/org/bouncycastle/asn1/BERFactory;->createSequence(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/braintree/org/bouncycastle/asn1/BERSequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObject;-><init>(ZILcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_16

    .line 111
    :cond_3b
    invoke-virtual {v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v2

    if-ne v2, v4, :cond_4b

    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/DERTaggedObject;

    invoke-virtual {v1, v5}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-direct {v2, v4, p2, v3}, Lcom/braintree/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_16

    :cond_4b
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/DERTaggedObject;

    invoke-static {v1}, Lcom/braintree/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/braintree/org/bouncycastle/asn1/DERSequence;

    move-result-object v3

    invoke-direct {v2, v5, p2, v3}, Lcom/braintree/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_16
.end method

.method readVector()Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 231
    .local v1, "v":Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .local v0, "obj":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    if-eqz v0, :cond_21

    .line 233
    instance-of v2, v0, Lcom/braintree/org/bouncycastle/asn1/InMemoryRepresentable;

    if-eqz v2, :cond_19

    .line 235
    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/InMemoryRepresentable;

    .end local v0    # "obj":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    invoke-interface {v0}, Lcom/braintree/org/bouncycastle/asn1/InMemoryRepresentable;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_5

    .line 239
    .restart local v0    # "obj":Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
    :cond_19
    invoke-interface {v0}, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_5

    .line 243
    :cond_21
    return-object v1
.end method
