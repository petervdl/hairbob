.class abstract Lcom/airbnb/android/models/_Reservation;
.super Ljava/lang/Object;
.source "_Reservation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBasePrice:I

.field protected mConfirmationCode:Ljava/lang/String;

.field protected mCouponCode:Ljava/lang/String;

.field protected mCouponPriceNative:I

.field protected mCouponSavings:I

.field protected mExtrasPrice:I

.field protected mGuest:Lcom/airbnb/android/models/User;

.field protected mGuestCount:I

.field protected mGuestFee:I

.field protected mHost:Lcom/airbnb/android/models/User;

.field protected mHostFee:I

.field protected mId:J

.field protected mListing:Lcom/airbnb/android/models/Listing;

.field protected mPayoutPriceNative:I

.field protected mPendingBeganAt:Ljava/util/Date;

.field protected mPendingExpiresAt:Ljava/util/Date;

.field protected mPerNightPrice:I

.field protected mReservation:Lcom/airbnb/android/models/Reservation;

.field protected mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

.field protected mReservedNightsCount:I

.field protected mSecurityDeposit:I

.field protected mStartDate:Ljava/util/Date;

.field protected mStatusString:Ljava/lang/String;

.field protected mSubtotalPriceNative:I

.field protected mTaxAmount:I

.field protected mTaxDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/TaxDescription;",
            ">;"
        }
    .end annotation
.end field

.field protected mThreadId:I

.field protected mTotalPrice:I

.field protected mTripInvoice:Lcom/airbnb/android/models/TripInvoice;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method protected constructor <init>(Ljava/util/ArrayList;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/TripInvoice;Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/User;IIIIIIIIIIIIIIIJ)V
    .registers 33
    .param p2, "pendingExpiresAt"    # Ljava/util/Date;
    .param p3, "pendingBeganAt"    # Ljava/util/Date;
    .param p4, "startDate"    # Ljava/util/Date;
    .param p5, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p6, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p7, "reservationStatus"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p8, "confirmationCode"    # Ljava/lang/String;
    .param p9, "statusString"    # Ljava/lang/String;
    .param p10, "couponCode"    # Ljava/lang/String;
    .param p11, "tripInvoice"    # Lcom/airbnb/android/models/TripInvoice;
    .param p12, "host"    # Lcom/airbnb/android/models/User;
    .param p13, "guest"    # Lcom/airbnb/android/models/User;
    .param p14, "basePrice"    # I
    .param p15, "reservedNightsCount"    # I
    .param p16, "guestCount"    # I
    .param p17, "couponSavings"    # I
    .param p18, "couponPriceNative"    # I
    .param p19, "totalPrice"    # I
    .param p20, "subtotalPriceNative"    # I
    .param p21, "payoutPriceNative"    # I
    .param p22, "extrasPrice"    # I
    .param p23, "hostFee"    # I
    .param p24, "guestFee"    # I
    .param p25, "securityDeposit"    # I
    .param p26, "threadId"    # I
    .param p27, "perNightPrice"    # I
    .param p28, "taxAmount"    # I
    .param p29, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/TaxDescription;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Lcom/airbnb/android/models/Listing;",
            "Lcom/airbnb/android/models/Reservation;",
            "Lcom/airbnb/android/models/ReservationStatus;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/TripInvoice;",
            "Lcom/airbnb/android/models/User;",
            "Lcom/airbnb/android/models/User;",
            "IIIIIIIIIIIIIIIJ)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "taxDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/TaxDescription;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_Reservation;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/airbnb/android/models/_Reservation;->mTaxDescriptions:Ljava/util/ArrayList;

    .line 49
    iput-object p2, p0, Lcom/airbnb/android/models/_Reservation;->mPendingExpiresAt:Ljava/util/Date;

    .line 50
    iput-object p3, p0, Lcom/airbnb/android/models/_Reservation;->mPendingBeganAt:Ljava/util/Date;

    .line 51
    iput-object p4, p0, Lcom/airbnb/android/models/_Reservation;->mStartDate:Ljava/util/Date;

    .line 52
    iput-object p5, p0, Lcom/airbnb/android/models/_Reservation;->mListing:Lcom/airbnb/android/models/Listing;

    .line 53
    iput-object p6, p0, Lcom/airbnb/android/models/_Reservation;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 54
    iput-object p7, p0, Lcom/airbnb/android/models/_Reservation;->mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 55
    iput-object p8, p0, Lcom/airbnb/android/models/_Reservation;->mConfirmationCode:Ljava/lang/String;

    .line 56
    iput-object p9, p0, Lcom/airbnb/android/models/_Reservation;->mStatusString:Ljava/lang/String;

    .line 57
    iput-object p10, p0, Lcom/airbnb/android/models/_Reservation;->mCouponCode:Ljava/lang/String;

    .line 58
    iput-object p11, p0, Lcom/airbnb/android/models/_Reservation;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    .line 59
    iput-object p12, p0, Lcom/airbnb/android/models/_Reservation;->mHost:Lcom/airbnb/android/models/User;

    .line 60
    iput-object p13, p0, Lcom/airbnb/android/models/_Reservation;->mGuest:Lcom/airbnb/android/models/User;

    .line 61
    move/from16 v0, p14

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mBasePrice:I

    .line 62
    move/from16 v0, p15

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mReservedNightsCount:I

    .line 63
    move/from16 v0, p16

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mGuestCount:I

    .line 64
    move/from16 v0, p17

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mCouponSavings:I

    .line 65
    move/from16 v0, p18

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mCouponPriceNative:I

    .line 66
    move/from16 v0, p19

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mTotalPrice:I

    .line 67
    move/from16 v0, p20

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mSubtotalPriceNative:I

    .line 68
    move/from16 v0, p21

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mPayoutPriceNative:I

    .line 69
    move/from16 v0, p22

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mExtrasPrice:I

    .line 70
    move/from16 v0, p23

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mHostFee:I

    .line 71
    move/from16 v0, p24

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mGuestFee:I

    .line 72
    move/from16 v0, p25

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mSecurityDeposit:I

    .line 73
    move/from16 v0, p26

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mThreadId:I

    .line 74
    move/from16 v0, p27

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mPerNightPrice:I

    .line 75
    move/from16 v0, p28

    iput v0, p0, Lcom/airbnb/android/models/_Reservation;->mTaxAmount:I

    .line 76
    move-wide/from16 v0, p29

    iput-wide v0, p0, Lcom/airbnb/android/models/_Reservation;->mId:J

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public getBasePrice()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mBasePrice:I

    return v0
