.class Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;
.source "ConstructedOctetStream.java"


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;)V
    .registers 3
    .param p1, "parser"    # Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 17
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    .line 18
    return-void
.end method


# virtual methods
.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 73
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v3, :cond_20

    .line 75
    iget-boolean v3, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v3, :cond_b

    move v0, v2

    .line 105
    :cond_a
    :goto_a
    return v0

    .line 80
    :cond_b
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 82
    .local v1, "s":Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_17

    move v0, v2

    .line 84
    goto :goto_a

    .line 87
    :cond_17
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 88
    invoke-interface {v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 93
    .end local v1    # "s":Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_20
    :goto_20
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 95
    .local v0, "b":I
    if-gez v0, :cond_a

    .line 100
    iget-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v3}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 102
    .restart local v1    # "s":Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v1, :cond_37

    .line 104
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    move v0, v2

    .line 105
    goto :goto_a

    .line 108
    :cond_37
    invoke-interface {v1}, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_20
.end method

.method public read([BII)I
    .registers 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 22
    iget-object v5, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v5, :cond_1d

    .line 24
    iget-boolean v5, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v5, :cond_a

    .line 62
    :cond_9
    :goto_9
    return v4

    .line 29
    :cond_a
    iget-object v5, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 31
    .local v2, "s":Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-eqz v2, :cond_9

    .line 36
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    .line 37
    invoke-interface {v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 40
    .end local v2    # "s":Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;
    :cond_1d
    const/4 v3, 0x0

    .line 44
    .local v3, "totalRead":I
    :cond_1e
    :goto_1e
    iget-object v5, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v6, p2, v3

    sub-int v7, p3, v3

    invoke-virtual {v5, p1, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 46
    .local v1, "numRead":I
    if-ltz v1, :cond_2f

    .line 48
    add-int/2addr v3, v1

    .line 50
    if-ne v3, p3, :cond_1e

    move v4, v3

    .line 52
    goto :goto_9

    .line 57
    :cond_2f
    iget-object v5, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v5}, Lcom/braintree/org/bouncycastle/asn1/ASN1StreamParser;->readObject()Lcom/braintree/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;

    .line 59
    .local v0, "aos":Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;
    if-nez v0, :cond_42

    .line 61
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    .line 62
    const/4 v5, 0x1

    if-ge v3, v5, :cond_40

    move v3, v4

    .end local v3    # "totalRead":I
    :cond_40
    move v4, v3

    goto :goto_9

    .line 65
    .restart local v3    # "totalRead":I
    :cond_42
    invoke-interface {v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v5

    iput-object v5, p0, Lcom/braintree/org/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1e
.end method
