.class public Lcom/airbnb/android/models/User;
.super Lcom/airbnb/android/models/_User;
.source "User.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private favoriteListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mInPhotoExperiment:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    new-instance v0, Lcom/airbnb/android/models/User$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/User$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/_User;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    if-ne p0, p1, :cond_5

    .line 174
    :cond_4
    :goto_4
    return v1

    .line 164
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 165
    goto :goto_4

    .line 167
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 168
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 170
    check-cast v0, Lcom/airbnb/android/models/User;

    .line 171
    .local v0, "other":Lcom/airbnb/android/models/User;
    iget-wide v3, p0, Lcom/airbnb/android/models/User;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/User;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 172
    goto :goto_4
.end method

.method public bridge synthetic getAbout()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getAbout()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAcceptanceRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getAcceptanceRate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAge()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getAge()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBirthdate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getBirthdate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavoriteListings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/airbnb/android/models/User;->favoriteListings:Ljava/util/List;

    if-nez v0, :cond_b

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/User;->favoriteListings:Ljava/util/List;

    .line 90
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/models/User;->favoriteListings:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGender()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getGender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroups()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getGroups()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLanguages()Ljava/util/List;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getLanguages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getListingsCount()I
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getListingsCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/airbnb/android/models/User;->mFirstName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/airbnb/android/models/User;->mLastName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 110
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/models/User;->mLastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v1, p0, Lcom/airbnb/android/models/User;->mLastName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    .line 113
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    :cond_28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoneNumbers()Ljava/util/List;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureUrlForThumbnail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/models/User;->mPictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getPictureUrlLarge()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getPictureUrlLarge()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRecentRecommendation()Lcom/airbnb/android/models/Recommendation;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getRecentRecommendation()Lcom/airbnb/android/models/Recommendation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRecentReview()Lcom/airbnb/android/models/Review;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getRecentReview()Lcom/airbnb/android/models/Review;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRecommendationCount()I
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getRecommendationCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getResponseRate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getResponseRate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResponseTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getResponseTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRevieweeCount()I
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getRevieweeCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSchool()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getSchool()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimezone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getTimezone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTotalListingsCount()I
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getTotalListingsCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVerificationLabels()Ljava/util/List;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getVerificationLabels()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVerifications()Ljava/util/List;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getVerifications()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWork()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->getWork()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasEmailAddress()Z
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/airbnb/android/models/User;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic hasPayoutInfo()Z
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->hasPayoutInfo()Z

    move-result v0

    return v0
.end method

.method public hasPhoneNumber()Z
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/airbnb/android/models/User;->mPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasProfilePic()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->hasProfilePic()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 67
    :cond_8
    :goto_8
    return v0

    .line 63
    :cond_9
    iget-object v2, p0, Lcom/airbnb/android/models/User;->mPictureUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v0, v1

    .line 64
    goto :goto_8

    .line 67
    :cond_13
    iget-object v2, p0, Lcom/airbnb/android/models/User;->mPictureUrl:Ljava/lang/String;

    const-string/jumbo v3, "defaults/user_pic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 153
    const/16 v0, 0x1f

    .line 154
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 155
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/User;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/User;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 156
    return v1
.end method

.method public isFavoriteListing(Lcom/airbnb/android/models/Listing;)Z
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/models/User;->getFavoriteListings()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHost()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/airbnb/android/models/User;->getListingsCount()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isInPhotoExperiment()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/airbnb/android/models/User;->mInPhotoExperiment:Z

    return v0
.end method

