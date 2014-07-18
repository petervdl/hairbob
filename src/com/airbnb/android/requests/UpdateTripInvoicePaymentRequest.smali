.class public Lcom/airbnb/android/requests/UpdateTripInvoicePaymentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "UpdateTripInvoicePaymentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequestV2",
        "<",
        "Lcom/airbnb/android/requests/UpdateTripInvoicePaymentRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(JJLcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "tripInvoiceId"    # J
    .param p3, "paymentInstrumentId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateTripInvoicePaymentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateTripInvoicePaymentRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trip_invoices/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p5}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 7
    new-instance v0, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    invoke-direct {v0}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;-><init>()V

    const-string/jumbo v1, "payment_instrument_id"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/UpdateTripInvoicePaymentRequest;->setJsonPost(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 12
    const/4 v0, 0x7

    return v0
.end method
