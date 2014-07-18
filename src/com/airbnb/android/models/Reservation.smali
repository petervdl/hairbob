.class public Lcom/airbnb/android/models/Reservation;
.super Lcom/airbnb/android/models/_Reservation;
.source "Reservation.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Reservationable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation
.end field

.field private static final LONG_TERM_RESERVATION_LENGTH:I = 0x1c


# instance fields
.field private mEndDate:Ljava/util/Date;

.field private mIsArtificial:Z

.field private mStatus:Lcom/airbnb/android/models/ReservationStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    new-instance v0, Lcom/airbnb/android/models/Reservation$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Reservation$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Reservation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/models/_Reservation;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/Listing;)V
    .registers 10
    .param p1, "reservedNightsCount"    # I
    .param p2, "guestCount"    # I
    .param p3, "inquiryPriceNative"    # I
    .param p4, "startDate"    # Ljava/lang/String;
    .param p5, "host"    # Lcom/airbnb/android/models/User;
    .param p6, "guest"    # Lcom/airbnb/android/models/User;
    .param p7, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/airbnb/android/models/_Reservation;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/models/Reservation;->mBasePrice:I

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/airbnb/android/models/Reservation;->mId:J

    .line 28
    iput p1, p0, Lcom/airbnb/android/models/Reservation;->mReservedNightsCount:I

    .line 29
    iput p2, p0, Lcom/airbnb/android/models/Reservation;->mGuestCount:I

    .line 30
    invoke-virtual {p0, p4}, Lcom/airbnb/android/models/Reservation;->setStartDate(Ljava/lang/String;)V

    .line 31
    iput p3, p0, Lcom/airbnb/android/models/Reservation;->mTotalPrice:I

    .line 32
    iput p3, p0, Lcom/airbnb/android/models/Reservation;->mPayoutPriceNative:I

    .line 33
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    iput-object v0, p0, Lcom/airbnb/android/models/Reservation;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 34
    iput-object p5, p0, Lcom/airbnb/android/models/Reservation;->mHost:Lcom/airbnb/android/models/User;

    .line 35
    iput-object p6, p0, Lcom/airbnb/android/models/Reservation;->mGuest:Lcom/airbnb/android/models/User;

    .line 36
    iput-object p7, p0, Lcom/airbnb/android/models/Reservation;->mListing:Lcom/airbnb/android/models/Listing;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/Reservation;->mIsArtificial:Z

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/util/Date;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "startDate"    # Ljava/util/Date;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/airbnb/android/models/_Reservation;-><init>()V

    .line 44
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/airbnb/android/models/Reservation;->mId:J

    .line 45
    iput-object p2, p0, Lcom/airbnb/android/models/Reservation;->mStartDate:Ljava/util/Date;

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/android/models/Reservation;->mReservedNightsCount:I

    .line 47
    return-void
.end method

