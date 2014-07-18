.class public Lcom/airbnb/android/requests/TripInvoiceRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "TripInvoiceRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequestV2",
        "<",
        "Lcom/airbnb/android/requests/TripInvoiceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public tripInvoice:Lcom/airbnb/android/models/TripInvoice;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "trip_invoice"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "invoiceId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/TripInvoiceRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/TripInvoiceRequest;>;"
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

    invoke-static {}, Lcom/airbnb/android/requests/TripInvoiceRequest;->getProperties()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 14
    return-void
.end method

.method private static getProperties()Lcom/airbnb/android/utils/Strap;
    .registers 3

    .prologue
    .line 17
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 18
    .local v0, "props":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "_format"

    const-string/jumbo v2, "with_embedded_objects"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 19
    return-object v0
.end method


# virtual methods
.method protected preProcess()V
    .registers 6

    .prologue
    .line 27
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v2, "pendingTripInvoiceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/TripInvoiceItem;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v1, "paidTripInvoiceItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/TripInvoiceItem;>;"
    iget-object v4, p0, Lcom/airbnb/android/requests/TripInvoiceRequest;->tripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v4}, Lcom/airbnb/android/models/TripInvoice;->getTripInvoiceItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/TripInvoiceItem;

    .line 32
    .local v3, "tripInvoiceItem":Lcom/airbnb/android/models/TripInvoiceItem;
    invoke-virtual {v3}, Lcom/airbnb/android/models/TripInvoiceItem;->isHidden()Z

    move-result v4

    if-nez v4, :cond_14

    .line 37
    invoke-virtual {v3}, Lcom/airbnb/android/models/TripInvoiceItem;->isPending()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 40
    :cond_30
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 44
    .end local v3    # "tripInvoiceItem":Lcom/airbnb/android/models/TripInvoiceItem;
    :cond_34
    iget-object v4, p0, Lcom/airbnb/android/requests/TripInvoiceRequest;->tripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v4, v2}, Lcom/airbnb/android/models/TripInvoice;->setPendingTripInvoiceItems(Ljava/util/List;)V

    .line 45
    iget-object v4, p0, Lcom/airbnb/android/requests/TripInvoiceRequest;->tripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v4, v1}, Lcom/airbnb/android/models/TripInvoice;->setPaidTripInvoiceItems(Ljava/util/List;)V

    .line 46
    return-void
.end method
