.class public Lcom/airbnb/android/models/PaymentInstrument;
.super Ljava/lang/Object;
.source "PaymentInstrument.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/PaymentInstrument$CardType;
    }
.end annotation


# static fields
.field private static final CARD_LENGTH_SHORT:I = 0x4

.field public static final CC_TYPE_AMEX:Ljava/lang/String; = "american_express"

.field public static final CC_TYPE_DISCOVER:Ljava/lang/String; = "discover"

.field public static final CC_TYPE_GOOGLE:Ljava/lang/String; = "google"

.field public static final CC_TYPE_JCB:Ljava/lang/String; = "jcb"

.field public static final CC_TYPE_MC:Ljava/lang/String; = "master"

.field public static final CC_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final CC_TYPE_VISA:Ljava/lang/String; = "visa"

.field private static final PAYMENT_INSTRUMENT_COUNTRY:Ljava/lang/String; = "country"

.field private static final PAYMENT_INSTRUMENT_EXPIRE_MONTH:Ljava/lang/String; = "expire_month"

.field private static final PAYMENT_INSTRUMENT_EXPIRE_YEAR:Ljava/lang/String; = "expire_year"

.field private static final PAYMENT_INSTRUMENT_NUMBER:Ljava/lang/String; = "number"

.field private static final PAYMENT_INSTRUMENT_SECURITY_CODE:Ljava/lang/String; = "security_code"

.field private static final PAYMENT_INSTRUMENT_ZIP:Ljava/lang/String; = "zip"

.field private static final serialVersionUID:J = 0x1ef4d4d445380c9bL


# instance fields
.field private mCCV:Ljava/lang/String;

.field private mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field private mCountryCode:Ljava/lang/String;

.field private mCreditCardNumber:Ljava/lang/String;

.field private mExpiryMonth:Ljava/lang/String;

.field private mExpiryYear:Ljava/lang/String;

.field private mId:J

.field private mName:Ljava/lang/String;

