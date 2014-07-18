.class public abstract Lcom/braintree/org/bouncycastle/asn1/ASN1Null;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "ASN1Null.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 3
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    .line 23
    instance-of v0, p1, Lcom/braintree/org/bouncycastle/asn1/ASN1Null;

    if-nez v0, :cond_6

    .line 25
    const/4 v0, 0x0

    .line 28
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method abstract encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, -0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const-string/jumbo v0, "NULL"

    return-object v0
.end method
