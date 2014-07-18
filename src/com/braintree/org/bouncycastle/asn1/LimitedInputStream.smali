.class abstract Lcom/braintree/org/bouncycastle/asn1/LimitedInputStream;
.super Ljava/io/InputStream;
.source "LimitedInputStream.java"


# instance fields
.field protected final _in:Ljava/io/InputStream;

.field private _limit:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;I)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "limit"    # I

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    .line 16
    iput p2, p0, Lcom/braintree/org/bouncycastle/asn1/LimitedInputStream;->_limit:I

    .line 17
    return-void
.end method


# virtual methods
.method getRemaining()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/braintree/org/bouncycastle/asn1/LimitedInputStream;->_limit:I

    return v0
.end method

.method protected setParentEofDetect(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    .line 27
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    instance-of v0, v0, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    if-eqz v0, :cond_d

    .line 29
    iget-object v0, p0, Lcom/braintree/org/bouncycastle/asn1/LimitedInputStream;->_in:Ljava/io/InputStream;

    check-cast v0, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;

    invoke-virtual {v0, p1}, Lcom/braintree/org/bouncycastle/asn1/IndefiniteLengthInputStream;->setEofOn00(Z)V

    .line 31
    :cond_d
    return-void
.end method
