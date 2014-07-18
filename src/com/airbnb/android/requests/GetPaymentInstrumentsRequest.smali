.class public Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetPaymentInstrumentsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mPaymentInstrumentWrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "payment_instruments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$PaymentInstrumentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public mPaymentInstruments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/PaymentInstrument;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;>;"
    const-string/jumbo v0, "account/payment_instruments"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected preProcess()V
    .registers 5

    .prologue
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;->mPaymentInstruments:Ljava/util/List;

    .line 25
    iget-object v2, p0, Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;->mPaymentInstrumentWrappers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$PaymentInstrumentWrapper;

    .line 26
    .local v1, "wrapper":Lcom/airbnb/android/requests/Wrappers$PaymentInstrumentWrapper;
    iget-object v2, p0, Lcom/airbnb/android/requests/GetPaymentInstrumentsRequest;->mPaymentInstruments:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$PaymentInstrumentWrapper;->instrument:Lcom/airbnb/android/models/PaymentInstrument;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 28
    .end local v1    # "wrapper":Lcom/airbnb/android/requests/Wrappers$PaymentInstrumentWrapper;
    :cond_21
    return-void
.end method
