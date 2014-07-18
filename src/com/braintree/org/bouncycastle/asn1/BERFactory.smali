.class Lcom/braintree/org/bouncycastle/asn1/BERFactory;
.super Ljava/lang/Object;
.source "BERFactory.java"


# static fields
.field static final EMPTY_SEQUENCE:Lcom/braintree/org/bouncycastle/asn1/BERSequence;

.field static final EMPTY_SET:Lcom/braintree/org/bouncycastle/asn1/BERSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v0}, Lcom/braintree/org/bouncycastle/asn1/BERSequence;-><init>()V

    sput-object v0, Lcom/braintree/org/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lcom/braintree/org/bouncycastle/asn1/BERSequence;

    .line 6
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/BERSet;

    invoke-direct {v0}, Lcom/braintree/org/bouncycastle/asn1/BERSet;-><init>()V

    sput-object v0, Lcom/braintree/org/bouncycastle/asn1/BERFactory;->EMPTY_SET:Lcom/braintree/org/bouncycastle/asn1/BERSet;

    return-void
.end method

.method static createSequence(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)Lcom/braintree/org/bouncycastle/asn1/BERSequence;
    .registers 3
    .param p0, "v"    # Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    sget-object v0, Lcom/braintree/org/bouncycastle/asn1/BERFactory;->EMPTY_SEQUENCE:Lcom/braintree/org/bouncycastle/asn1/BERSequence;

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/BERSequence;

    invoke-direct {v0, p0}, Lcom/braintree/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)V

    goto :goto_9
.end method
