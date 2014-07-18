.class public Lcom/braintreegateway/encryption/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# instance fields
.field private final ALGORITHM:Ljava/lang/String;

.field private final TRANSFORMATION:Ljava/lang/String;

.field private publicKeyString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "publicKeyString"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "RSA"

    iput-object v0, p0, Lcom/braintreegateway/encryption/Rsa;->ALGORITHM:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    iput-object v0, p0, Lcom/braintreegateway/encryption/Rsa;->TRANSFORMATION:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/braintreegateway/encryption/Rsa;->publicKeyString:Ljava/lang/String;

    .line 28
    return-void
.end method

.method private publicKey()Ljava/security/PublicKey;
    .registers 10

    .prologue
    .line 55
    :try_start_0
    iget-object v7, p0, Lcom/braintreegateway/encryption/Rsa;->publicKeyString:Ljava/lang/String;

    invoke-static {v7}, Lcom/braintree/org/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 56
    .local v0, "decodedPublicKey":[B
    new-instance v2, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v0}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 57
    .local v2, "in":Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/braintree/org/bouncycastle/asn1/DERObject;

    move-result-object v6

    .line 58
    .local v6, "obj":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    invoke-static {v6}, Lcom/braintree/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getInstance(Ljava/lang/Object;)Lcom/braintree/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    move-result-object v5

    .line 59
    .local v5, "keyStruct":Lcom/braintree/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    new-instance v4, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v5}, Lcom/braintree/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5}, Lcom/braintree/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 60
    .local v4, "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    const-string/jumbo v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 61
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2a} :catch_2c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_2a} :catch_32
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2a} :catch_37

    move-result-object v7

    .line 69
    .end local v0    # "decodedPublicKey":[B
    .end local v2    # "in":Lcom/braintree/org/bouncycastle/asn1/ASN1InputStream;
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v4    # "keySpec":Ljava/security/spec/RSAPublicKeySpec;
    .end local v5    # "keyStruct":Lcom/braintree/org/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    .end local v6    # "obj":Lcom/braintree/org/bouncycastle/asn1/DERObject;
    :goto_2b
    return-object v7

    .line 62
    :catch_2c
    move-exception v1

    .line 63
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 69
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_30
    const/4 v7, 0x0

    goto :goto_2b

    .line 64
    :catch_32
    move-exception v1

    .line 65
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    invoke-virtual {v1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_30

    .line 66
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_37
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30
.end method


# virtual methods
.method public encrypt([B)Ljava/lang/String;
    .registers 9
    .param p1, "data"    # [B

    .prologue
    .line 33
    :try_start_0
    const-string/jumbo v5, "RSA/ECB/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    .line 34
    .local v4, "rsa":Ljavax/crypto/Cipher;
    invoke-direct {p0}, Lcom/braintreegateway/encryption/Rsa;->publicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 35
    .local v3, "publicKey":Ljava/security/PublicKey;
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 36
    invoke-static {p1}, Lcom/braintree/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v1

    .line 37
    .local v1, "encodedData":[B
    invoke-virtual {v4, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 38
    .local v2, "encryptedData":[B
    new-instance v5, Ljava/lang/String;

    invoke-static {v2}, Lcom/braintree/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_20} :catch_27
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_20} :catch_2c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_20} :catch_31
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_20} :catch_36

    .line 50
    .end local v1    # "encodedData":[B
    .end local v2    # "encryptedData":[B
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    .end local v4    # "rsa":Ljavax/crypto/Cipher;
    :goto_20
    return-object v5

    .line 39
    :catch_21
    move-exception v0

    .line 40
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 50
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_25
    const/4 v5, 0x0

    goto :goto_20

    .line 41
    :catch_27
    move-exception v0

    .line 42
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_25

    .line 43
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2c
    move-exception v0

    .line 44
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_25

    .line 45
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_31
    move-exception v0

    .line 46
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_25

    .line 47
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_36
    move-exception v0

    .line 48
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_25
.end method
