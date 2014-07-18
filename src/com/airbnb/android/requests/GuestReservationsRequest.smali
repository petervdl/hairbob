.class public Lcom/airbnb/android/requests/GuestReservationsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequestV2;
.source "GuestReservationsRequest.java"

# interfaces
.implements Lcom/airbnb/android/requests/AirRequestFactory$Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequestV2",
        "<",
        "Lcom/airbnb/android/requests/GuestReservationsRequest;",
        ">;",
        "Lcom/airbnb/android/requests/AirRequestFactory$Provider",
        "<",
        "Lcom/airbnb/android/models/Reservation;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEMS_PER_FETCH:I = 0x32


# instance fields
.field private mIsUpcoming:Z

.field private mOffset:I

.field private reservationWrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public reservations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;IZ)V
    .registers 6
    .param p2, "offset"    # I
    .param p3, "isUpcoming"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/GuestReservationsRequest;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/GuestReservationsRequest;>;"
    const-string/jumbo v1, "reservations"

    if-eqz p3, :cond_11

    invoke-static {p2}, Lcom/airbnb/android/requests/GuestReservationsRequest;->getUpcomingProperties(I)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    :goto_9
    invoke-direct {p0, v1, v0, p1}, Lcom/airbnb/android/requests/AirbnbRequestV2;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 35
    iput p2, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->mOffset:I

    .line 36
    iput-boolean p3, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->mIsUpcoming:Z

    .line 37
    return-void

    .line 33
    :cond_11
    invoke-static {p2}, Lcom/airbnb/android/requests/GuestReservationsRequest;->getPreviousProperties(I)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    goto :goto_9
.end method

.method private static getBaseProperties(I)Lcom/airbnb/android/utils/Strap;
    .registers 5
    .param p0, "offset"    # I

    .prologue
    .line 60
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 61
    .local v0, "props":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "_offset"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 62
    const-string/jumbo v1, "_limit"

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 63
    const-string/jumbo v1, "_format"

    const-string/jumbo v2, "v1_legacy_wrapped"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 64
    const-string/jumbo v1, "guest_id"

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    .line 65
    return-object v0
.end method

.method private static getPreviousProperties(I)Lcom/airbnb/android/utils/Strap;
    .registers 6
    .param p0, "offset"    # I

    .prologue
    .line 76
    invoke-static {p0}, Lcom/airbnb/android/requests/GuestReservationsRequest;->getBaseProperties(I)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    .line 77
    .local v2, "props":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v3, "_order"

    const-string/jumbo v4, "start_date DESC"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 78
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->hasCurrentUser()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 79
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    .line 80
    .local v1, "createdAt":Ljava/util/Date;
    const-string/jumbo v4, "start_date"

    if-eqz v1, :cond_4a

    invoke-static {v1}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    :goto_2c
    invoke-virtual {v2, v4, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 81
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 82
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    const-string/jumbo v3, "end_date"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 85
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "createdAt":Ljava/util/Date;
    :cond_49
    return-object v2

    .line 80
    .restart local v1    # "createdAt":Ljava/util/Date;
    :cond_4a
    const-string/jumbo v3, "2008-01-01"

    goto :goto_2c
.end method

.method private static getUpcomingProperties(I)Lcom/airbnb/android/utils/Strap;
    .registers 4
    .param p0, "offset"    # I

    .prologue
    .line 69
    invoke-static {p0}, Lcom/airbnb/android/requests/GuestReservationsRequest;->getBaseProperties(I)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 70
    .local v0, "props":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "include_pending"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 71
    const-string/jumbo v1, "_order"

    const-string/jumbo v2, "start_date ASC"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 72
    return-object v0
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 95
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method public isPermaCache()Z
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->mOffset:I

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->mIsUpcoming:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected preProcess()V
    .registers 15

    .prologue
    const/4 v9, 0x0

    .line 41
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->reservations:Ljava/util/List;

    .line 43
    iget-object v10, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->reservationWrappers:Ljava/util/List;

    if-eqz v10, :cond_26

    .line 44
    iget-object v10, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->reservationWrappers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    .line 45
    .local v8, "wrapper":Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    iget-object v10, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->reservations:Ljava/util/List;

    iget-object v11, v8, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;->reservation:Lcom/airbnb/android/models/Reservation;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 49
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v8    # "wrapper":Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    :cond_26
    iget-object v10, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->reservations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_63

    iget-boolean v10, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->mIsUpcoming:Z

    if-eqz v10, :cond_63

    .line 50
    iget-object v10, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->reservations:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/models/Reservation;

    .line 51
    .local v7, "res":Lcom/airbnb/android/models/Reservation;
    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 52
    .local v0, "checkin":J
    invoke-virtual {v7}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    add-long v2, v10, v12

    .line 53
    .local v2, "checkout":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 55
    .local v5, "now":J
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v10

    cmp-long v11, v5, v0

    if-lez v11, :cond_60

    cmp-long v11, v5, v2

    if-gez v11, :cond_60

    const/4 v9, 0x1

    :cond_60
    invoke-virtual {v10, v9}, Lcom/airbnb/android/AirbnbApi;->setHasUpcomingTrips(Z)V

    .line 57
    .end local v0    # "checkin":J
    .end local v2    # "checkout":J
    .end local v5    # "now":J
    .end local v7    # "res":Lcom/airbnb/android/models/Reservation;
    :cond_63
    return-void
.end method

.method public provide()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/android/requests/GuestReservationsRequest;->reservations:Ljava/util/List;

    return-object v0
.end method
