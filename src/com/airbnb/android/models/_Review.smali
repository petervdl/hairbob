.class abstract Lcom/airbnb/android/models/_Review;
.super Ljava/lang/Object;
.source "_Review.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAccuracyRating:Ljava/lang/Integer;

.field protected mAverageRating:Ljava/lang/Integer;

.field protected mCheckinRating:Ljava/lang/Integer;

.field protected mCleanlinessRating:Ljava/lang/Integer;

.field protected mCommunicationRating:Ljava/lang/Integer;

.field protected mCreatedAt:Ljava/util/Date;

.field protected mHasReviewerSubmittedAPreviousReview:Z

.field protected mId:J

.field protected mIsDoubleBlind:Ljava/lang/Boolean;

.field protected mLocationRating:Ljava/lang/Integer;

.field protected mPartialListing:Lcom/airbnb/android/models/PartialListing;

.field protected mPrivateFeedback:Ljava/lang/String;

.field protected mPublicFeedback:Ljava/lang/String;

.field protected mRecommended:Ljava/lang/Boolean;

.field protected mReservation:Lcom/airbnb/android/models/Reservation;

.field protected mRespectHouseRulesRating:Ljava/lang/Integer;

.field protected mReviewRole:Lcom/airbnb/android/models/ReviewRole;

.field protected mReviewee:Lcom/airbnb/android/models/User;

.field protected mRevieweeId:J

.field protected mReviewer:Lcom/airbnb/android/models/User;

.field protected mReviewerId:J

.field protected mSubmitted:Z

.field protected mTwinCompleted:Z

.field protected mValueRating:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/airbnb/android/models/PartialListing;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/ReviewRole;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/User;Lcom/airbnb/android/models/User;ZZZJJJ)V
    .registers 30
    .param p1, "recommended"    # Ljava/lang/Boolean;
    .param p2, "isDoubleBlind"    # Ljava/lang/Boolean;
    .param p3, "createdAt"    # Ljava/util/Date;
    .param p4, "averageRating"    # Ljava/lang/Integer;
    .param p5, "accuracyRating"    # Ljava/lang/Integer;
    .param p6, "checkinRating"    # Ljava/lang/Integer;
    .param p7, "locationRating"    # Ljava/lang/Integer;
    .param p8, "communicationRating"    # Ljava/lang/Integer;
    .param p9, "cleanlinessRating"    # Ljava/lang/Integer;
    .param p10, "respectHouseRulesRating"    # Ljava/lang/Integer;
    .param p11, "valueRating"    # Ljava/lang/Integer;
    .param p12, "partialListing"    # Lcom/airbnb/android/models/PartialListing;
    .param p13, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p14, "reviewRole"    # Lcom/airbnb/android/models/ReviewRole;
    .param p15, "publicFeedback"    # Ljava/lang/String;
    .param p16, "privateFeedback"    # Ljava/lang/String;
    .param p17, "reviewer"    # Lcom/airbnb/android/models/User;
    .param p18, "reviewee"    # Lcom/airbnb/android/models/User;
    .param p19, "submitted"    # Z
    .param p20, "twinCompleted"    # Z
    .param p21, "hasReviewerSubmittedAPreviousReview"    # Z
    .param p22, "id"    # J
    .param p24, "revieweeId"    # J
    .param p26, "reviewerId"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/models/_Review;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mRecommended:Ljava/lang/Boolean;

    .line 42
    iput-object p2, p0, Lcom/airbnb/android/models/_Review;->mIsDoubleBlind:Ljava/lang/Boolean;

    .line 43
    iput-object p3, p0, Lcom/airbnb/android/models/_Review;->mCreatedAt:Ljava/util/Date;

    .line 44
    iput-object p4, p0, Lcom/airbnb/android/models/_Review;->mAverageRating:Ljava/lang/Integer;

    .line 45
    iput-object p5, p0, Lcom/airbnb/android/models/_Review;->mAccuracyRating:Ljava/lang/Integer;

    .line 46
    iput-object p6, p0, Lcom/airbnb/android/models/_Review;->mCheckinRating:Ljava/lang/Integer;

    .line 47
    iput-object p7, p0, Lcom/airbnb/android/models/_Review;->mLocationRating:Ljava/lang/Integer;

    .line 48
    iput-object p8, p0, Lcom/airbnb/android/models/_Review;->mCommunicationRating:Ljava/lang/Integer;

    .line 49
    iput-object p9, p0, Lcom/airbnb/android/models/_Review;->mCleanlinessRating:Ljava/lang/Integer;

    .line 50
    iput-object p10, p0, Lcom/airbnb/android/models/_Review;->mRespectHouseRulesRating:Ljava/lang/Integer;

    .line 51
    iput-object p11, p0, Lcom/airbnb/android/models/_Review;->mValueRating:Ljava/lang/Integer;

    .line 52
    iput-object p12, p0, Lcom/airbnb/android/models/_Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    .line 53
    iput-object p13, p0, Lcom/airbnb/android/models/_Review;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 54
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/airbnb/android/models/_Review;->mReviewRole:Lcom/airbnb/android/models/ReviewRole;

    .line 55
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/airbnb/android/models/_Review;->mPublicFeedback:Ljava/lang/String;

    .line 56
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/airbnb/android/models/_Review;->mPrivateFeedback:Ljava/lang/String;

    .line 57
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/airbnb/android/models/_Review;->mReviewer:Lcom/airbnb/android/models/User;

    .line 58
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/airbnb/android/models/_Review;->mReviewee:Lcom/airbnb/android/models/User;

    .line 59
    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Review;->mSubmitted:Z

    .line 60
    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Review;->mTwinCompleted:Z

    .line 61
    move/from16 v0, p21

    iput-boolean v0, p0, Lcom/airbnb/android/models/_Review;->mHasReviewerSubmittedAPreviousReview:Z

    .line 62
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/airbnb/android/models/_Review;->mId:J

    .line 63
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/airbnb/android/models/_Review;->mRevieweeId:J

    .line 64
    move-wide/from16 v0, p26

    iput-wide v0, p0, Lcom/airbnb/android/models/_Review;->mReviewerId:J

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracyRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mAccuracyRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAverageRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mAverageRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCheckinRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mCheckinRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCleanlinessRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mCleanlinessRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCommunicationRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mCommunicationRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/airbnb/android/models/_Review;->mId:J

    return-wide v0