.method public bridge synthetic isVerifiedId()Z
    .registers 2

    .prologue
    .line 18
    invoke-super {p0}, Lcom/airbnb/android/models/_User;->isVerifiedId()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAbout(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setAbout(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAcceptanceRate(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setAcceptanceRate(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setAge(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setAge(Ljava/lang/String;)V

    return-void
.end method

.method public setBirthdate(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "birthdate"
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/User;->mBirthdate:Ljava/util/Date;

    .line 44
    return-void
.end method

.method public setBirthdate(Ljava/util/Date;)V
    .registers 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/airbnb/android/models/User;->mBirthdate:Ljava/util/Date;

    .line 52
    return-void
.end method

.method public setCreatedAt(Ljava/lang/Long;)V
    .registers 3
    .param p1, "time"    # Ljava/lang/Long;

    .prologue
    .line 120
    invoke-static {p1}, Lcom/airbnb/android/utils/CalendarHelper;->getCalendarFromLong(Ljava/lang/Long;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/User;->setCreatedAt(Ljava/util/Date;)V

    .line 121
    return-void
.end method

.method public bridge synthetic setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setCreatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setEmailAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setEmailAddress(Ljava/lang/String;)V

    return-void
.end method

.method public setFavoriteListings(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "favoriteListings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/User;->favoriteListings:Ljava/util/List;

    .line 84
    return-void
.end method

.method public bridge synthetic setFirstName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setFirstName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setGender(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setGender(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setGroups(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setGroups(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setHasPayoutInfo(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setHasPayoutInfo(Z)V

    return-void
.end method

.method public bridge synthetic setHasProfilePic(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setHasProfilePic(Z)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_User;->setId(J)V

    return-void
.end method

.method public setInPhotoExperiment(Z)V
    .registers 2
    .param p1, "photoExperiment"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/airbnb/android/models/User;->mInPhotoExperiment:Z

    .line 99
    return-void
.end method

.method public bridge synthetic setLanguages(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setLanguages(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setLastName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setLastName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setListingsCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setListingsCount(I)V

    return-void
.end method

.method public bridge synthetic setLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setLocation(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPhone(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setPhone(Ljava/lang/String;)V

    return-void
.end method

.method public setPhoneNumbers(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone_numbers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/Wrappers$ProfilePhoneNumberWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "wrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/requests/Wrappers$ProfilePhoneNumberWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/User;->mPhoneNumbers:Ljava/util/List;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/Wrappers$ProfilePhoneNumberWrapper;

    .line 34
    .local v1, "number":Lcom/airbnb/android/requests/Wrappers$ProfilePhoneNumberWrapper;
    iget-object v2, p0, Lcom/airbnb/android/models/User;->mPhoneNumbers:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/requests/Wrappers$ProfilePhoneNumberWrapper;->phoneNumber:Lcom/airbnb/android/models/ProfilePhoneNumber;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 36
    .end local v1    # "number":Lcom/airbnb/android/requests/Wrappers$ProfilePhoneNumberWrapper;
    :cond_1f
    return-void
.end method

.method public bridge synthetic setPictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setPictureUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPictureUrlLarge(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setPictureUrlLarge(Ljava/lang/String;)V

    return-void
.end method

.method public setRecommendation(Lcom/airbnb/android/requests/Wrappers$RecommendationWrapper;)V
    .registers 3
    .param p1, "recommendationWrapper"    # Lcom/airbnb/android/requests/Wrappers$RecommendationWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "recent_recommendation"
    .end annotation

    .prologue
    .line 27
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$RecommendationWrapper;->recommendation:Lcom/airbnb/android/models/Recommendation;

    iput-object v0, p0, Lcom/airbnb/android/models/User;->mRecentRecommendation:Lcom/airbnb/android/models/Recommendation;

    .line 28
    return-void
.end method

.method public bridge synthetic setRecommendationCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setRecommendationCount(I)V

    return-void
.end method

.method public bridge synthetic setResponseRate(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setResponseRate(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setResponseTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setResponseTime(Ljava/lang/String;)V

    return-void
.end method

.method public setReview(Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;)V
    .registers 3
    .param p1, "reviewWrapper"    # Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "recent_review"
    .end annotation

    .prologue
    .line 22
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;->review:Lcom/airbnb/android/models/Review;

    iput-object v0, p0, Lcom/airbnb/android/models/User;->mRecentReview:Lcom/airbnb/android/models/Review;

    .line 23
    return-void
.end method

.method public bridge synthetic setRevieweeCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setRevieweeCount(I)V

    return-void
.end method

.method public bridge synthetic setSchool(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setSchool(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setThumbnailUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setThumbnailUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setTimezone(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setTimezone(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setTotalListingsCount(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setTotalListingsCount(I)V

    return-void
.end method

.method public bridge synthetic setVerificationLabels(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setVerificationLabels(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setVerifications(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setVerifications(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setVerifiedId(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setVerifiedId(Z)V

    return-void
.end method

.method public bridge synthetic setWork(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_User;->setWork(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_User;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
