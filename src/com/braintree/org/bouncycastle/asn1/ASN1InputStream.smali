.class public Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;
.super Ljava/io/FilterInputStream;
.source "ASN1InputStream.java"


# instance fields
.field private final lazyEvaluate:Z

.field private final limit:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->findLimit(Ljava/io/InputStream;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .registers 4
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "limit"    # I
    .param p3, "lazyEvaluate"    # Z

    .prologue
    .line 96
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    iput p2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    .line 98
    iput-boolean p3, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    .line 99
    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "input"    # [B

    .prologue
    .line 53
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 54
    return-void
.end method

.method public constructor <init>([BZ)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "lazyEvaluate"    # Z

    .prologue
    .line 67
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-direct {p0, v0, v1, p2}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;IZ)V

    .line 68
    return-void
.end method

.method static createPrimitiveDERObject(I[B)Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 4
    .param p0, "tagNo"    # I
    .param p1, "bytes"    # [B

    .prologue
    .line 359
    packed-switch p0, :pswitch_data_72

    .line 398
    :pswitch_3
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    :goto_9
    return-object v0

    .line 362
    :pswitch_a
    invoke-static {p1}, Lcom/braintree/org/bouncycastle/asn1/DERBitString;->fromOctetString([B)Lcom/braintree/org/bouncycastle/asn1/DERBitString;

    move-result-object v0

    goto :goto_9

    .line 364
    :pswitch_f
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERBMPString;-><init>([B)V

    goto :goto_9

    .line 366
    :pswitch_15
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1Boolean;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1Boolean;-><init>([B)V

    goto :goto_9

    .line 368
    :pswitch_1b
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1Enumerated;-><init>([B)V

    goto :goto_9

    .line 370
    :pswitch_21
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1GeneralizedTime;-><init>([B)V

    goto :goto_9

    .line 372
    :pswitch_27
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERGeneralString;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERGeneralString;-><init>([B)V

    goto :goto_9

    .line 374
    :pswitch_2d
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERIA5String;-><init>([B)V

    goto :goto_9

    .line 376
    :pswitch_33
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1Integer;-><init>([B)V

    goto :goto_9

    .line 378
    :pswitch_39
    sget-object v0, Lcom/braintree/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/braintree/org/bouncycastle/asn1/DERNull;

    goto :goto_9

    .line 380
    :pswitch_3c
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERNumericString;-><init>([B)V

    goto :goto_9

    .line 382
    :pswitch_42
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    goto :goto_9

    .line 384
    :pswitch_48
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    goto :goto_9

    .line 386
    :pswitch_4e
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERPrintableString;-><init>([B)V

    goto :goto_9

    .line 388
    :pswitch_54
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERT61String;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_9

    .line 390
    :pswitch_5a
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERUniversalString;-><init>([B)V

    goto :goto_9

    .line 392
    :pswitch_60
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1UTCTime;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1UTCTime;-><init>([B)V

    goto :goto_9

    .line 394
    :pswitch_66
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERUTF8String;-><init>([B)V

    goto :goto_9

    .line 396
    :pswitch_6c
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERVisibleString;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto :goto_9

    .line 359
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_15
        :pswitch_33
        :pswitch_a
        :pswitch_48
        :pswitch_39
        :pswitch_42
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1b
        :pswitch_3
        :pswitch_66
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3c
        :pswitch_4e
        :pswitch_54
        :pswitch_3
        :pswitch_2d
        :pswitch_60
        :pswitch_21
        :pswitch_3
        :pswitch_6c
        :pswitch_27
        :pswitch_5a
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method static findLimit(Ljava/io/InputStream;)I
    .registers 2
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 26
    instance-of v0, p0, Lcom/braintree/org/bouncycastle/asn1/LimitedInputStream;

    if-eqz v0, :cond_b

    .line 28
    check-cast p0, Lcom/braintree/org/bouncycastle/asn1/LimitedInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/LimitedInputStream;->getRemaining()I

    move-result v0

    .line 35
    :goto_a
    return v0

    .line 30
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_b
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_16

    .line 32
    check-cast p0, Ljava/io/ByteArrayInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    goto :goto_a

    .line 35
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_16
    const v0, 0x7fffffff

    goto :goto_a
.end method

.method static readLength(Ljava/io/InputStream;I)I
    .registers 9
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 308
    .local v1, "length":I
    if-gez v1, :cond_f

    .line 310
    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "EOF found when length expected"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    :cond_f
    const/16 v4, 0x80

    if-ne v1, v4, :cond_15

    .line 315
    const/4 v4, -0x1

    .line 352
    :goto_14
    return v4

    .line 318
    :cond_15
    const/16 v4, 0x7f

    if-le v1, v4, :cond_68

    .line 320
    and-int/lit8 v3, v1, 0x7f

    .line 323
    .local v3, "size":I
    const/4 v4, 0x4

    if-le v3, v4, :cond_38

    .line 325
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DER length more than 4 bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 328
    :cond_38
    const/4 v1, 0x0

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    if-ge v0, v3, :cond_52

    .line 331
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 333
    .local v2, "next":I
    if-gez v2, :cond_4b

    .line 335
    new-instance v4, Ljava/io/EOFException;

    const-string/jumbo v5, "EOF found reading length"

    invoke-direct {v4, v5}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 338
    :cond_4b
    shl-int/lit8 v4, v1, 0x8

    add-int v1, v4, v2

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 341
    .end local v2    # "next":I
    :cond_52
    if-gez v1, :cond_5d

    .line 343
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "corrupted stream - negative length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 346
    :cond_5d
    if-lt v1, p1, :cond_68

    .line 348
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "corrupted stream - out of bounds length found"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0    # "i":I
    .end local v3    # "size":I
    :cond_68
    move v4, v1

    .line 352
    goto :goto_14
.end method

.method static readTagNumber(Ljava/io/InputStream;I)I
    .registers 6
    .param p0, "s"    # Ljava/io/InputStream;
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 268
    and-int/lit8 v1, p1, 0x1f

    .line 273
    .local v1, "tagNo":I
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_36

    .line 275
    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 281
    .local v0, "b":I
    and-int/lit8 v2, v0, 0x7f

    if-nez v2, :cond_18

    .line 283
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "corrupted stream - invalid high tag number found"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_18
    :goto_18
    if-ltz v0, :cond_28

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_28

    .line 288
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 289
    shl-int/lit8 v1, v1, 0x7

    .line 290
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_18

    .line 293
    :cond_28
    if-gez v0, :cond_33

    .line 295
    new-instance v2, Ljava/io/EOFException;

    const-string/jumbo v3, "EOF found inside tag value."

    invoke-direct {v2, v3}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 298
    :cond_33
    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    .line 301
    .end local v0    # "b":I
    :cond_36
    return v1
.end method


# virtual methods
.method buildDEREncodableVector(Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 3
    .param p1, "dIn"    # Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->buildEncodableVector()Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v0

    return-object v0
.end method

.method buildEncodableVector()Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 177
    .local v1, "v":Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .local v0, "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    if-eqz v0, :cond_f

    .line 179
    invoke-virtual {v1, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/braintree/org/bouncycastle/asn1/DEREncodable;)V

    goto :goto_5

    .line 182
    :cond_f
    return-object v1
.end method

.method protected buildObject(III)Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 9
    .param p1, "tag"    # I
    .param p2, "tagNo"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 126
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_1a

    move v1, v2

    .line 128
    .local v1, "isConstructed":Z
    :goto_7
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-direct {v0, p0, p3}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 130
    .local v0, "defIn":Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;
    and-int/lit8 v4, p1, 0x40

    if-eqz v4, :cond_1c

    .line 132
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v1, p2, v3}, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ZI[B)V

    .line 168
    :goto_19
    return-object v2

    .end local v0    # "defIn":Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .end local v1    # "isConstructed":Z
    :cond_1a
    move v1, v3

    .line 126
    goto :goto_7

    .line 135
    .restart local v0    # "defIn":Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;
    .restart local v1    # "isConstructed":Z
    :cond_1c
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_2a

    .line 137
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v2, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, v1, p2}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_19

    .line 140
    :cond_2a
    if-eqz v1, :cond_70

    .line 143
    sparse-switch p2, :sswitch_data_7a

    .line 164
    new-instance v3, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v2, p2, v4}, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;-><init>(ZI[B)V

    move-object v2, v3

    goto :goto_19

    .line 149
    :sswitch_3a
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    iget-object v3, v3, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->v:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    goto :goto_19

    .line 151
    :sswitch_46
    iget-boolean v2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->lazyEvaluate:Z

    if-eqz v2, :cond_54

    .line 153
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;

    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;-><init>([B)V

    goto :goto_19

    .line 157
    :cond_54
    invoke-virtual {p0, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2}, Lcom/braintree/org/bouncycastle/asn1/DERFactory;->createSequence(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/braintree/org/bouncycastle/asn1/DERSequence;

    move-result-object v2

    goto :goto_19

    .line 160
    :sswitch_5d
    invoke-virtual {p0, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/braintree/org/bouncycastle/asn1/DERFactory;->createSet(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;Z)Lcom/braintree/org/bouncycastle/asn1/DERSet;

    move-result-object v2

    goto :goto_19

    .line 162
    :sswitch_66
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/DERExternal;

    invoke-virtual {p0, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->buildDEREncodableVector(Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;)Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/braintree/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_19

    .line 168
    :cond_70
    invoke-virtual {v0}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {p2, v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->createPrimitiveDERObject(I[B)Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    goto :goto_19

    .line 143
    nop

    :sswitch_data_7a
    .sparse-switch
        0x4 -> :sswitch_3a
        0x8 -> :sswitch_66
        0x10 -> :sswitch_46
        0x11 -> :sswitch_5d
    .end sparse-switch
.end method

.method protected readLength()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-static {p0, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->readLength(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public readObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 194
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->read()I

    move-result v5

    .line 195
    .local v5, "tag":I
    if-gtz v5, :cond_14

    .line 197
    if-nez v5, :cond_12

    .line 199
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "unexpected end-of-contents marker"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 202
    :cond_12
    const/4 v7, 0x0

    .line 256
    :goto_13
    return-object v7

    .line 208
    :cond_14
    invoke-static {p0, v5}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->readTagNumber(Ljava/io/InputStream;I)I

    move-result v6

    .line 210
    .local v6, "tagNo":I
    and-int/lit8 v8, v5, 0x20

    if-eqz v8, :cond_2e

    move v2, v7

    .line 215
    .local v2, "isConstructed":Z
    :goto_1d
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->readLength()I

    move-result v3

    .line 217
    .local v3, "length":I
    if-gez v3, :cond_8e

    .line 219
    if-nez v2, :cond_30

    .line 221
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "indefinite length primitive encoding encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 210
    .end local v2    # "isConstructed":Z
    .end local v3    # "length":I
    :cond_2e
    const/4 v2, 0x0

    goto :goto_1d

    .line 224
    .restart local v2    # "isConstructed":Z
    .restart local v3    # "length":I
    :cond_30
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    iget v8, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v1, p0, v8}, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 225
    .local v1, "indIn":Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    new-instance v4, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    iget v8, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->limit:I

    invoke-direct {v4, v1, v8}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;-><init>(Ljava/io/InputStream;I)V

    .line 227
    .local v4, "sp":Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;
    and-int/lit8 v8, v5, 0x40

    if-eqz v8, :cond_4c

    .line 229
    new-instance v7, Lcom/braintree/org/bouncycastle/asn1/BERApplicationSpecificParser;

    invoke-direct {v7, v6, v4}, Lcom/braintree/org/bouncycastle/asn1/BERApplicationSpecificParser;-><init>(ILcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/braintree/org/bouncycastle/asn1/BERApplicationSpecificParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_13

    .line 232
    :cond_4c
    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_5a

    .line 234
    new-instance v8, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;

    invoke-direct {v8, v7, v6, v4}, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;-><init>(ZILcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v8}, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_13

    .line 238
    :cond_5a
    sparse-switch v6, :sswitch_data_9e

    .line 249
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "unknown BER object encountered"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 241
    :sswitch_66
    new-instance v7, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;

    invoke-direct {v7, v4}, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_13

    .line 243
    :sswitch_70
    new-instance v7, Lcom/braintree/org/bouncycastle/asn1/BERSequenceParser;

    invoke-direct {v7, v4}, Lcom/braintree/org/bouncycastle/asn1/BERSequenceParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/braintree/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_13

    .line 245
    :sswitch_7a
    new-instance v7, Lcom/braintree/org/bouncycastle/asn1/BERSetParser;

    invoke-direct {v7, v4}, Lcom/braintree/org/bouncycastle/asn1/BERSetParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/braintree/org/bouncycastle/asn1/BERSetParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_13

    .line 247
    :sswitch_84
    new-instance v7, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;

    invoke-direct {v7, v4}, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    invoke-virtual {v7}, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v7

    goto :goto_13

    .line 256
    .end local v1    # "indIn":Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;
    .end local v4    # "sp":Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;
    :cond_8e
    :try_start_8e
    invoke-virtual {p0, v5, v6, v3}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->buildObject(III)Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :try_end_91
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8e .. :try_end_91} :catch_93

    move-result-object v7

    goto :goto_13

    .line 258
    :catch_93
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Lcom/braintree/org/bouncycastle/asn1/ASN1Exception;

    const-string/jumbo v8, "corrupted stream detected"

    invoke-direct {v7, v8, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 238
    nop

    :sswitch_data_9e
    .sparse-switch
        0x4 -> :sswitch_66
        0x8 -> :sswitch_84
        0x10 -> :sswitch_70
        0x11 -> :sswitch_7a
    .end sparse-switch
.end method