.end method

.method public getLocationRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mLocationRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPartialListing()Lcom/airbnb/android/models/PartialListing;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    return-object v0
.end method

.method public getPrivateFeedback()Ljava/lang/String;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mPrivateFeedback:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicFeedback()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mPublicFeedback:Ljava/lang/String;

    return-object v0
.end method

.method public getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method public getRespectHouseRulesRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mRespectHouseRulesRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public getReviewRole()Lcom/airbnb/android/models/ReviewRole;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mReviewRole:Lcom/airbnb/android/models/ReviewRole;

    return-object v0
.end method

.method public getReviewee()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mReviewee:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getRevieweeId()J
    .registers 3

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/airbnb/android/models/_Review;->mRevieweeId:J

    return-wide v0
.end method

.method public getReviewer()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mReviewer:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getReviewerId()J
    .registers 3

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/airbnb/android/models/_Review;->mReviewerId:J

    return-wide v0
.end method

.method public getValueRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mValueRating:Ljava/lang/Integer;

    return-object v0
.end method

.method public hasReviewerSubmittedAPreviousReview()Z
    .registers 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Review;->mHasReviewerSubmittedAPreviousReview:Z

    return v0
.end method

.method public isIsDoubleBlind()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mIsDoubleBlind:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isRecommended()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mRecommended:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isSubmitted()Z
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Review;->mSubmitted:Z

    return v0
.end method

