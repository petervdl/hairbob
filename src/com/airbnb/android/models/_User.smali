.class abstract Lcom/airbnb/android/models/_User;
.super Ljava/lang/Object;
.source "_User.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAbout:Ljava/lang/String;

.field protected mAcceptanceRate:Ljava/lang/String;

.field protected mAge:Ljava/lang/String;

.field protected mBirthdate:Ljava/util/Date;

.field protected mCreatedAt:Ljava/util/Date;

.field protected mEmailAddress:Ljava/lang/String;

.field protected mFirstName:Ljava/lang/String;

.field protected mGender:Ljava/lang/String;

.field protected mGroups:Ljava/lang/String;

.field protected mHasPayoutInfo:Z

.field protected mHasProfilePic:Z

.field protected mId:J

.field protected mLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastName:Ljava/lang/String;

.field protected mListingsCount:I

.field protected mLocation:Ljava/lang/String;

.field protected mPhone:Ljava/lang/String;

.field protected mPhoneNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/ProfilePhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field protected mPictureUrl:Ljava/lang/String;

.field protected mPictureUrlLarge:Ljava/lang/String;

.field protected mRecentRecommendation:Lcom/airbnb/android/models/Recommendation;

.field protected mRecentReview:Lcom/airbnb/android/models/Review;

.field protected mRecommendationCount:I

.field protected mResponseRate:Ljava/lang/String;

.field protected mResponseTime:Ljava/lang/String;

.field protected mRevieweeCount:I

.field protected mSchool:Ljava/lang/String;

.field protected mThumbnailUrl:Ljava/lang/String;

.field protected mTimezone:Ljava/lang/String;

.field protected mTotalListingsCount:I

.field protected mVerificationLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mVerifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mVerifiedId:Z

