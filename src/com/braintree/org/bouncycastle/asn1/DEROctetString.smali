.class public Lcom/braintree/org/bouncycastle/asn1/DEROctetString;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1OctetString;
.source "DEROctetString.java"


# direct methods
.method public constructor <init>([B)V
    .registers 2
    .param p1, "string"    # [B

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    .line 15
    return-void
.end method


# virtual methods
.method encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .param p1, "out"    # Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DEROctetString;->string:[B

    invoke-virtual {p1, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 28
    return-void
.end method
