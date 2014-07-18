.class public Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;
.super Lcom/braintree/org/bouncycastle/asn1/DERSequence;
.source "LazyDERSequence.java"


# instance fields
.field private encoded:[B

.field private parsed:Z

.field private size:I


# direct methods
.method constructor <init>([B)V
    .registers 3
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/braintree/org/bouncycastle/asn1/DERSequence;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->size:I

    .line 17
    iput-object p1, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    .line 18
    return-void
.end method


# virtual methods
.method encode(Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .param p1, "out"    # Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/16 v0, 0x30

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-virtual {p1, v0, v1}, Lcom/braintree/org/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 74
    return-void
.end method

.method public declared-synchronized getObjects()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 44
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->parsed:Z

    if-eqz v0, :cond_b

    .line 46
    invoke-super {p0}, Lcom/braintree/org/bouncycastle/asn1/DERSequence;->getObjects()Ljava/util/Enumeration;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_13

    move-result-object v0

    .line 49
    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_13

    goto :goto_9

    .line 44
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 54
    iget v1, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->size:I

    if-gez v1, :cond_1e

    .line 56
    new-instance v0, Lcom/braintree/org/bouncycastle/asn1/LazyDERConstructionEnumeration;

    iget-object v1, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->encoded:[B

    invoke-direct {v0, v1}, Lcom/braintree/org/bouncycastle/asn1/LazyDERConstructionEnumeration;-><init>([B)V

    .line 58
    .local v0, "en":Ljava/util/Enumeration;
    const/4 v1, 0x0

    iput v1, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->size:I

    .line 59
    :goto_e
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 61
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 62
    iget v1, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->size:I

    goto :goto_e

    .line 66
    .end local v0    # "en":Ljava/util/Enumeration;
    :cond_1e
    iget v1, p0, Lcom/braintree/org/bouncycastle/asn1/LazyDERSequence;->size:I

    return v1
.end method
