.class public Lcom/braintree/org/bouncycastle/asn1/ASN1ObjectIdentifier;
.super Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;
.source "ASN1ObjectIdentifier.java"


# direct methods
.method constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERObjectIdentifier;-><init>([B)V

    .line 14
    return-void
.end method
