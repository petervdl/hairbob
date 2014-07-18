.class public Lcom/braintree/org/bouncycastle/asn1/BERSequenceParser;
.super Ljava/lang/Object;
.source "BERSequenceParser.java"

# interfaces
.implements Lcom/braintree/org/bouncycastle/asn1/ASN1SequenceParser;


# instance fields
.field private _parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .param p1, "parser"    # Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/BERSequenceParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .line 13
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/BERSequenceParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 33
    :catch_5
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/BERSequence;

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/BERSequenceParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/BERSequence;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
