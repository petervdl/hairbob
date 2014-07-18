.class public Lcom/braintree/org/bouncycastle/asn1/BERApplicationSpecific;
.super Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;
.source "BERApplicationSpecific.java"


# direct methods
.method public constructor <init>(ILcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)V
    .registers 3
    .param p1, "tagNo"    # I
    .param p2, "vec"    # Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/braintree/org/bouncycastle/asn1/DERApplicationSpecific;-><init>(ILcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)V

    .line 9
    return-void
.end method
