.class public Lcom/braintree/org/bouncycastle/asn1/ASN1Boolean;
.super Lcom/braintree/org/bouncycastle/asn1/DERBoolean;
.source "ASN1Boolean.java"


# direct methods
.method constructor <init>([B)V
    .registers 2
    .param p1, "value"    # [B

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;-><init>([B)V

    .line 14
    return-void
.end method