.field protected mWork:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/airbnb/android/models/Recommendation;Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIIIIJ)V
    .registers 38
    .param p1, "createdAt"    # Ljava/util/Date;
    .param p2, "birthdate"    # Ljava/util/Date;
    .param p7, "recentRecommendation"    # Lcom/airbnb/android/models/Recommendation;
    .param p8, "recentReview"    # Lcom/airbnb/android/models/Review;
    .param p9, "age"    # Ljava/lang/String;
    .param p10, "emailAddress"    # Ljava/lang/String;
    .param p11, "firstName"    # Ljava/lang/String;
    .param p12, "lastName"    # Ljava/lang/String;
    .param p13, "phone"    # Ljava/lang/String;
    .param p14, "pictureUrl"    # Ljava/lang/String;
    .param p15, "pictureUrlLarge"    # Ljava/lang/String;
    .param p16, "thumbnailUrl"    # Ljava/lang/String;
    .param p17, "responseRate"    # Ljava/lang/String;
    .param p18, "responseTime"    # Ljava/lang/String;
    .param p19, "acceptanceRate"    # Ljava/lang/String;
    .param p20, "school"    # Ljava/lang/String;
    .param p21, "groups"    # Ljava/lang/String;
    .param p22, "work"    # Ljava/lang/String;
    .param p23, "about"    # Ljava/lang/String;
    .param p24, "location"    # Ljava/lang/String;
    .param p25, "gender"    # Ljava/lang/String;
    .param p26, "timezone"    # Ljava/lang/String;
    .param p27, "verifiedId"    # Z
    .param p28, "hasPayoutInfo"    # Z
    .param p29, "hasProfilePic"    # Z
    .param p30, "recommendationCount"    # I
    .param p31, "listingsCount"    # I
    .param p32, "totalListingsCount"    # I
    .param p33, "revieweeCount"    # I
    .param p34, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/ProfilePhoneNumber;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/airbnb/android/models/Recommendation;",
            "Lcom/airbnb/android/models/Review;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZIIIIJ)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p3, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/ProfilePhoneNumber;>;"
    .local p4, "verificationLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "verifications":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "languages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_User;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mCreatedAt:Ljava/util/Date;

    .line 53
    iput-object p2, p0, Lcom/airbnb/android/models/_User;->mBirthdate:Ljava/util/Date;

    .line 54
    iput-object p3, p0, Lcom/airbnb/android/models/_User;->mPhoneNumbers:Ljava/util/List;

    .line 55
    iput-object p4, p0, Lcom/airbnb/android/models/_User;->mVerificationLabels:Ljava/util/List;

    .line 56
    iput-object p5, p0, Lcom/airbnb/android/models/_User;->mVerifications:Ljava/util/List;

    .line 57
    iput-object p6, p0, Lcom/airbnb/android/models/_User;->mLanguages:Ljava/util/List;

    .line 58
    iput-object p7, p0, Lcom/airbnb/android/models/_User;->mRecentRecommendation:Lcom/airbnb/android/models/Recommendation;

    .line 59
    iput-object p8, p0, Lcom/airbnb/android/models/_User;->mRecentReview:Lcom/airbnb/android/models/Review;

    .line 60
    iput-object p9, p0, Lcom/airbnb/android/models/_User;->mAge:Ljava/lang/String;

    .line 61
    iput-object p10, p0, Lcom/airbnb/android/models/_User;->mEmailAddress:Ljava/lang/String;

    .line 62
    iput-object p11, p0, Lcom/airbnb/android/models/_User;->mFirstName:Ljava/lang/String;

    .line 63
    iput-object p12, p0, Lcom/airbnb/android/models/_User;->mLastName:Ljava/lang/String;

    .line 64
    iput-object p13, p0, Lcom/airbnb/android/models/_User;->mPhone:Ljava/lang/String;

    .line 65
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mPictureUrl:Ljava/lang/String;

    .line 66
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mPictureUrlLarge:Ljava/lang/String;

    .line 67
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mThumbnailUrl:Ljava/lang/String;

    .line 68
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mResponseRate:Ljava/lang/String;

    .line 69
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mResponseTime:Ljava/lang/String;

    .line 70
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mAcceptanceRate:Ljava/lang/String;

    .line 71
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mSchool:Ljava/lang/String;

    .line 72
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mGroups:Ljava/lang/String;

    .line 73
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mWork:Ljava/lang/String;

    .line 74
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mAbout:Ljava/lang/String;

    .line 75
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mLocation:Ljava/lang/String;

    .line 76
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mGender:Ljava/lang/String;

    .line 77
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/airbnb/android/models/_User;->mTimezone:Ljava/lang/String;

    .line 78
    move/from16 v0, p27

    iput-boolean v0, p0, Lcom/airbnb/android/models/_User;->mVerifiedId:Z

    .line 79
    move/from16 v0, p28

    iput-boolean v0, p0, Lcom/airbnb/android/models/_User;->mHasPayoutInfo:Z

    .line 80
    move/from16 v0, p29

    iput-boolean v0, p0, Lcom/airbnb/android/models/_User;->mHasProfilePic:Z

    .line 81
    move/from16 v0, p30

    iput v0, p0, Lcom/airbnb/android/models/_User;->mRecommendationCount:I

    .line 82
    move/from16 v0, p31

    iput v0, p0, Lcom/airbnb/android/models/_User;->mListingsCount:I

    .line 83
    move/from16 v0, p32

    iput v0, p0, Lcom/airbnb/android/models/_User;->mTotalListingsCount:I

    .line 84
    move/from16 v0, p33

    iput v0, p0, Lcom/airbnb/android/models/_User;->mRevieweeCount:I

    .line 85
    move-wide/from16 v0, p34

    iput-wide v0, p0, Lcom/airbnb/android/models/_User;->mId:J

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method

.method public getAbout()Ljava/lang/String;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mAbout:Ljava/lang/String;

    return-object v0
.end method

.method public getAcceptanceRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mAcceptanceRate:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mAge:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mBirthdate:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/lang/String;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mGroups:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 432
    iget-wide v0, p0, Lcom/airbnb/android/models/_User;->mId:J

    return-wide v0
.end method

.method public getLanguages()Ljava/util/List;
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
    .line 136
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mLanguages:Ljava/util/List;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getListingsCount()I
    .registers 2

    .prologue
    .line 399
    iget v0, p0, Lcom/airbnb/android/models/_User;->mListingsCount:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/ProfilePhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mPhoneNumbers:Ljava/util/List;

    return-object v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mPictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrlLarge()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mPictureUrlLarge:Ljava/lang/String;

    return-object v0
.end method

.method public getRecentRecommendation()Lcom/airbnb/android/models/Recommendation;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mRecentRecommendation:Lcom/airbnb/android/models/Recommendation;

    return-object v0
.end method

.method public getRecentReview()Lcom/airbnb/android/models/Review;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mRecentReview:Lcom/airbnb/android/models/Review;

    return-object v0
.end method

.method public getRecommendationCount()I
    .registers 2

    .prologue
    .line 388
    iget v0, p0, Lcom/airbnb/android/models/_User;->mRecommendationCount:I

    return v0
.end method

