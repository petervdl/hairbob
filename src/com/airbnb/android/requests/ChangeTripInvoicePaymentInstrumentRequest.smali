.class public Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "ChangeTripInvoicePaymentInstrumentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequestV2",
        "<",
        "Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(JJLcom/airbnb/android/requests/RequestListener;)V
    .registers 10
    .param p1, "tripInvoiceId"    # J
    .param p3, "paymentInstrumentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trip_invoices/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p5}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 9
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "payment_instrument_id"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 10
    .local v0, "properties":Lcom/airbnb/android/utils/Strap;
    new-instance v1, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    invoke-direct {v1}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->add(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/requests/ChangeTripInvoicePaymentInstrumentRequest;->setJsonPost(Ljava/lang/String;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 15
    const/4 v0, 0x7

    return v0
.end method
