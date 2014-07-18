.class public Lcom/airbnb/android/requests/CreateReservationRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CreateReservationRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/CreateReservationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field listingWrapper:Lcom/airbnb/android/requests/Wrappers$ListingWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation
.end field

.field requirements:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "requirements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reservation:Lcom/airbnb/android/models/Reservation;

.field reservationWrapper:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "strap"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/CreateReservationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CreateReservationRequest;>;"
    const-string/jumbo v0, "reservations/create"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 21
    return-void
.end method

.method public static createStrap(JJ)Lcom/airbnb/android/utils/Strap;
    .registers 8
    .param p0, "ListingId"    # J
    .param p2, "specialOfferId"    # J

    .prologue
    .line 32
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "listing_id"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "special_offer_id"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 34
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    return-object v0
.end method

.method public static createStrap(JLjava/util/Date;II)Lcom/airbnb/android/utils/Strap;
    .registers 9
    .param p0, "ListingId"    # J
    .param p2, "startDate"    # Ljava/util/Date;
    .param p3, "nights"    # I
    .param p4, "guestCount"    # I

    .prologue
    .line 24
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "listing_id"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "start_date"

    invoke-static {p2}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "nights"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "number_of_guests"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "currency"

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 28
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    return-object v0
.end method


# virtual methods
.method public getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/requests/CreateReservationRequest;->listingWrapper:Lcom/airbnb/android/requests/Wrappers$ListingWrapper;

    iget-object v0, v0, Lcom/airbnb/android/requests/Wrappers$ListingWrapper;->listing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public getRequirements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/airbnb/android/requests/CreateReservationRequest;->requirements:Ljava/util/List;

    return-object v0
.end method

.method public isSingleFire()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method protected preProcess()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/requests/CreateReservationRequest;->reservationWrapper:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    if-eqz v0, :cond_a

    .line 45
    iget-object v0, p0, Lcom/airbnb/android/requests/CreateReservationRequest;->reservationWrapper:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    iget-object v0, v0, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;->reservation:Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/requests/CreateReservationRequest;->reservation:Lcom/airbnb/android/models/Reservation;

    .line 47
    :cond_a
    return-void
.end method

.method public requires(Ljava/lang/String;)Z
    .registers 4
    .param p1, "requirement"    # Ljava/lang/String;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/airbnb/android/requests/CreateReservationRequest;->requirements:Ljava/util/List;

    if-eqz v1, :cond_1e

    .line 75
    iget-object v1, p0, Lcom/airbnb/android/requests/CreateReservationRequest;->requirements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 78
    const/4 v1, 0x1

    .line 82
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method public requiresPhone()Z
    .registers 2

    .prologue
    .line 66
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/CreateReservationRequest;->requires(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requiresProfilePhoto()Z
    .registers 2

    .prologue
    .line 70
    const-string/jumbo v0, "photo"

    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/CreateReservationRequest;->requires(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
