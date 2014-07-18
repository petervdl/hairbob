.class public Lcom/airbnb/android/requests/HostHomeRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "HostHomeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/HostHomeRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private activeListings:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "active_listings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/ActiveListing;",
            ">;"
        }
    .end annotation
.end field

.field private alertWrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "alerts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$AlertWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public alerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Alert;",
            ">;"
        }
    .end annotation
.end field

.field public current:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation
.end field

.field private mHasHadResponse:Z

.field private reservationWrappers:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "upcoming_reservations"
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
.method public constructor <init>(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/HostHomeRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/HostHomeRequest;>;"
    const-string/jumbo v0, "account/host_summary"

    invoke-static {}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->getAllowedAlertTypes()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    return-void
.end method


# virtual methods
.method public isPermaCache()Z
    .registers 2

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method protected preProcess()V
    .registers 14

    .prologue
    .line 30
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->reservations:Ljava/util/List;

    .line 31
    iget-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->reservationWrappers:Ljava/util/List;

    if-eqz v9, :cond_25

    .line 32
    iget-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->reservationWrappers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    .line 33
    .local v8, "wrapper":Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    iget-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->reservations:Ljava/util/List;

    iget-object v10, v8, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;->reservation:Lcom/airbnb/android/models/Reservation;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 37
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "wrapper":Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    :cond_25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->alerts:Ljava/util/List;

    .line 38
    iget-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->alertWrappers:Ljava/util/List;

    if-eqz v9, :cond_50

    .line 39
    iget-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->alertWrappers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/requests/Wrappers$AlertWrapper;

    .line 40
    .local v8, "wrapper":Lcom/airbnb/android/requests/Wrappers$AlertWrapper;
    iget-object v1, v8, Lcom/airbnb/android/requests/Wrappers$AlertWrapper;->alert:Lcom/airbnb/android/models/Alert;

    .line 41
    .local v1, "alert":Lcom/airbnb/android/models/Alert;
    invoke-virtual {v1}, Lcom/airbnb/android/models/Alert;->getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v9

    if-eqz v9, :cond_36

    .line 42
    iget-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->alerts:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 47
    .end local v1    # "alert":Lcom/airbnb/android/models/Alert;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v8    # "wrapper":Lcom/airbnb/android/requests/Wrappers$AlertWrapper;
    :cond_50
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->current:Ljava/util/List;

    .line 49
    iget-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->activeListings:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/ActiveListing;

    .line 50
    .local v0, "activeListing":Lcom/airbnb/android/models/ActiveListing;
    invoke-virtual {v0}, Lcom/airbnb/android/models/ActiveListing;->getReservations()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_5d

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/airbnb/android/utils/DateHelper;->getDateMillis(J)J

    move-result-wide v6

    .line 52
    .local v6, "todayDateMillis":J
    invoke-virtual {v0}, Lcom/airbnb/android/models/ActiveListing;->getReservations()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7f
    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Reservation;

    .line 53
    .local v5, "reservationWrapper":Lcom/airbnb/android/models/Reservation;
    invoke-virtual {v5}, Lcom/airbnb/android/models/Reservation;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v4

    .line 55
    .local v4, "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getCheckinDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    const-wide/32 v11, 0x240c8400

    cmp-long v9, v9, v11

    if-gtz v9, :cond_7f

    invoke-virtual {v4}, Lcom/airbnb/android/models/Reservation;->getCheckoutDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    const-wide/32 v11, 0x5265c00

    add-long/2addr v9, v11

    cmp-long v9, v9, v6

    if-ltz v9, :cond_7f

    .line 56
    iget-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->current:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 63
    .end local v0    # "activeListing":Lcom/airbnb/android/models/ActiveListing;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "reservation":Lcom/airbnb/android/models/Reservation;
    .end local v5    # "reservationWrapper":Lcom/airbnb/android/models/Reservation;
    .end local v6    # "todayDateMillis":J
    :cond_b5
    iget-object v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->reservations:Ljava/util/List;

    iget-object v10, p0, Lcom/airbnb/android/requests/HostHomeRequest;->current:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 65
    iget-boolean v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->mHasHadResponse:Z

    if-eqz v9, :cond_c8

    .line 67
    new-instance v9, Lcom/airbnb/android/requests/UnreadBadgesRequest;

    invoke-direct {v9}, Lcom/airbnb/android/requests/UnreadBadgesRequest;-><init>()V

    invoke-virtual {v9}, Lcom/airbnb/android/requests/UnreadBadgesRequest;->execute()V

    .line 69
    :cond_c8
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/airbnb/android/requests/HostHomeRequest;->mHasHadResponse:Z

    .line 70
    return-void
.end method
