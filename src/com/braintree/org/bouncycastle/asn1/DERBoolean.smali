.class public Lcom/braintree/org/bouncycastle/asn1/DERBoolean;
.super Lcom/braintree/org/bouncycastle/asn1/ASN1Object;
.source "DERBoolean.java"


# static fields
.field public static final FALSE:Lcom/braintree/org/bouncycastle/asn1/DERBoolean;

.field public static final TRUE:Lcom/braintree/org/bouncycastle/asn1/DERBoolean;


# instance fields
.field value:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 10
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;->FALSE:Lcom/braintree/org/bouncycastle/asn1/DERBoolean;

    .line 11
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;-><init>(Z)V

    sput-object v0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;->TRUE:Lcom/braintree/org/bouncycastle/asn1/DERBoolean;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3
    .param p1, "value"    # Z

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 77
    if-eqz p1, :cond_9

    const/4 v0, -0x1

    :goto_6
    iput-byte v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;->value:B

    .line 78
    return-void

    .line 77
    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "value"    # [B

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 66
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byte value should have 1 byte in it"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_10
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;->value:B

    .line 72
    return-void
.end method


# virtual methods
.method protected asn1Equals(Lcom/braintree/org/bouncycastle/asn1/DERObject;)Z
    .registers 5
    .param p1, "o"    # Lcom/braintree/org/bouncycastle/asn1/DERObject;

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p1, :cond_7

    instance-of v1, p1, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;

    if-nez v1, :cond_8

    .line 104
    .end local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :cond_7
    :goto_7
    return v0

    .restart local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :cond_8
    iget-byte v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;->value:B

    check-cast p1, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;

    .end local p1    # "o":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    iget-byte v2, p1, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;->value:B

    if-ne v1, v2, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 6
    .param p1, "out"    # Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 89
    new-array v0, v3, [B

    .line 91
    .local v0, "bytes":[B
    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;->value:B

    aput-byte v2, v0, v1

    .line 93
    invoke-virtual {p1, v3, v0}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 94
    return-void
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 109
    iget-byte v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;->value:B

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-byte v0, p0, Lcom/braintree/org/bouncycastle/asn1/DERBoolean;->value:B

    if-eqz v0, :cond_8

    const-string/jumbo v0, "TRUE"

    :goto_7
    return-object v0

    :cond_8
    const-string/jumbo v0, "FALSE"

    goto :goto_7
.end method