.method public isTwinCompleted()Z
    .registers 2

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Review;->mTwinCompleted:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 329
    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mRecommended:Ljava/lang/Boolean;

    .line 330
    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mIsDoubleBlind:Ljava/lang/Boolean;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 332
    .local v1, "date0":J
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2e

    .line 333
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mCreatedAt:Ljava/util/Date;

    .line 335
    :cond_2e
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mAverageRating:Ljava/lang/Integer;

    .line 336
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mAccuracyRating:Ljava/lang/Integer;

    .line 337
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mCheckinRating:Ljava/lang/Integer;

    .line 338
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mLocationRating:Ljava/lang/Integer;

    .line 339
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mCommunicationRating:Ljava/lang/Integer;

    .line 340
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mCleanlinessRating:Ljava/lang/Integer;

    .line 341
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mRespectHouseRulesRating:Ljava/lang/Integer;

    .line 342
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mValueRating:Ljava/lang/Integer;

    .line 343
    const-class v3, Lcom/airbnb/android/models/PartialListing;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/PartialListing;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    .line 344
    const-class v3, Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Reservation;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 345
    const-class v3, Lcom/airbnb/android/models/ReviewRole;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/ReviewRole;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mReviewRole:Lcom/airbnb/android/models/ReviewRole;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mPublicFeedback:Ljava/lang/String;

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mPrivateFeedback:Ljava/lang/String;

    .line 348
    const-class v3, Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/User;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mReviewer:Lcom/airbnb/android/models/User;

    .line 349
    const-class v3, Lcom/airbnb/android/models/User;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/User;

    iput-object v3, p0, Lcom/airbnb/android/models/_Review;->mReviewee:Lcom/airbnb/android/models/User;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 351
    .local v0, "bools":[Z
    const/4 v3, 0x0

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/_Review;->mSubmitted:Z

    .line 352
    const/4 v3, 0x1

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/_Review;->mTwinCompleted:Z

    .line 353
    const/4 v3, 0x2

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/_Review;->mHasReviewerSubmittedAPreviousReview:Z

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/airbnb/android/models/_Review;->mId:J

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/airbnb/android/models/_Review;->mRevieweeId:J

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/airbnb/android/models/_Review;->mReviewerId:J

    .line 357
    return-void
.end method

.method public setAccuracyRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "accuracy"
    .end annotation

    .prologue
    .line 116
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mAccuracyRating:Ljava/lang/Integer;

    .line 117
    return-void
.end method

.method public setAverageRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "rating"
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mAverageRating:Ljava/lang/Integer;

    .line 106
    return-void
.end method

.method public setCheckinRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "checkin"
    .end annotation

    .prologue
    .line 127
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mCheckinRating:Ljava/lang/Integer;

    .line 128
    return-void
.end method

.method public setCleanlinessRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "cleanliness"
    .end annotation

    .prologue
    .line 160
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mCleanlinessRating:Ljava/lang/Integer;

    .line 161
    return-void
.end method

.method public setCommunicationRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "communication"
    .end annotation

    .prologue
    .line 149
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mCommunicationRating:Ljava/lang/Integer;

    .line 150
    return-void
.end method

.method public setHasReviewerSubmittedAPreviousReview(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_reviewer_submitted_a_previous_review"
    .end annotation

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Review;->mHasReviewerSubmittedAPreviousReview:Z

    .line 263
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 273
    iput-wide p1, p0, Lcom/airbnb/android/models/_Review;->mId:J

    .line 274
    return-void
.end method

.method public setIsDoubleBlind(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_double_blind"
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mIsDoubleBlind:Ljava/lang/Boolean;

    .line 90
    return-void
.end method

.method public setLocationRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "location"
    .end annotation

    .prologue
    .line 138
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mLocationRating:Ljava/lang/Integer;

    .line 139
    return-void
.end method

.method public setPrivateFeedback(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "private_feedback"
    .end annotation

    .prologue
    .line 219
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mPrivateFeedback:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public setPublicFeedback(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comments"
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mPublicFeedback:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setRecommended(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "recommend"
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mRecommended:Ljava/lang/Boolean;

    .line 79
    return-void
.end method

.method public setRespectHouseRulesRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "respect_house_rules"
    .end annotation

    .prologue
    .line 171
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mRespectHouseRulesRating:Ljava/lang/Integer;

    .line 172
    return-void
.end method

.method public setRevieweeId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reviewee_id"
    .end annotation

    .prologue
    .line 284
    iput-wide p1, p0, Lcom/airbnb/android/models/_Review;->mRevieweeId:J

    .line 285
    return-void
.end method

.method public setReviewerId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reviewer_id"
    .end annotation

    .prologue
    .line 295
    iput-wide p1, p0, Lcom/airbnb/android/models/_Review;->mReviewerId:J

    .line 296
    return-void
.end method

.method public setSubmitted(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_submitted"
    .end annotation

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Review;->mSubmitted:Z

    .line 241
    return-void
.end method

.method public setTwinCompleted(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "twin_completed"
    .end annotation

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Review;->mTwinCompleted:Z

    .line 252
    return-void
.end method

.method public setValueRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "value"
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/airbnb/android/models/_Review;->mValueRating:Ljava/lang/Integer;

    .line 183
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 304
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mRecommended:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 305
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mIsDoubleBlind:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_84

    const-wide/32 v0, -0x80000000

    :goto_12
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 307
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mAverageRating:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mAccuracyRating:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mCheckinRating:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mLocationRating:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mCommunicationRating:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mCleanlinessRating:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mRespectHouseRulesRating:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mValueRating:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 316
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 317
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mReviewRole:Lcom/airbnb/android/models/ReviewRole;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 318
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mPublicFeedback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mPrivateFeedback:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mReviewer:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 321
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mReviewee:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 322
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_Review;->mSubmitted:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Review;->mTwinCompleted:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Review;->mHasReviewerSubmittedAPreviousReview:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 323
    iget-wide v0, p0, Lcom/airbnb/android/models/_Review;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 324
    iget-wide v0, p0, Lcom/airbnb/android/models/_Review;->mRevieweeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 325
    iget-wide v0, p0, Lcom/airbnb/android/models/_Review;->mReviewerId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 326
    return-void

    .line 306
    :cond_84
    iget-object v0, p0, Lcom/airbnb/android/models/_Review;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_12
.end method