.method public getResponseRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mResponseRate:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mResponseTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRevieweeCount()I
    .registers 2

    .prologue
    .line 421
    iget v0, p0, Lcom/airbnb/android/models/_User;->mRevieweeCount:I

    return v0
.end method

.method public getSchool()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mSchool:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalListingsCount()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/airbnb/android/models/_User;->mTotalListingsCount:I

    return v0
.end method

.method public getVerificationLabels()Ljava/util/List;
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
    .line 114
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mVerificationLabels:Ljava/util/List;

    return-object v0
.end method

.method public getVerifications()Ljava/util/List;
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
    .line 125
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mVerifications:Ljava/util/List;

    return-object v0
.end method

.method public getWork()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mWork:Ljava/lang/String;

    return-object v0
.end method

.method public hasPayoutInfo()Z
    .registers 2

    .prologue
    .line 366
    iget-boolean v0, p0, Lcom/airbnb/android/models/_User;->mHasPayoutInfo:Z

    return v0
.end method

.method public hasProfilePic()Z
    .registers 2

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/airbnb/android/models/_User;->mHasProfilePic:Z

    return v0
.end method

.method public isVerifiedId()Z
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/airbnb/android/models/_User;->mVerifiedId:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/32 v6, -0x80000000

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 483
    .local v1, "date0":J
    cmp-long v5, v1, v6

    if-eqz v5, :cond_12

    .line 484
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mCreatedAt:Ljava/util/Date;

    .line 486
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 487
    .local v3, "date1":J
    cmp-long v5, v3, v6

    if-eqz v5, :cond_21

    .line 488
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mBirthdate:Ljava/util/Date;

    .line 490
    :cond_21
    sget-object v5, Lcom/airbnb/android/models/ProfilePhoneNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mPhoneNumbers:Ljava/util/List;

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mVerificationLabels:Ljava/util/List;

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mVerifications:Ljava/util/List;

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mLanguages:Ljava/util/List;

    .line 494
    const-class v5, Lcom/airbnb/android/models/Recommendation;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Recommendation;

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mRecentRecommendation:Lcom/airbnb/android/models/Recommendation;

    .line 495
    const-class v5, Lcom/airbnb/android/models/Review;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Review;

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mRecentReview:Lcom/airbnb/android/models/Review;

    .line 496
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mAge:Ljava/lang/String;

    .line 497
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mEmailAddress:Ljava/lang/String;

    .line 498
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mFirstName:Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mLastName:Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mPhone:Ljava/lang/String;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mPictureUrl:Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mPictureUrlLarge:Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mThumbnailUrl:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mResponseRate:Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mResponseTime:Ljava/lang/String;

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mAcceptanceRate:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mSchool:Ljava/lang/String;

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mGroups:Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mWork:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mAbout:Ljava/lang/String;

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mLocation:Ljava/lang/String;

    .line 512
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mGender:Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_User;->mTimezone:Ljava/lang/String;

    .line 514
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 515
    .local v0, "bools":[Z
    const/4 v5, 0x0

    aget-boolean v5, v0, v5

    iput-boolean v5, p0, Lcom/airbnb/android/models/_User;->mVerifiedId:Z

    .line 516
    const/4 v5, 0x1

    aget-boolean v5, v0, v5

    iput-boolean v5, p0, Lcom/airbnb/android/models/_User;->mHasPayoutInfo:Z

    .line 517
    const/4 v5, 0x2

    aget-boolean v5, v0, v5

    iput-boolean v5, p0, Lcom/airbnb/android/models/_User;->mHasProfilePic:Z

    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_User;->mRecommendationCount:I

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_User;->mListingsCount:I

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_User;->mTotalListingsCount:I

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_User;->mRevieweeCount:I

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/airbnb/android/models/_User;->mId:J

    .line 523
    return-void
.end method

.method public setAbout(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "about"
    .end annotation

    .prologue
    .line 317
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mAbout:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setAcceptanceRate(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "acceptance_rate"
    .end annotation

    .prologue
    .line 273
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mAcceptanceRate:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setAge(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "age"
    .end annotation

    .prologue
    .line 163
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mAge:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mCreatedAt:Ljava/util/Date;

    .line 100
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "email"
    .end annotation

    .prologue
    .line 174
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mEmailAddress:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "first_name"
    .end annotation

    .prologue
    .line 185
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mFirstName:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "gender"
    .end annotation

    .prologue
    .line 339
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mGender:Ljava/lang/String;

    .line 340
    return-void
.end method

.method public setGroups(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "groups"
    .end annotation

    .prologue
    .line 295
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mGroups:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setHasPayoutInfo(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_available_payout_info"
    .end annotation

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/airbnb/android/models/_User;->mHasPayoutInfo:Z

    .line 373
    return-void
.end method

.method public setHasProfilePic(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_profile_pic"
    .end annotation

    .prologue
    .line 383
    iput-boolean p1, p0, Lcom/airbnb/android/models/_User;->mHasProfilePic:Z

    .line 384
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 438
    iput-wide p1, p0, Lcom/airbnb/android/models/_User;->mId:J

    .line 439
    return-void
.end method

.method public setLanguages(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "languages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mLanguages:Ljava/util/List;

    .line 143
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "last_name"
    .end annotation

    .prologue
    .line 196
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mLastName:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setListingsCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listings_count"
    .end annotation

    .prologue
    .line 405
    iput p1, p0, Lcom/airbnb/android/models/_User;->mListingsCount:I

    .line 406
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "location"
    .end annotation

    .prologue
    .line 328
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mLocation:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone"
    .end annotation

    .prologue
    .line 207
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mPhone:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setPictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "picture_url"
    .end annotation

    .prologue
    .line 218
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mPictureUrl:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setPictureUrlLarge(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "picture_large_url"
    .end annotation

    .prologue
    .line 229
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mPictureUrlLarge:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setRecommendationCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "recommendation_count"
    .end annotation

    .prologue
    .line 394
    iput p1, p0, Lcom/airbnb/android/models/_User;->mRecommendationCount:I

    .line 395
    return-void
.end method

.method public setResponseRate(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "response_rate"
    .end annotation

    .prologue
    .line 251
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mResponseRate:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setResponseTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "response_time"
    .end annotation

    .prologue
    .line 262
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mResponseTime:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setRevieweeCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reviewee_count"
    .end annotation

    .prologue
    .line 427
    iput p1, p0, Lcom/airbnb/android/models/_User;->mRevieweeCount:I

    .line 428
    return-void
.end method

.method public setSchool(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "school"
    .end annotation

    .prologue
    .line 284
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mSchool:Ljava/lang/String;

    .line 285
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thumbnail_url"
    .end annotation

    .prologue
    .line 240
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mThumbnailUrl:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "timezone"
    .end annotation

    .prologue
    .line 350
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mTimezone:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setTotalListingsCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "total_listings_count"
    .end annotation

    .prologue
    .line 416
    iput p1, p0, Lcom/airbnb/android/models/_User;->mTotalListingsCount:I

    .line 417
    return-void
.end method

.method public setVerificationLabels(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "verification_labels"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mVerificationLabels:Ljava/util/List;

    .line 121
    return-void
.end method

.method public setVerifications(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "verifications"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mVerifications:Ljava/util/List;

    .line 132
    return-void
.end method

.method public setVerifiedId(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "identity_verified"
    .end annotation

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/airbnb/android/models/_User;->mVerifiedId:Z

    .line 362
    return-void
.end method

.method public setWork(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "work"
    .end annotation

    .prologue
    .line 306
    iput-object p1, p0, Lcom/airbnb/android/models/_User;->mWork:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 447
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_b9

    move-wide v0, v2

    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 448
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mBirthdate:Ljava/util/Date;

    if-nez v0, :cond_c1

    :goto_10
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 449
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mPhoneNumbers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 450
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mVerificationLabels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 451
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mVerifications:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 452
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mLanguages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 453
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mRecentRecommendation:Lcom/airbnb/android/models/Recommendation;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 454
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mRecentReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 455
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mAge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mPictureUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mPictureUrlLarge:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mResponseRate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mResponseTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mAcceptanceRate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mSchool:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mGroups:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mWork:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mAbout:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mGender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 473
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_User;->mVerifiedId:Z

    aput-boolean v1, v0, v4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/_User;->mHasPayoutInfo:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/airbnb/android/models/_User;->mHasProfilePic:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 474
    iget v0, p0, Lcom/airbnb/android/models/_User;->mRecommendationCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget v0, p0, Lcom/airbnb/android/models/_User;->mListingsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget v0, p0, Lcom/airbnb/android/models/_User;->mTotalListingsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget v0, p0, Lcom/airbnb/android/models/_User;->mRevieweeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    iget-wide v0, p0, Lcom/airbnb/android/models/_User;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 479
    return-void

    .line 447
    :cond_b9
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto/16 :goto_9

    .line 448
    :cond_c1
    iget-object v0, p0, Lcom/airbnb/android/models/_User;->mBirthdate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto/16 :goto_10
.end method
