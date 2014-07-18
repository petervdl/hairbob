.class public Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;
.super Lcom/braintree/org/bouncycastle/asn1/DERObject;
.source "DERUnknownTag.java"


# instance fields
.field private data:[B

.field private isConstructed:Z

.field private tag:I


# direct methods
.method public constructor <init>(ZI[B)V
    .registers 4
    .param p1, "isConstructed"    # Z
    .param p2, "tag"    # I
    .param p3, "data"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/DERObject;-><init>()V

    .line 33
    iput-boolean p1, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    .line 34
    iput p2, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    .line 35
    iput-object p3, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    .line 36
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
    .line 57
    iget-boolean v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x20

    :goto_6
    iget v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(II[B)V

    .line 58
    return-void

    .line 57
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 63
    instance-of v2, p1, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;

    if-nez v2, :cond_6

    .line 70
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 68
    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;

    .line 70
    .local v0, "other":Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;
    iget-boolean v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    iget-boolean v3, v0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    iget v3, v0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    iget-object v3, v0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-static {v2, v3}, Lcom/braintree/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->isConstructed:Z

    if-eqz v0, :cond_10

    const/4 v0, -0x1

    :goto_5
    iget v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->tag:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERUnknownTag;->data:[B

    invoke-static {v1}, Lcom/braintree/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_5
.end method
