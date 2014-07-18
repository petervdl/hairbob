.class public Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;
.super Ljava/lang/Object;
.source "DERExternalParser.java"

# interfaces
.implements Lcom/braintree/org/bouncycastle/asn1/DEREncodable;
.implements Lcom/braintree/org/bouncycastle/asn1/InMemoryRepresentable;


# instance fields
.field private _parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .param p1, "parser"    # Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .line 16
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_f

    move-result-object v1

    return-object v1

    .line 43
    :catch_5
    move-exception v0

    .line 45
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;

    const-string/jumbo v2, "unable to get DER object"

    invoke-direct {v1, v2, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 47
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_f
    move-exception v0

    .line 49
    .local v0, "ioe":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;

    const-string/jumbo v2, "unable to get DER object"

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
    .line 29
    :try_start_0
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/DERExternal;

    iget-object v2, p0, Lcom/braintree/org/bouncycastle/asn1/DERExternalParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readVector()Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/braintree/org/bouncycastle/asn1/DERExternal;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1EncodableVector;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v1

    .line 31
    :catch_c
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
