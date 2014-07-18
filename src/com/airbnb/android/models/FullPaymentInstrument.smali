.class public Lcom/airbnb/android/models/FullPaymentInstrument;
.super Lcom/airbnb/android/models/PaymentInstrument;
.source "FullPaymentInstrument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/FullPaymentInstrument$CreditCardNumberInvalidException;
    }
.end annotation


# static fields
.field private static final PAYMENT_INSTRUMENT_ADDRESS1:Ljava/lang/String; = "address1"

.field private static final PAYMENT_INSTRUMENT_CITY:Ljava/lang/String; = "city"

.field private static final PAYMENT_INSTRUMENT_COUNTRY:Ljava/lang/String; = "country"

.field private static final PAYMENT_INSTRUMENT_EXPIRE_MONTH:Ljava/lang/String; = "expire_month"

.field private static final PAYMENT_INSTRUMENT_EXPIRE_YEAR:Ljava/lang/String; = "expire_year"

.field private static final PAYMENT_INSTRUMENT_FIRST_NAME:Ljava/lang/String; = "first_name"

.field private static final PAYMENT_INSTRUMENT_LAST_NAME:Ljava/lang/String; = "last_name"

.field private static final PAYMENT_INSTRUMENT_NUMBER:Ljava/lang/String; = "number"

.field private static final PAYMENT_INSTRUMENT_SECURITY_CODE:Ljava/lang/String; = "security_code"

.field private static final PAYMENT_INSTRUMENT_STATE:Ljava/lang/String; = "state"

.field private static final PAYMENT_INSTRUMENT_ZIP:Ljava/lang/String; = "zip"

.field private static final serialVersionUID:J = 0x12a8a98106add242L


# instance fields
.field private address:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field protected expirationMonth:Ljava/lang/String;

.field protected expirationYear:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field protected fullCardNumber:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field protected securityCode:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/airbnb/android/models/PaymentInstrument;-><init>()V

    .line 10
    return-void
.end method

.method private _updateCardInfo()V
    .registers 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->fullCardNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->fullCardNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/models/FullPaymentInstrument;->setLastFourDigits(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->fullCardNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v1, :pswitch_data_2c

    .line 106
    const/4 v0, 0x0

    .line 109
    .local v0, "type":Ljava/lang/String;
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/FullPaymentInstrument;->setCardType(Ljava/lang/String;)V

    .line 110
    return-void

    .line 97
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_20
    const-string/jumbo v0, "visa"

    .line 98
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_1c

    .line 100
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_24
    const-string/jumbo v0, "master"

    .line 101
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_1c

    .line 103
    .end local v0    # "type":Ljava/lang/String;
    :pswitch_28
    const-string/jumbo v0, "american_express"

    .line 104
    .restart local v0    # "type":Ljava/lang/String;
    goto :goto_1c

    .line 95
    :pswitch_data_2c
    .packed-switch 0x33
        :pswitch_28
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method

.method public static isNumberValid(Ljava/lang/String;)Z
    .registers 9
    .param p0, "cardNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_11

    :cond_f
    move v4, v5

    .line 47
    :cond_10
    :goto_10
    return v4

    .line 34
    :cond_11
    const/4 v2, 0x0

    .line 35
    .local v2, "sum":I
    const/4 v1, 0x0

    .line 36
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_34

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/lit8 v3, v6, -0x30

    .line 38
    .local v3, "v":I
    rem-int/lit8 v6, v1, 0x2

    if-ne v6, v4, :cond_32

    .line 39
    mul-int/lit8 v3, v3, 0x2

    .line 40
    div-int/lit8 v6, v3, 0xa

    add-int/2addr v2, v6

    .line 41
    rem-int/lit8 v6, v3, 0xa

    add-int/2addr v2, v6

    .line 45
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    .line 36
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 43
    :cond_32
    add-int/2addr v2, v3

    goto :goto_2d

    .line 47
    .end local v3    # "v":I
    :cond_34
    rem-int/lit8 v6, v2, 0xa

    if-eqz v6, :cond_10

    move v4, v5

    goto :goto_10
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationMonth()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->expirationMonth:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationYear()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->expirationYear:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCardNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->fullCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->securityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->zip:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->address:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setCity(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 2
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->city:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->country:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setExpirationMonth(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 2
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->expirationMonth:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setExpirationYear(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 2
    .param p1, "year"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->expirationYear:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setFirstName(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 2
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->firstName:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public setFullCardNumber(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 4
    .param p1, "fullCardNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/airbnb/android/models/FullPaymentInstrument$CreditCardNumberInvalidException;
        }
    .end annotation

    .prologue
    .line 55
    const-string/jumbo v0, " "

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {p1}, Lcom/airbnb/android/models/FullPaymentInstrument;->isNumberValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 57
    new-instance v0, Lcom/airbnb/android/models/FullPaymentInstrument$CreditCardNumberInvalidException;

    invoke-direct {v0}, Lcom/airbnb/android/models/FullPaymentInstrument$CreditCardNumberInvalidException;-><init>()V

    throw v0

    .line 59
    :cond_16
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->fullCardNumber:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lcom/airbnb/android/models/FullPaymentInstrument;->_updateCardInfo()V

    .line 61
    return-object p0
.end method

.method public setLastName(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 2
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->lastName:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public setSecurityCode(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 2
    .param p1, "securityCode"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->securityCode:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public setState(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->state:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public setZip(Ljava/lang/String;)Lcom/airbnb/android/models/FullPaymentInstrument;
    .registers 2
    .param p1, "zip"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->zip:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 190
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "number"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->fullCardNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    const-string/jumbo v1, "security_code"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->securityCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string/jumbo v1, "expire_month"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->expirationMonth:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 193
    const-string/jumbo v1, "expire_year"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->expirationYear:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string/jumbo v1, "first_name"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string/jumbo v1, "last_name"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    const-string/jumbo v1, "address1"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    const-string/jumbo v1, "city"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->city:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    const-string/jumbo v1, "state"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->state:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    const-string/jumbo v1, "zip"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->zip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    const-string/jumbo v1, "country"

    iget-object v2, p0, Lcom/airbnb/android/models/FullPaymentInstrument;->country:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    return-object v0
.end method

.method public userInformation()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 206
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/android/models/FullPaymentInstrument;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/models/FullPaymentInstrument;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
