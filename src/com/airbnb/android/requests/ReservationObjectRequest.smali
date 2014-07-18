.class public Lcom/airbnb/android/requests/ReservationObjectRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "ReservationObjectRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/ReservationObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private mReservation:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation
.end field

.field private mThread:Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thread"
    .end annotation
.end field

.field private mUser:Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "props"    # Lcom/airbnb/android/utils/Strap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReservationObjectRequest;>;"
    const-string/jumbo v0, "reservations/relationship"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lcom/airbnb/android/utils/Strap;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "props"    # Lcom/airbnb/android/utils/Strap;
    .param p2, "shouldUseCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/utils/Strap;",
            "Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReservationObjectRequest;>;"
    invoke-direct {p0, p1, p3}, Lcom/airbnb/android/requests/ReservationObjectRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 48
    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mReturnStrategy:Lcom/android/volley/Request$ReturnStrategy;

    :goto_7
    iput-object v0, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mReturnStrategy:Lcom/android/volley/Request$ReturnStrategy;

    .line 49
    return-void

    .line 48
    :cond_a
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_ONLY:Lcom/android/volley/Request$ReturnStrategy;

    goto :goto_7
.end method

.method public static forConfirmationCode(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;
    .registers 5
    .param p0, "confirmationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReservationObjectRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/ReservationObjectRequest;

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "confirmation_code"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/airbnb/android/requests/ReservationObjectRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static forReservationId(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;
    .registers 7
    .param p0, "reservationId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReservationObjectRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/ReservationObjectRequest;

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/android/requests/ReservationObjectRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static forReservationId(JZLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;
    .registers 8
    .param p0, "reservationId"    # J
    .param p2, "shouldUseCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReservationObjectRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/ReservationObjectRequest;

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/airbnb/android/requests/ReservationObjectRequest;-><init>(Lcom/airbnb/android/utils/Strap;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static forThreadId(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;
    .registers 7
    .param p0, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReservationObjectRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/ReservationObjectRequest;

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "thread_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/android/requests/ReservationObjectRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static forThreadId(JZLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;
    .registers 8
    .param p0, "threadId"    # J
    .param p2, "shouldUseCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReservationObjectRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/ReservationObjectRequest;

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "thread_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/airbnb/android/requests/ReservationObjectRequest;-><init>(Lcom/airbnb/android/utils/Strap;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static forUserId(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;
    .registers 7
    .param p0, "userId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/ReservationObjectRequest;"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/ReservationObjectRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/ReservationObjectRequest;

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/android/requests/ReservationObjectRequest;-><init>(Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static getConsolidatedReservationStatus(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;)Lcom/airbnb/android/models/ReservationStatus;
    .registers 5
    .param p0, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p1, "msgThread"    # Lcom/airbnb/android/models/MessageThread;

    .prologue
    const/4 v0, 0x0

    .line 118
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->isArtificial()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    .line 119
    .local v1, "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    :goto_d
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    .line 120
    .local v0, "msgThreadStatus":Lcom/airbnb/android/models/ReservationStatus;
    :cond_13
    invoke-static {v1, v0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getConsolidatedReservationStatus(Lcom/airbnb/android/models/ReservationStatus;Lcom/airbnb/android/models/ReservationStatus;)Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v2

    return-object v2

    .end local v0    # "msgThreadStatus":Lcom/airbnb/android/models/ReservationStatus;
    .end local v1    # "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    :cond_18
    move-object v1, v0

    .line 118
    goto :goto_d
.end method

.method public static getConsolidatedReservationStatus(Lcom/airbnb/android/models/ReservationStatus;Lcom/airbnb/android/models/ReservationStatus;)Lcom/airbnb/android/models/ReservationStatus;
    .registers 2
    .param p0, "reservationStatus"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p1, "msgThreadStatus"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 127
    if-eqz p0, :cond_3

    .end local p0    # "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    :goto_2
    return-object p0

    .restart local p0    # "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    :cond_3
    move-object p0, p1

    goto :goto_2
.end method

.method private getRealReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mReservation:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mReservation:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    iget-object v0, v0, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;->reservation:Lcom/airbnb/android/models/Reservation;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private isMe()Z
    .registers 5

    .prologue
    .line 101
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->hasCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v0

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method


# virtual methods
.method public getConsolidatedReservationStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v1

    .line 113
    .local v1, "reservation":Lcom/airbnb/android/models/Reservation;
    invoke-virtual {p0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getMessageThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v0

    .line 114
    .local v0, "msgThread":Lcom/airbnb/android/models/MessageThread;
    invoke-static {v1, v0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getConsolidatedReservationStatus(Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/MessageThread;)Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v2

    return-object v2
.end method

.method public getMessageThread()Lcom/airbnb/android/models/MessageThread;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mThread:Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mThread:Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;

    iget-object v0, v0, Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;->thread:Lcom/airbnb/android/models/MessageThread;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 12

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getRealReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v9

    .line 66
    .local v9, "realReservation":Lcom/airbnb/android/models/Reservation;
    if-eqz v9, :cond_7

    .line 88
    .end local v9    # "realReservation":Lcom/airbnb/android/models/Reservation;
    :goto_6
    return-object v9

    .line 70
    .restart local v9    # "realReservation":Lcom/airbnb/android/models/Reservation;
    :cond_7
    invoke-virtual {p0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getMessageThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v10

    .line 71
    .local v10, "thread":Lcom/airbnb/android/models/MessageThread;
    if-eqz v10, :cond_86

    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/User;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 72
    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->hasListingInquiry()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/models/ReservationStatus;->Unknown:Lcom/airbnb/android/models/ReservationStatus;

    if-eq v1, v2, :cond_86

    .line 73
    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Listing;->isMine(Landroid/content/Context;)Z

    move-result v8

    .line 74
    .local v8, "mine":Z
    new-instance v0, Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckinDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckoutDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/DateHelper;->dayCount(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getInquiryNumGuests()I

    move-result v2

    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getInquiryPriceNative()I

    move-result v3

    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getInquiryCheckinDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v5

    if-eqz v8, :cond_79

    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getOtherUser()Lcom/airbnb/android/models/User;

    move-result-object v6

    :goto_65
    invoke-virtual {v10}, Lcom/airbnb/android/models/MessageThread;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/airbnb/android/models/Reservation;-><init>(IIILjava/lang/String;Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/Listing;)V

    .line 82
    .local v0, "artificialReservation":Lcom/airbnb/android/models/Reservation;
    new-instance v1, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    invoke-direct {v1}, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mReservation:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    .line 83
    iget-object v1, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mReservation:Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;

    iput-object v0, v1, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;->reservation:Lcom/airbnb/android/models/Reservation;

    move-object v9, v0

    .line 84
    goto :goto_6

    .line 74
    .end local v0    # "artificialReservation":Lcom/airbnb/android/models/Reservation;
    :cond_79
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v6

    goto :goto_65

    .line 88
    .end local v8    # "mine":Z
    :cond_86
    const/4 v9, 0x0

    goto/16 :goto_6
.end method

.method public getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mUser:Lcom/airbnb/android/requests/Wrappers$UserWrapper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/airbnb/android/requests/ReservationObjectRequest;->mUser:Lcom/airbnb/android/requests/Wrappers$UserWrapper;

    iget-object v0, v0, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isPermaCache()Z
    .registers 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->getRealReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/airbnb/android/requests/ReservationObjectRequest;->isMe()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
