.class public Lcom/airbnb/android/requests/PayoutRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "PayoutRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/airbnb/android/requests/AirbnbRequest;",
        ">",
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "this":Lcom/airbnb/android/requests/PayoutRequest;, "Lcom/airbnb/android/requests/PayoutRequest<TT;>;"
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 17
    return-void
.end method

.method public static generateTrustStrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/airbnb/android/utils/Strap;
    .registers 10
    .param p0, "address1"    # Ljava/lang/String;
    .param p1, "address2"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "zip"    # Ljava/lang/String;
    .param p5, "country"    # Ljava/lang/String;
    .param p6, "birthdate"    # Ljava/util/Date;

    .prologue
    .line 26
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "payout_address1"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "payout_address2"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "payout_city"

    invoke-virtual {v0, v1, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "payout_state"

    invoke-virtual {v0, v1, p3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "payout_zip"

    invoke-virtual {v0, v1, p4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "payout_country"

    invoke-virtual {v0, v1, p5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "user_birthdate"

    invoke-static {p6}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected deliverResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/airbnb/android/requests/PayoutRequest;, "Lcom/airbnb/android/requests/PayoutRequest<TT;>;"
    .local p1, "response":Lcom/airbnb/android/requests/AirbnbRequest;, "TT;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/User;->setHasPayoutInfo(Z)V

    .line 38
    new-instance v0, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->execute()V

    .line 39
    invoke-super {p0, p1}, Lcom/airbnb/android/requests/AirbnbRequest;->deliverResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V

    .line 40
    return-void
.end method

.method protected bridge synthetic deliverResponse(Lcom/airbnb/android/requests/JacksonRequest;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/requests/JacksonRequest;

    .prologue
    .line 13
    .local p0, "this":Lcom/airbnb/android/requests/PayoutRequest;, "Lcom/airbnb/android/requests/PayoutRequest<TT;>;"
    check-cast p1, Lcom/airbnb/android/requests/AirbnbRequest;

    .end local p1    # "x0":Lcom/airbnb/android/requests/JacksonRequest;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/requests/PayoutRequest;->deliverResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    .local p0, "this":Lcom/airbnb/android/requests/PayoutRequest;, "Lcom/airbnb/android/requests/PayoutRequest<TT;>;"
    check-cast p1, Lcom/airbnb/android/requests/AirbnbRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/requests/PayoutRequest;->deliverResponse(Lcom/airbnb/android/requests/AirbnbRequest;)V

    return-void
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 21
    .local p0, "this":Lcom/airbnb/android/requests/PayoutRequest;, "Lcom/airbnb/android/requests/PayoutRequest<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
