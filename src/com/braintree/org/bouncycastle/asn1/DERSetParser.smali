.class public Lcom/braintree/org/bouncycastle/asn1/DERSetParser;
.super Ljava/lang/Object;
.source "DERSetParser.java"

# interfaces
.implements Lcom/braintree/org/bouncycastle/asn1/ASN1SetParser;


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
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/DERSetParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .line 13
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERSetParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 33
    :catch_5
    move-exception v0

    .line 35
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DERSet;

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DERSetParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/braintree/org/bouncycastle/asn1/DERSet;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;Z)V

    return-object v0
.end method