.end method

.method public getConfirmationCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mConfirmationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mCouponCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponPriceNative()I
    .registers 2

    .prologue
    .line 241
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mCouponPriceNative:I

    return v0
.end method

.method public getCouponSavings()I
    .registers 2

    .prologue
    .line 230
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mCouponSavings:I

    return v0
.end method

.method public getExtrasPrice()I
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mExtrasPrice:I

    return v0
.end method

.method public getGuest()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mGuest:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getGuestCount()I
    .registers 2

    .prologue
    .line 219
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mGuestCount:I

    return v0
.end method

.method public getGuestFee()I
    .registers 2

    .prologue
    .line 307
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mGuestFee:I

    return v0
.end method

.method public getHost()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mHost:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getHostFee()I
    .registers 2

    .prologue
    .line 296
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mHostFee:I

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 362
    iget-wide v0, p0, Lcom/airbnb/android/models/_Reservation;->mId:J

    return-wide v0
.end method

.method public getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public getPayoutPriceNative()I
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mPayoutPriceNative:I

    return v0
.end method

.method public getPendingBeganAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mPendingBeganAt:Ljava/util/Date;

    return-object v0
.end method

.method public getPendingExpiresAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mPendingExpiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public getPerNightPrice()I
    .registers 2

    .prologue
    .line 340
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mPerNightPrice:I

    return v0
.end method

.method public getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method public getReservationStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

    return-object v0
.end method

.method public getReservedNightsCount()I
    .registers 2

    .prologue
    .line 208
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mReservedNightsCount:I

    return v0
.end method

.method public getSecurityDeposit()I
    .registers 2

    .prologue
    .line 318
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mSecurityDeposit:I

    return v0
.end method

