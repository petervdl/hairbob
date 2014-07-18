.class public Lcom/airbnb/android/requests/UpdateReservationRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "UpdateReservationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/UpdateReservationRequest;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID_ID:I = -0x1


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "endpoint"    # Ljava/lang/String;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateReservationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateReservationRequest;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 80
    return-void
.end method

.method public static forAccept(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;
    .registers 5
    .param p0, "reservationId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateReservationRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdateReservationRequest;"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateReservationRequest;>;"
    sget-object v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->Accepted:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/airbnb/android/requests/UpdateReservationRequest;->getRequest(Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;ZJLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static forCancel(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;
    .registers 5
    .param p0, "reservationId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateReservationRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdateReservationRequest;"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateReservationRequest;>;"
    sget-object v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->Cancelled:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/airbnb/android/requests/UpdateReservationRequest;->getRequest(Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;ZJLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static forDecline(JZLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;
    .registers 5
    .param p0, "reservationId"    # J
    .param p2, "blockOnDecline"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateReservationRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdateReservationRequest;"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateReservationRequest;>;"
    sget-object v0, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->Declined:Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;

    invoke-static {v0, p2, p0, p1, p3}, Lcom/airbnb/android/requests/UpdateReservationRequest;->getRequest(Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;ZJLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;

    move-result-object v0

    return-object v0
.end method

.method private static getRequest(Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;ZJLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/UpdateReservationRequest;
    .registers 11
    .param p0, "status"    # Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;
    .param p1, "blockOnDecline"    # Z
    .param p2, "reservationId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;",
            "ZJ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/UpdateReservationRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/UpdateReservationRequest;"
        }
    .end annotation

    .prologue
    .line 65
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/UpdateReservationRequest;>;"
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->createBasePropertiesAsStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "status"

    invoke-virtual {p0}, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->getStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 67
    .local v1, "params":Lcom/airbnb/android/utils/Strap;
    invoke-virtual {p0}, Lcom/airbnb/android/requests/UpdateReservationRequest$UpdateReservationStatus;->getStatus()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "declined"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    if-eqz p1, :cond_2b

    .line 68
    const-string/jumbo v3, "decline_block_dates"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 72
    :cond_2b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reservations/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/update"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "endpoint":Ljava/lang/String;
    new-instance v2, Lcom/airbnb/android/requests/UpdateReservationRequest;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p4}, Lcom/airbnb/android/requests/UpdateReservationRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 74
    .local v2, "request":Lcom/airbnb/android/requests/UpdateReservationRequest;
    invoke-virtual {v2, v1}, Lcom/airbnb/android/requests/UpdateReservationRequest;->setPostParamsAsStrap(Lcom/airbnb/android/utils/Strap;)V

    .line 75
    return-object v2
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
