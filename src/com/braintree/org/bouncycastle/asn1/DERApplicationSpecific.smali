.class public Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DERApplicationSpecific.java"


# instance fields
.field private final isConstructed:Z

.field private final octets:[B

.field private final tag:I


# direct methods
.method public constructor <init>(ILcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 9
    .param p1, "tagNo"    # I
    .param p2, "vec"    # Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    .line 70
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 71
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {p2}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v3

    if-eq v2, v3, :cond_3f

    .line 77
    :try_start_14
    invoke-virtual {p2, v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->get(I)Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lcom/braintree/org/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/ASN1Encodable;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_24

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 79
    :catch_24
    move-exception v1

    .line 81
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "malformed object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 84
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 85
    return-void
.end method

.method constructor <init>(ZI[B)V
    .registers 4
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "octets"    # [B

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    .line 24
    iput p2, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    .line 25
    iput-object p3, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    .line 26
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 6
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    const/4 v1, 0x0

    .line 169
    instance-of v2, p1, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;

    if-nez v2, :cond_6

    .line 176
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 174
    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;

    .line 176
    .local v0, "other":Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;
    iget-boolean v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    iget-boolean v3, v0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iget v3, v0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    iget-object v3, v0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v2, v3}, Lcom/braintree/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 5
    .param p1, "out"    # Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const/16 v0, 0x40

    .line 158
    .local v0, "classBits":I
    iget-boolean v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v1, :cond_8

    .line 160
    or-int/lit8 v0, v0, 0x20

    .line 163
    :cond_8
    iget v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 164
    return-void
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->isConstructed:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_5
    iget v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;->octets:[B

    invoke-static {v1}, Lcom/braintree/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method