.method public static dateWithinReservation(Lcom/airbnb/android/interfaces/Reservationable;Ljava/util/Date;)Z
    .registers 7
    .param p0, "reso"    # Lcom/airbnb/android/interfaces/Reservationable;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x1

    .line 180
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {p0}, Lcom/airbnb/android/interfaces/Reservationable;->getCheckinDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_22

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {p0}, Lcom/airbnb/android/interfaces/Reservationable;->getCheckoutDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_22

    .line 183
    :cond_21
    :goto_21
    return v0

    :cond_22
    invoke-interface {p0}, Lcom/airbnb/android/interfaces/Reservationable;->getCheckinDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/android/utils/DateHelper;->compareDay(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_36

    invoke-interface {p0}, Lcom/airbnb/android/interfaces/Reservationable;->getCheckoutDate()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/airbnb/android/utils/DateHelper;->compareDay(Ljava/util/Date;Ljava/util/Date;)I

    move-result v1

    if-ltz v1, :cond_21

    :cond_36
    const/4 v0, 0x0

    goto :goto_21
.end method


# virtual methods
.method public currUserIsHost()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 121
    .local v0, "currUser":Lcom/airbnb/android/models/User;
    if-nez v0, :cond_c

    .line 125
    :cond_b
    :goto_b
    return v2

    .line 124
    :cond_c
    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 125
    .local v1, "host":Lcom/airbnb/android/models/User;
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    const/4 v2, 0x1

    goto :goto_b
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-ne p0, p1, :cond_5

    .line 166
    :cond_4
    :goto_4
    return v1

    .line 156
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 157
    goto :goto_4

    .line 159
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 160
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 162
    check-cast v0, Lcom/airbnb/android/models/Reservation;

    .line 163
    .local v0, "other":Lcom/airbnb/android/models/Reservation;
    iget-wide v3, p0, Lcom/airbnb/android/models/Reservation;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/Reservation;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 164
    goto :goto_4
.end method

.method public bridge synthetic getBasePrice()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getBasePrice()I

    move-result v0

    return v0
.end method

.method public getCheckinDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/airbnb/android/models/Reservation;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCheckoutDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getEndDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfirmationCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getConfirmationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCouponCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getCouponCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCouponPriceNative()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getCouponPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCouponSavings()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getCouponSavings()I

    move-result v0

    return v0
.end method

.method public getEndDate()Ljava/util/Date;
    .registers 5

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/models/Reservation;->mEndDate:Ljava/util/Date;

    if-nez v0, :cond_16

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/utils/ReservationHelper;->endDate(JLjava/util/Date;I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Reservation;->mEndDate:Ljava/util/Date;

    .line 73
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/models/Reservation;->mEndDate:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getExtrasPrice()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getExtrasPrice()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getGuest()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getGuest()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGuestCount()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getGuestCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getGuestFee()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getGuestFee()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHost()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getHost()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHostFee()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getHostFee()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPayoutPriceNative()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getPayoutPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPendingBeganAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getPendingBeganAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPendingExpiresAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getPendingExpiresAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPerNightPrice()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getPerNightPrice()I

    move-result v0

    return v0
.end method

.method public getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 5

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .end local p0    # "this":Lcom/airbnb/android/models/Reservation;
    :goto_a
    return-object p0

    .restart local p0    # "this":Lcom/airbnb/android/models/Reservation;
    :cond_b
    iget-object p0, p0, Lcom/airbnb/android/models/Reservation;->mReservation:Lcom/airbnb/android/models/Reservation;

    goto :goto_a
.end method

.method public bridge synthetic getReservationStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getReservationStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReservedNightsCount()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getReservedNightsCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSecurityDeposit()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getSecurityDeposit()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getStartDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getStartDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/Reservation;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    return-object v0
.end method

.method public bridge synthetic getStatusString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getStatusString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubtotalPriceNative()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getSubtotalPriceNative()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTaxAmount()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getTaxAmount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTaxDescriptions()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getTaxDescriptions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThreadId()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getThreadId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTotalPrice()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getTotalPrice()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTripInvoice()Lcom/airbnb/android/models/TripInvoice;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Reservation;->getTripInvoice()Lcom/airbnb/android/models/TripInvoice;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 145
    const/16 v0, 0x1f

    .line 146
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 147
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/Reservation;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/Reservation;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 148
    return v1
.end method

.method public isAccepted()Z
    .registers 3

    .prologue
    .line 96
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isArtificial()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/airbnb/android/models/Reservation;->mIsArtificial:Z

    return v0
.end method

.method public isCancelled()Z
    .registers 3

    .prologue
    .line 104
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Cancelled:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isCheckpointed()Z
    .registers 3

    .prologue
    .line 108
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Checkpoint:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDenied()Z
    .registers 3

    .prologue
    .line 100
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Denied:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isLongTerm()Z
    .registers 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getReservedNightsCount()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPending()Z
    .registers 3

    .prologue
    .line 92
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Pending:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {p0}, Lcom/airbnb/android/models/Reservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setBasePrice(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setBasePrice(I)V

    return-void
.end method

.method public bridge synthetic setConfirmationCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setConfirmationCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCouponCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setCouponCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCouponPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setCouponPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setCouponSavings(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setCouponSavings(I)V

    return-void
.end method

.method public bridge synthetic setExtrasPrice(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setExtrasPrice(I)V

    return-void
.end method

.method public setGuest(Lcom/airbnb/android/requests/Wrappers$UserWrapper;)V
    .registers 3
    .param p1, "userWrapper"    # Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "guest"
    .end annotation

    .prologue
    .line 88
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/Reservation;->mGuest:Lcom/airbnb/android/models/User;

    .line 89
    return-void
.end method

.method public bridge synthetic setGuestCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setGuestCount(I)V

    return-void
.end method

.method public bridge synthetic setGuestFee(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setGuestFee(I)V

    return-void
.end method

.method public setHost(Lcom/airbnb/android/requests/Wrappers$UserWrapper;)V
    .registers 3
    .param p1, "userWrapper"    # Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "host"
    .end annotation

    .prologue
    .line 83
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/Reservation;->mHost:Lcom/airbnb/android/models/User;

    .line 84
    return-void
.end method

.method public bridge synthetic setHostFee(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setHostFee(I)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Reservation;->setId(J)V

    return-void
.end method

.method public setListing(Lcom/airbnb/android/requests/Wrappers$ListingWrapper;)V
    .registers 3
    .param p1, "listingWrapper"    # Lcom/airbnb/android/requests/Wrappers$ListingWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation

    .prologue
    .line 78
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$ListingWrapper;->listing:Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/models/Reservation;->mListing:Lcom/airbnb/android/models/Listing;

    .line 79
    return-void
.end method

.method public bridge synthetic setPayoutPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setPayoutPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setPendingBeganAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setPendingBeganAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setPendingExpiresAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setPendingExpiresAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setPerNightPrice(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setPerNightPrice(I)V

    return-void
.end method

.method public bridge synthetic setReservation(Lcom/airbnb/android/models/Reservation;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setReservation(Lcom/airbnb/android/models/Reservation;)V

    return-void
.end method

.method public bridge synthetic setReservedNightsCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setReservedNightsCount(I)V

    return-void
.end method

.method public bridge synthetic setSecurityDeposit(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setSecurityDeposit(I)V

    return-void
.end method

.method public setStartDate(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "start_date"
    .end annotation

    .prologue
    .line 56
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Reservation;->mStartDate:Ljava/util/Date;

    .line 57
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 3
    .param p1, "statusString"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Lcom/airbnb/android/models/ReservationStatus;->findStatus(Ljava/lang/String;)Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Reservation;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 62
    return-void
.end method

.method public bridge synthetic setStatusString(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setStatusString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSubtotalPriceNative(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setSubtotalPriceNative(I)V

    return-void
.end method

.method public bridge synthetic setTaxAmount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setTaxAmount(I)V

    return-void
.end method

.method public bridge synthetic setTaxDescriptions(Ljava/util/ArrayList;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setTaxDescriptions(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic setThreadId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setThreadId(I)V

    return-void
.end method

.method public bridge synthetic setTotalPrice(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setTotalPrice(I)V

    return-void
.end method

.method public bridge synthetic setTripInvoice(Lcom/airbnb/android/models/TripInvoice;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/TripInvoice;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Reservation;->setTripInvoice(Lcom/airbnb/android/models/TripInvoice;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Reservation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
