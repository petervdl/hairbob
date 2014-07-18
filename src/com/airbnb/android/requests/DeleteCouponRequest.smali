.class public Lcom/airbnb/android/requests/DeleteCouponRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "DeleteCouponRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequestV2",
        "<",
        "Lcom/airbnb/android/requests/DeleteCouponRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public reservation:Lcom/airbnb/android/models/Reservation;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "reservationId"    # J
    .param p3, "coupon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/DeleteCouponRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/DeleteCouponRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reservations/"

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

    const-string/jumbo v3, "with_price"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 12
    new-instance v0, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    invoke-direct {v0}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;-><init>()V

    const-string/jumbo v1, "coupon_code"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->remove(Ljava/lang/String;)Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AirbnbRequestV2$PatchBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/DeleteCouponRequest;->setJsonPost(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x7

    return v0
.end method