.method public getStartDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public getStatusString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mStatusString:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtotalPriceNative()I
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mSubtotalPriceNative:I

    return v0
.end method

.method public getTaxAmount()I
    .registers 2

    .prologue
    .line 351
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mTaxAmount:I

    return v0
.end method

.method public getTaxDescriptions()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/TaxDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mTaxDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThreadId()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mThreadId:I

    return v0
.end method

.method public getTotalPrice()I
    .registers 2

    .prologue
    .line 252
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mTotalPrice:I

    return v0
.end method

.method public getTripInvoice()Lcom/airbnb/android/models/TripInvoice;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/32 v7, -0x80000000

    .line 409
    sget-object v6, Lcom/airbnb/android/models/TaxDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mTaxDescriptions:Ljava/util/ArrayList;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 411
    .local v0, "date0":J
    cmp-long v6, v0, v7

    if-eqz v6, :cond_1a

    .line 412
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mPendingExpiresAt:Ljava/util/Date;

    .line 414
    :cond_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 415
    .local v2, "date1":J
    cmp-long v6, v2, v7

    if-eqz v6, :cond_29

    .line 416
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mPendingBeganAt:Ljava/util/Date;

    .line 418
    :cond_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 419
    .local v4, "date2":J
    cmp-long v6, v4, v7

    if-eqz v6, :cond_38

    .line 420
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mStartDate:Ljava/util/Date;

    .line 422
    :cond_38
    const-class v6, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/Listing;

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mListing:Lcom/airbnb/android/models/Listing;

    .line 423
    const-class v6, Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/Reservation;

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 424
    const-class v6, Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/ReservationStatus;

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mConfirmationCode:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mStatusString:Ljava/lang/String;

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mCouponCode:Ljava/lang/String;

    .line 428
    const-class v6, Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/TripInvoice;

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    .line 429
    const-class v6, Lcom/airbnb/android/models/User;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/User;

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mHost:Lcom/airbnb/android/models/User;

    .line 430
    const-class v6, Lcom/airbnb/android/models/User;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/User;

    iput-object v6, p0, Lcom/airbnb/android/models/_Reservation;->mGuest:Lcom/airbnb/android/models/User;

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mBasePrice:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mReservedNightsCount:I

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mGuestCount:I

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mCouponSavings:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mCouponPriceNative:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mTotalPrice:I

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mSubtotalPriceNative:I

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mPayoutPriceNative:I

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mExtrasPrice:I

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mHostFee:I

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mGuestFee:I

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mSecurityDeposit:I

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mThreadId:I

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mPerNightPrice:I

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Lcom/airbnb/android/models/_Reservation;->mTaxAmount:I

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/airbnb/android/models/_Reservation;->mId:J

    .line 447
    return-void
.end method

