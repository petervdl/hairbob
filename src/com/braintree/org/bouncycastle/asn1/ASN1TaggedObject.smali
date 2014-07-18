.class public abstract Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "ASN1TaggedObject.java"

# interfaces
.implements Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field empty:Z

.field explicit:Z

.field obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

.field tagNo:I


# direct methods
.method public constructor <init>(ILcom/braintree/org/bouncycastle/asn1/DEREncodable;)V
    .registers 5
    .param p1, "tagNo"    # I
    .param p2, "obj"    # Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .prologue
    const/4 v1, 0x1

    .line 51
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    .line 16
    iput-boolean v1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .line 52
    iput-boolean v1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 53
    iput p1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 54
    iput-object p2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .line 55
    return-void
.end method

.method public constructor <init>(ZILcom/braintree/org/bouncycastle/asn1/DEREncodable;)V
    .registers 6
    .param p1, "explicit"    # Z
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .prologue
    const/4 v1, 0x1

    .line 71
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    .line 16
    iput-boolean v1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .line 72
    instance-of v0, p3, Lcom/braintree/org/bouncycastle/asn1/ASN1Choice;

    if-eqz v0, :cond_17

    .line 74
    iput-boolean v1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    .line 81
    :goto_12
    iput p2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 82
    iput-object p3, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .line 83
    return-void

    .line 78
    :cond_17
    iput-boolean p1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    goto :goto_12
.end method


# virtual methods
.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 6
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    const/4 v1, 0x0

    .line 88
    instance-of v2, p1, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;

    if-nez v2, :cond_6

    .line 115
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 93
    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 95
    .local v0, "other":Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;
    iget v2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    iget v3, v0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    iget-boolean v3, v0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->empty:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    iget-boolean v3, v0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->explicit:Z

    if-ne v2, v3, :cond_5

    .line 100
    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_25

    .line 102
    iget-object v2, v0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    if-nez v2, :cond_5

    .line 115
    :cond_23
    const/4 v1, 0x1

    goto :goto_5

    .line 109
    :cond_25
    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {v2}, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v2

    iget-object v3, v0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {v3}, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/braintree/org/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_5
.end method

.method abstract encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    if-eqz v0, :cond_b

    .line 170
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    .line 173
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getTagNo()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 120
    iget v0, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    .line 127
    .local v0, "code":I
    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_d

    .line 129
    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 132
    :cond_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->tagNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObject;->obj:Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
