.class public Lcom/braintreegateway/encryption/Aes;
.super Ljava/lang/Object;
.source "Aes.java"


# instance fields
.field private final ALGORITHM:Ljava/lang/String;

.field private final IV_LENGTH:I

.field private final KEY_LENGTH:I

.field private final TRANSFORMATION:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "AES"

    iput-object v0, p0, Lcom/braintreegateway/encryption/Aes;->ALGORITHM:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "AES/CBC/PKCS5Padding"

    iput-object v0, p0, Lcom/braintreegateway/encryption/Aes;->TRANSFORMATION:Ljava/lang/String;

    .line 21
    const/16 v0, 0x20

    iput v0, p0, Lcom/braintreegateway/encryption/Aes;->KEY_LENGTH:I

    .line 22
    const/16 v0, 0x10

    iput v0, p0, Lcom/braintreegateway/encryption/Aes;->IV_LENGTH:I

    return-void
.end method

.method private aesCipher()Ljavax/crypto/Cipher;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 62
    :try_start_1
    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_7} :catch_9
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_7} :catch_e

    move-result-object v1

    .line 68
    :goto_8
    return-object v1

    .line 63
    :catch_9
    move-exception v0

    .line 64
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_8

    .line 66
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_e
    move-exception v0

    .line 67
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_8
.end method

.method private secureRandomBytes(I)[B
    .registers 4
    .param p1, "size"    # I

    .prologue
    .line 73
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 74
    .local v1, "random":Ljava/security/SecureRandom;
    new-array v0, p1, [B

    .line 75
    .local v0, "keyBytes":[B
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 76
    return-object v0
.end method


# virtual methods
.method public encrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "aesKey"    # [B

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/braintreegateway/encryption/Aes;->generateIV()[B

    move-result-object v0

    .line 34
    .local v0, "generatedIV":[B
    invoke-virtual {p0, p1, p2, v0}, Lcom/braintreegateway/encryption/Aes;->encrypt(Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encrypt(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 12
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "aesKey"    # [B
    .param p3, "iv"    # [B

    .prologue
    .line 38
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "AES"

    invoke-direct {v5, p2, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 39
    .local v5, "key":Ljavax/crypto/spec/SecretKeySpec;
    invoke-direct {p0}, Lcom/braintreegateway/encryption/Aes;->aesCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    .line 41
    .local v1, "cipher":Ljavax/crypto/Cipher;
    :try_start_c
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 42
    .local v4, "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 44
    .local v3, "encryptedBytes":[B
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    array-length v6, v3

    array-length v7, p3

    add-int/2addr v6, v7

    invoke-direct {v0, v6}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 45
    .local v0, "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v6, 0x0

    array-length v7, p3

    invoke-virtual {v0, p3, v6, v7}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 46
    const/4 v6, 0x0

    array-length v7, v3

    invoke-virtual {v0, v3, v6, v7}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 47
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v7

    invoke-static {v7}, Lcom/braintree/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_3c
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_3c} :catch_3d
    .catch Ljavax/crypto/BadPaddingException; {:try_start_c .. :try_end_3c} :catch_43
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_c .. :try_end_3c} :catch_48
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_3c} :catch_4d

    .line 57
    .end local v0    # "buffer":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v3    # "encryptedBytes":[B
    .end local v4    # "ivParamSpec":Ljavax/crypto/spec/IvParameterSpec;
    :goto_3c
    return-object v6

    .line 48
    :catch_3d
    move-exception v2

    .line 49
    .local v2, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 57
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :goto_41
    const/4 v6, 0x0

    goto :goto_3c

    .line 50
    :catch_43
    move-exception v2

    .line 51
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_41

    .line 52
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catch_48
    move-exception v2

    .line 53
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_41

    .line 54
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4d
    move-exception v2

    .line 55
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_41
.end method

.method public generateIV()[B
    .registers 2

    .prologue
    .line 29
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/braintreegateway/encryption/Aes;->secureRandomBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public generateKey()[B
    .registers 2

    .prologue
    .line 25
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/braintreegateway/encryption/Aes;->secureRandomBytes(I)[B

    move-result-object v0

    return-object v0
.end method