.method public setBasePrice(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "base_price_native"
    .end annotation

    .prologue
    .line 203
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mBasePrice:I

    .line 204
    return-void
.end method

.method public setConfirmationCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "confirmation_code"
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lcom/airbnb/android/models/_Reservation;->mConfirmationCode:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setCouponCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "coupon_code"
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lcom/airbnb/android/models/_Reservation;->mCouponCode:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setCouponPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "coupon_price_native"
    .end annotation

    .prologue
    .line 247
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mCouponPriceNative:I

    .line 248
    return-void
.end method

.method public setCouponSavings(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "coupon_savings"
    .end annotation

    .prologue
    .line 236
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mCouponSavings:I

    .line 237
    return-void
.end method

.method public setExtrasPrice(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "extras_price_native"
    .end annotation

    .prologue
    .line 291
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mExtrasPrice:I

    .line 292
    return-void
.end method

.method public setGuestCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "number_of_guests"
    .end annotation

    .prologue
    .line 225
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mGuestCount:I

    .line 226
    return-void
.end method

.method public setGuestFee(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "guest_fee_native"
    .end annotation

    .prologue
    .line 313
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mGuestFee:I

    .line 314
    return-void
.end method

.method public setHostFee(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "host_fee_native"
    .end annotation

    .prologue
    .line 302
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mHostFee:I

    .line 303
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 368
    iput-wide p1, p0, Lcom/airbnb/android/models/_Reservation;->mId:J

    .line 369
    return-void
.end method

.method public setPayoutPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "payout_price_native"
    .end annotation

    .prologue
    .line 280
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mPayoutPriceNative:I

    .line 281
    return-void
.end method

.method public setPendingBeganAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pending_began_at"
    .end annotation

    .prologue
    .line 112
    iput-object p1, p0, Lcom/airbnb/android/models/_Reservation;->mPendingBeganAt:Ljava/util/Date;

    .line 113
    return-void
.end method

.method public setPendingExpiresAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "pending_expires_at"
    .end annotation

    .prologue
    .line 101
    iput-object p1, p0, Lcom/airbnb/android/models/_Reservation;->mPendingExpiresAt:Ljava/util/Date;

    .line 102
    return-void
.end method

.method public setPerNightPrice(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "per_night_price_native"
    .end annotation

    .prologue
    .line 346
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mPerNightPrice:I

    .line 347
    return-void
.end method

.method public setReservation(Lcom/airbnb/android/models/Reservation;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/Reservation;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/airbnb/android/models/_Reservation;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 134
    return-void
.end method

.method public setReservedNightsCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "nights"
    .end annotation

    .prologue
    .line 214
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mReservedNightsCount:I

    .line 215
    return-void
.end method

.method public setSecurityDeposit(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "security_price_native"
    .end annotation

    .prologue
    .line 324
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mSecurityDeposit:I

    .line 325
    return-void
.end method

.method public setStatusString(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status_string"
    .end annotation

    .prologue
    .line 160
    iput-object p1, p0, Lcom/airbnb/android/models/_Reservation;->mStatusString:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setSubtotalPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "subtotal_native"
    .end annotation

    .prologue
    .line 269
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mSubtotalPriceNative:I

    .line 270
    return-void
.end method

.method public setTaxAmount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tax_amount_native"
    .end annotation

    .prologue
    .line 357
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mTaxAmount:I

    .line 358
    return-void
.end method

.method public setTaxDescriptions(Ljava/util/ArrayList;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "tax_descriptions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/TaxDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/TaxDescription;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_Reservation;->mTaxDescriptions:Ljava/util/ArrayList;

    .line 91
    return-void
.end method

.method public setThreadId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thread_id"
    .end annotation

    .prologue
    .line 335
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mThreadId:I

    .line 336
    return-void
.end method

.method public setTotalPrice(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "total_price_native"
    .end annotation

    .prologue
    .line 258
    iput p1, p0, Lcom/airbnb/android/models/_Reservation;->mTotalPrice:I

    .line 259
    return-void
.end method

.method public setTripInvoice(Lcom/airbnb/android/models/TripInvoice;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/TripInvoice;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "trip_invoice"
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/airbnb/android/models/_Reservation;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    .line 183
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 377
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mTaxDescriptions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 378
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mPendingExpiresAt:Ljava/util/Date;

    if-nez v0, :cond_9e

    move-wide v0, v2

    :goto_e
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 379
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mPendingBeganAt:Ljava/util/Date;

    if-nez v0, :cond_a6

    move-wide v0, v2

    :goto_16
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 380
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mStartDate:Ljava/util/Date;

    if-nez v0, :cond_ae

    :goto_1d
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 381
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 382
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 383
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 384
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mConfirmationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mStatusString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mCouponCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mTripInvoice:Lcom/airbnb/android/models/TripInvoice;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 388
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mHost:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 389
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mGuest:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 390
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mBasePrice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mReservedNightsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mGuestCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mCouponSavings:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mCouponPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mTotalPrice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mSubtotalPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mPayoutPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mExtrasPrice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mHostFee:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mGuestFee:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 401
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mSecurityDeposit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mThreadId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mPerNightPrice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Lcom/airbnb/android/models/_Reservation;->mTaxAmount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget-wide v0, p0, Lcom/airbnb/android/models/_Reservation;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 406
    return-void

    .line 378
    :cond_9e
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mPendingExpiresAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto/16 :goto_e

    .line 379
    :cond_a6
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mPendingBeganAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto/16 :goto_16

    .line 380
    :cond_ae
    iget-object v0, p0, Lcom/airbnb/android/models/_Reservation;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto/16 :goto_1d
.end method
