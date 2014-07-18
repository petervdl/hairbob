.class public abstract Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.super Lcom/braintree/org/bouncycastle/asn1/DERObject;
.source "ASN1Object.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/DERObject;-><init>()V

    return-void
.end method


# virtual methods
.method abstract asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
.end method

.method abstract encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    .line 32
    if-ne p0, p1, :cond_4

    .line 37
    .end local p1    # "o":Ljava/lang/Object;
    :cond_3
    :goto_3
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v1, p1, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_14

    check-cast p1, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Lcom/braintree/org/bouncycastle/asn1/DEREncodable;->getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;->asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_14
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public abstract hashCode()I
.end method
