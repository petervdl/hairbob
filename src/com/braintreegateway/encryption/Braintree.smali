.class public Lcom/braintreegateway/encryption/Braintree;
.super Ljava/lang/Object;
.source "Braintree.java"


# instance fields
.field private final VERSION:Ljava/lang/String;

.field private final publicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "publicKey"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string/jumbo v0, "1.0.0"

    iput-object v0, p0, Lcom/braintreegateway/encryption/Braintree;->VERSION:Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcom/braintreegateway/encryption/Braintree;->publicKey:Ljava/lang/String;

    .line 9
    return-void
.end method

.method private getPrefix()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "$bt3|android_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1.0.0"

    const-string/jumbo v2, "."

    const-string/jumbo v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v0, Lcom/braintreegateway/encryption/Aes;

    invoke-direct {v0}, Lcom/braintreegateway/encryption/Aes;-><init>()V

    .line 21
    .local v0, "aes":Lcom/braintreegateway/encryption/Aes;
    new-instance v4, Lcom/braintreegateway/encryption/Rsa;

    iget-object v5, p0, Lcom/braintreegateway/encryption/Braintree;->publicKey:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/braintreegateway/encryption/Rsa;-><init>(Ljava/lang/String;)V

    .line 22
    .local v4, "rsa":Lcom/braintreegateway/encryption/Rsa;
    invoke-virtual {v0}, Lcom/braintreegateway/encryption/Aes;->generateKey()[B

    move-result-object v1

    .line 23
    .local v1, "aesKey":[B
    invoke-virtual {v0, p1, v1}, Lcom/braintreegateway/encryption/Aes;->encrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 24
    .local v3, "encryptedPayload":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/braintreegateway/encryption/Rsa;->encrypt([B)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "encryptedAesKey":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/braintreegateway/encryption/Braintree;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
