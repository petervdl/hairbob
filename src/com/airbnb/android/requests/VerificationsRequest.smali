.class public Lcom/airbnb/android/requests/VerificationsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "VerificationsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/VerificationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public reservation:Lcom/airbnb/android/models/Reservation;

.field private reservationWrapper:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation
.end field

.field public verifications:Lcom/airbnb/android/models/CheckpointVerifications;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "verifications"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/VerificationsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/VerificationsRequest;>;"
    const-string/jumbo v0, "verifications"

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected preProcess()V
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/requests/VerificationsRequest;->reservationWrapper:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    if-eqz v0, :cond_a

    .line 19
    iget-object v0, p0, Lcom/airbnb/android/requests/VerificationsRequest;->reservationWrapper:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    iget-object v0, v0, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;->reservation:Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/requests/VerificationsRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    .line 21
    :cond_a
    return-void
.end method
