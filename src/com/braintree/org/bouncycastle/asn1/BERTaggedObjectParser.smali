.class public Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;
.super Ljava/lang/Object;
.source "BERTaggedObjectParser.java"

# interfaces
.implements Lcom/braintree/org/bouncycastle/asn1/ASN1TaggedObjectParser;


# instance fields
.field private _constructed:Z

.field private _parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

.field private _tagNumber:I


# direct methods
.method constructor <init>(ZILcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 4
    .param p1, "constructed"    # Z
    .param p2, "tagNumber"    # I
    .param p3, "parser"    # Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    .line 30
    iput p2, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    .line 31
    iput-object p3, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .line 32
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 73
    :catch_5
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

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
    .line 64
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    iget-boolean v1, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;->_constructed:Z

    iget v2, p0, Lcom/braintree/org/bouncycastle/asn1/BERTaggedObjectParser;->_tagNumber:I

    invoke-virtual {v0, v1, v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readTaggedObject(ZI)Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
