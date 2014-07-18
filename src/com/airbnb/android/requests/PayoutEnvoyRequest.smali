.class public Lcom/airbnb/android/requests/PayoutEnvoyRequest;
.super Lcom/airbnb/android/requests/PayoutRequest;
.source "PayoutEnvoyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/PayoutRequest",
        "<",
        "Lcom/airbnb/android/requests/PayoutEnvoyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public envoyUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "envoy_url"
    .end annotation
.end field

.field public postDataJson:Ljava/util/HashMap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "post_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/utils/Strap;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "trustParams"    # Lcom/airbnb/android/utils/Strap;
    .param p2, "countryCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/PayoutEnvoyRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/PayoutEnvoyRequest;>;"
    const-string/jumbo v0, "payout_infos/envoy_form"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "country"

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/android/requests/PayoutRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    return-void
.end method
