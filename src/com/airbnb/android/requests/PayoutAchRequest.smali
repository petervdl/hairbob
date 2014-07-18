.class public Lcom/airbnb/android/requests/PayoutAchRequest;
.super Lcom/airbnb/android/requests/PayoutRequest;
.source "PayoutAchRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/PayoutRequest",
        "<",
        "Lcom/airbnb/android/requests/PayoutAchRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private success:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/utils/Strap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 11
    .param p1, "trustParams"    # Lcom/airbnb/android/utils/Strap;
    .param p2, "countryCode"    # Ljava/lang/String;
    .param p3, "personName"    # Ljava/lang/String;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "routingNumber"    # Ljava/lang/String;
    .param p6, "accountNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/PayoutAchRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p7, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/PayoutAchRequest;>;"
    const-string/jumbo v0, "payout_infos/create_ach"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "country"

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "account_name"

    invoke-virtual {v1, v2, p3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "account_type"

    invoke-virtual {v1, v2, p4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "routing_number"

    invoke-virtual {v1, v2, p5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "account_number"

    invoke-virtual {v1, v2, p6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p7}, Lcom/airbnb/android/requests/PayoutRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .registers 2

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/airbnb/android/requests/PayoutAchRequest;->success:Z

    return v0
.end method
