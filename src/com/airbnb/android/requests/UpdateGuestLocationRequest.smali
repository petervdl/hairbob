.class public Lcom/airbnb/android/requests/UpdateGuestLocationRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "UpdateGuestLocationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/UpdateGuestLocationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public arrivalPlan:Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrival_plan"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;DDLcom/airbnb/android/requests/RequestListener;)V
    .registers 11
    .param p1, "confirmationCode"    # Ljava/lang/String;
    .param p2, "lat"    # D
    .param p4, "lng"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateGuestLocationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p6, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateGuestLocationRequest;>;"
    const-string/jumbo v0, "arrivals/update_position"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "confirmation_code"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "guest_lat"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "guest_lng"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p6}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
