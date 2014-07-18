.class public Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;
.super Ljava/lang/Object;
.source "BEROctetStringParser.java"

# interfaces
.implements Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private _parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 2
    .param p1, "parser"    # Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .line 17
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 36
    :catch_5
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IOException converting stream to byte array: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
    .line 27
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;

    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/braintree/org/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/BERConstructedOctetString;-><init>([B)V

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 21
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/BEROctetStringParser;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;-><init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V

    return-object v0
.end method
