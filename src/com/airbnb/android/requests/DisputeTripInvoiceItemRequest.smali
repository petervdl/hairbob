.class public Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "DisputeTripInvoiceItemRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequestV2",
        "<",
        "Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISPUTED:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "tripInvoiceItemId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trip_invoice_items/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 9
    new-instance v0, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    invoke-direct {v0}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;-><init>()V

    const-string/jumbo v1, "dispute_status"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/DisputeTripInvoiceItemRequest;->setJsonPost(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x7

    return v0
.end method
