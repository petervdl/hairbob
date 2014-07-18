.class public Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;
.super Lcom/airbnb/android/models/FullPaymentInstrument;
.source "EncryptedFullPaymentInstrument.java"


# static fields
.field private static final serialVersionUID:J = 0xef5edf3b046e338L


# instance fields
.field private braintree:Lcom/braintreegateway/encryption/Braintree;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/airbnb/android/models/FullPaymentInstrument;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Lcom/braintreegateway/encryption/Braintree;Lcom/airbnb/android/models/FullPaymentInstrument;)V
    .registers 4
    .param p1, "braintree"    # Lcom/braintreegateway/encryption/Braintree;
    .param p2, "orig"    # Lcom/airbnb/android/models/FullPaymentInstrument;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/airbnb/android/models/FullPaymentInstrument;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->braintree:Lcom/braintreegateway/encryption/Braintree;

    .line 17
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getFullCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setFullCardNumber(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 18
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getExpirationMonth()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setExpirationMonth(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 19
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getExpirationYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setExpirationYear(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 20
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getSecurityCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setSecurityCode(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 21
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setAddress(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 22
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setCity(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 23
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setCountry(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getFirstName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setFirstName(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 25
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getLastName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setLastName(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 26
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setState(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 27
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getZip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setZip(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;

    .line 28
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v0

    iget-object v0, v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setCardType(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Lcom/airbnb/android/models/FullPaymentInstrument;->getLastFourDigits()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->setLastFourDigits(Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public setExpirationMonth(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 3
    .param p1, "expirationMonth"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->braintree:Lcom/braintreegateway/encryption/Braintree;

    invoke-virtual {v0, p1}, Lcom/braintreegateway/encryption/Braintree;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->expirationMonth:Ljava/lang/String;

    .line 41
    return-object p0
.end method

.method public setExpirationYear(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 3
    .param p1, "expirationYear"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->braintree:Lcom/braintreegateway/encryption/Braintree;

    invoke-virtual {v0, p1}, Lcom/braintreegateway/encryption/Braintree;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->expirationYear:Ljava/lang/String;

    .line 47
    return-object p0
.end method

.method public setFullCardNumber(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 3
    .param p1, "fullCardNumber"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->braintree:Lcom/braintreegateway/encryption/Braintree;

    invoke-virtual {v0, p1}, Lcom/braintreegateway/encryption/Braintree;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->fullCardNumber:Ljava/lang/String;

    .line 35
    return-object p0
.end method

.method public setSecurityCode(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 3
    .param p1, "securityCode"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->braintree:Lcom/braintreegateway/encryption/Braintree;

    invoke-virtual {v0, p1}, Lcom/braintreegateway/encryption/Braintree;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/EncryptedFullPaymentInstrument;->securityCode:Ljava/lang/String;

    .line 53
    return-object p0
.end method
