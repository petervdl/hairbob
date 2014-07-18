.class public Lcom/braintree/org/bouncycastle/asn1/DEROctetStringParser;
.super Ljava/lang/Object;
.source "DEROctetStringParser.java"

# interfaces
.implements Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private stream:Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor <init>(Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;)V
    .registers 2
    .param p1, "stream"    # Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;

    .line 15
    return-void
.end method


# virtual methods
.method public getDERObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lcom/braintree/org/bouncycastle/asn1/DEROctetStringParser;->getLoadedObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 34
    :catch_5
    move-exception v0

    .line 36
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
    .line 25
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/DEROctetString;

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v1}, Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/DEROctetStringParser;->stream:Lcom/braintree/org/bouncycastle/asn1/DefiniteLengthInputStream;

    return-object v0
.end method
