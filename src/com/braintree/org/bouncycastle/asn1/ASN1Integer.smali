.class public Lcom/braintree/org/bouncycastle/asn1/ASN1Integer;
.super Lcom/braintree/org/bouncycastle/asn1/DERInteger;
.source "ASN1Integer.java"


# direct methods
.method constructor <init>([B)V
    .registers 2
    .param p1, "bytes"    # [B

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERInteger;-><init>([B)V

    .line 11
    return-void
.end method