.field private mPaymentType:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/android/models/PaymentInstrument$CardType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "cardType"    # Lcom/airbnb/android/models/PaymentInstrument$CardType;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "postal"    # Ljava/lang/String;
    .param p4, "expiryMonth"    # Ljava/lang/String;
    .param p5, "expiryYear"    # Ljava/lang/String;
    .param p6, "creditCard"    # Ljava/lang/String;
    .param p7, "ccv"    # Ljava/lang/String;

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 268
    iput-object p2, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCountryCode:Ljava/lang/String;

    .line 269
    iput-object p3, p0, Lcom/airbnb/android/models/PaymentInstrument;->mPostalCode:Ljava/lang/String;

    .line 270
    iput-object p4, p0, Lcom/airbnb/android/models/PaymentInstrument;->mExpiryMonth:Ljava/lang/String;

    .line 271
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "20"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 274
    :cond_26
    iput-object p5, p0, Lcom/airbnb/android/models/PaymentInstrument;->mExpiryYear:Ljava/lang/String;

    .line 275
    iput-object p6, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCreditCardNumber:Ljava/lang/String;

    .line 276
    iput-object p7, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCCV:Ljava/lang/String;

    .line 278
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    .line 279
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    iget v2, v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mName:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getLastFourDigits()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mName:Ljava/lang/String;

    .line 280
    const v1, 0x7f0e0582

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mPaymentType:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public static createGoogleWalletPaymentInstrument(Lcom/google/android/gms/wallet/FullWallet;)Lcom/airbnb/android/models/PaymentInstrument;
    .registers 9
    .param p0, "fullWallet"    # Lcom/google/android/gms/wallet/FullWallet;

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/google/android/gms/wallet/FullWallet;->getProxyCard()Lcom/google/android/gms/wallet/ProxyCard;

    move-result-object v7

    .line 341
    .local v7, "proxyCard":Lcom/google/android/gms/wallet/ProxyCard;
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->GoogleWallet:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/FullWallet;->getBillingAddress()Lcom/google/android/gms/wallet/Address;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/wallet/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/wallet/FullWallet;->getBillingAddress()Lcom/google/android/gms/wallet/Address;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/wallet/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/google/android/gms/wallet/ProxyCard;->getExpirationMonth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/google/android/gms/wallet/ProxyCard;->getExpirationYear()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/google/android/gms/wallet/ProxyCard;->getPan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lcom/google/android/gms/wallet/ProxyCard;->getCvn()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/models/PaymentInstrument;->forCC(Lcom/airbnb/android/models/PaymentInstrument$CardType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/models/PaymentInstrument;

    move-result-object v0

    return-object v0
.end method

.method public static forCC(Lcom/airbnb/android/models/PaymentInstrument$CardType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/models/PaymentInstrument;
    .registers 15
    .param p0, "cardType"    # Lcom/airbnb/android/models/PaymentInstrument$CardType;
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "postal"    # Ljava/lang/String;
    .param p3, "expiryMonth"    # Ljava/lang/String;
    .param p4, "expiryYear"    # Ljava/lang/String;
    .param p5, "creditCard"    # Ljava/lang/String;
    .param p6, "ccv"    # Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/models/PaymentInstrument;-><init>(Lcom/airbnb/android/models/PaymentInstrument$CardType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v0, "instrument":Lcom/airbnb/android/models/PaymentInstrument;
    return-object v0
.end method

.method private getCardNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCreditCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method private getExpiryMonth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mExpiryMonth:Ljava/lang/String;

    return-object v0
.end method

.method private getExpiryYear()Ljava/lang/String;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mExpiryYear:Ljava/lang/String;

    return-object v0
.end method

.method private getPostalCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method private getSecurityCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCCV:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public encrypt()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/braintreegateway/encryption/Braintree;

    sget-object v2, Lcom/airbnb/android/AirbnbApi;->AIRBNB_BRAINTREE_CLIENT_KEY:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/braintreegateway/encryption/Braintree;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "braintree":Lcom/braintreegateway/encryption/Braintree;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 329
    .local v1, "encryptedCC":Lorg/json/JSONObject;
    const-string/jumbo v2, "number"

    invoke-direct {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getCardNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/braintreegateway/encryption/Braintree;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    const-string/jumbo v2, "security_code"

    invoke-direct {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getSecurityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/braintreegateway/encryption/Braintree;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string/jumbo v2, "expire_month"

    invoke-direct {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getExpiryMonth()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/braintreegateway/encryption/Braintree;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string/jumbo v2, "expire_year"

    invoke-direct {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getExpiryYear()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/braintreegateway/encryption/Braintree;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string/jumbo v2, "zip"

    invoke-direct {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getPostalCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 334
    const-string/jumbo v2, "country"

    invoke-virtual {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    return-object v1
.end method

.method public getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mId:J

    return-wide v0
.end method

.method public getLastFourDigits()Ljava/lang/String;
    .registers 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCreditCardNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCreditCardNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mPaymentType:Ljava/lang/String;

    return-object v0
.end method

.method public isFullPaymentInstrument()Z
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCreditCardNumber:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCreditCardNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setCardType(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cc_type"
    .end annotation

    .prologue
    .line 220
    invoke-static {p1}, Lcom/airbnb/android/models/PaymentInstrument$CardType;->getCardType(Ljava/lang/String;)Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCardType:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 221
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCountryCode:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setCreditCard(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCreditCardNumber:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 238
    iput-wide p1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mId:J

    .line 239
    return-void
.end method

.method public setLastFourDigits(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cc_last_four"
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mCreditCardNumber:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 247
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mName:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setPaymentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "instrument_type"
    .end annotation

    .prologue
    .line 229
    iput-object p1, p0, Lcom/airbnb/android/models/PaymentInstrument;->mPaymentType:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public userDescription()Ljava/lang/String;
    .registers 3

    .prologue
    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "***-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getLastFourDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userInformation()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 346
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
