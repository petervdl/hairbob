.class public Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "SubmitPaymentForReservationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_CC:Ljava/lang/String; = "cc"

.field private static final KEY_CC_GOOGLE_WALLET:Ljava/lang/String; = "google_wallet_cc"


# instance fields
.field public reservation:Lcom/airbnb/android/models/Reservation;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLorg/json/JSONObject;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "reservationId"    # J
    .param p3, "ccInfo"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;>;"
    const-string/jumbo v0, "reservations/%d/pay"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 17
    instance-of v0, p3, Lorg/json/JSONObject;

    if-nez v0, :cond_20

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p3    # "ccInfo":Lorg/json/JSONObject;
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/SubmitPaymentForReservationRequest;->setJsonPost(Ljava/lang/String;)V

    .line 18
    return-void

    .line 17
    .restart local p3    # "ccInfo":Lorg/json/JSONObject;
    :cond_20
    check-cast p3, Lorg/json/JSONObject;

    .end local p3    # "ccInfo":Lorg/json/JSONObject;
    invoke-static {p3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public static createPaymentJson(Lcom/airbnb/android/models/PaymentInstrument;)Lorg/json/JSONObject;
    .registers 6
    .param p0, "instrument"    # Lcom/airbnb/android/models/PaymentInstrument;

    .prologue
    .line 39
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v3, "payment_method"

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->GoogleWallet:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    invoke-virtual {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getCardType()Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v4

    if-ne v2, v4, :cond_27

    const-string/jumbo v2, "google_wallet_cc"

    :goto_13
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/models/PaymentInstrument;->isFullPaymentInstrument()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 44
    const-string/jumbo v2, "payment_instrument"

    invoke-virtual {p0}, Lcom/airbnb/android/models/PaymentInstrument;->encrypt()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    :goto_26
    return-object v1

    .line 41
    :cond_27
    const-string/jumbo v2, "cc"

    goto :goto_13

    .line 46
    :cond_2b
    const-string/jumbo v2, "payment_instrument_id"

    invoke-virtual {p0}, Lcom/airbnb/android/models/PaymentInstrument;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_35} :catch_36

    goto :goto_26

    .line 48
    :catch_36
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "JSON parsing error when creating payment json"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public isSingleFire()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method
