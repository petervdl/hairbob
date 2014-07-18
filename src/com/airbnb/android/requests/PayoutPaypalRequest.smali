.class public Lcom/airbnb/android/requests/PayoutPaypalRequest;
.super Lcom/airbnb/android/requests/PayoutRequest;
.source "PayoutPaypalRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/PayoutRequest",
        "<",
        "Lcom/airbnb/android/requests/PayoutPaypalRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/airbnb/android/utils/Strap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "trustParams"    # Lcom/airbnb/android/utils/Strap;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "countryCode"    # Ljava/lang/String;
    .param p4, "currencyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/PayoutPaypalRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p5, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/PayoutPaypalRequest;>;"
    const-string/jumbo v0, "payout_infos/create_paypal"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "email"

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "country"

    invoke-virtual {v1, v2, p3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "currency"

    invoke-virtual {v1, v2, p4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p5}, Lcom/airbnb/android/requests/PayoutRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 17
    return-void
.end method
