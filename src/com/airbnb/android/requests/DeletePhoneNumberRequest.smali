.class public Lcom/airbnb/android/requests/DeletePhoneNumberRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "DeletePhoneNumberRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequestV2",
        "<",
        "Lcom/airbnb/android/requests/DeletePhoneNumberRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "phoneNumberId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/DeletePhoneNumberRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/DeletePhoneNumberRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "phone_numbers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "_format"

    const-string/jumbo v3, "delete"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getHeaders()Lcom/airbnb/android/utils/Strap;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 20
    invoke-super {p0}, Lcom/airbnb/android/requests/AirbnbRequestV2;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "X-HTTP-Method-Override"

    const-string/jumbo v2, "DELETE"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/airbnb/android/requests/DeletePhoneNumberRequest;->getHeaders()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method
