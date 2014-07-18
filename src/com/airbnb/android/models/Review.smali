.class public Lcom/airbnb/android/models/Review;
.super Lcom/airbnb/android/models/_Review;
.source "Review.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/Review$4;,
        Lcom/airbnb/android/models/Review$PartialListingWrapper;,
        Lcom/airbnb/android/models/Review$RatingType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Review;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 259
    new-instance v0, Lcom/airbnb/android/models/Review$3;

    invoke-direct {v0}, Lcom/airbnb/android/models/Review$3;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Review;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/_Review;-><init>()V

    .line 225
    return-void
.end method

.method private updateAverageRating()V
    .registers 8

    .prologue
    .line 95
    const/4 v5, 0x0

    .line 96
    .local v5, "sum":F
    const/4 v4, 0x0

    .line 98
    .local v4, "ratingsUsed":I
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getRatingTypes()Ljava/util/ArrayList;

    move-result-object v3

    .line 99
    .local v3, "ratingTypes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Review$RatingType;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Review$RatingType;

    .line 100
    .local v2, "ratingType":Lcom/airbnb/android/models/Review$RatingType;
    invoke-virtual {p0, v2}, Lcom/airbnb/android/models/Review;->getRatingValue(Lcom/airbnb/android/models/Review$RatingType;)Ljava/lang/Integer;

    move-result-object v1

    .line 101
    .local v1, "rating":Ljava/lang/Integer;
    if-eqz v1, :cond_a

    .line 102
    invoke-virtual {p0, v2}, Lcom/airbnb/android/models/Review;->getRatingValue(Lcom/airbnb/android/models/Review$RatingType;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 107
    .end local v1    # "rating":Ljava/lang/Integer;
    .end local v2    # "ratingType":Lcom/airbnb/android/models/Review$RatingType;
    :cond_29
    if-nez v4, :cond_38

    const/4 v6, 0x0

    :goto_2c
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/airbnb/android/models/Review;->setAverageRating(Ljava/lang/Integer;)V

    .line 108
    return-void

    .line 107
    :cond_38
    int-to-float v6, v4

    div-float v6, v5, v6

    goto :goto_2c
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 284
    if-ne p0, p1, :cond_5

    .line 293
    :cond_4
    :goto_4
    return v1

    .line 286
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 287
    goto :goto_4

    .line 288
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 289
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 290
    check-cast v0, Lcom/airbnb/android/models/_Review;

    .line 291
    .local v0, "other":Lcom/airbnb/android/models/_Review;
    iget-wide v3, p0, Lcom/airbnb/android/models/Review;->mId:J

    iget-wide v5, v0, Lcom/airbnb/android/models/_Review;->mId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v2

    .line 292
    goto :goto_4
.end method

.method public bridge synthetic getAccuracyRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getAccuracyRating()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAverageRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mAverageRating:Ljava/lang/Integer;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mAverageRating:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic getCheckinRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getCheckinRating()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCleanlinessRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getCleanlinessRating()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCommunicationRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getCommunicationRating()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedCreationDate(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 3
    .param p1, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mCreatedAt:Ljava/util/Date;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string/jumbo v0, ""

    goto :goto_c
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getListingId()J
    .registers 3

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->hasListingInfo()Z

    move-result v0

    if-nez v0, :cond_f

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "check hasListingInfo() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/PartialListing;->getListingId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getListingName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->hasListingInfo()Z

    move-result v0

    if-nez v0, :cond_f

    .line 206
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "check hasListingInfo() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/PartialListing;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListingOwnerId()J
    .registers 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->hasListingInfo()Z

    move-result v0

    if-nez v0, :cond_f

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "check hasListingInfo() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/PartialListing;->getListingOwnerUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLocationRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getLocationRating()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPartialListing()Lcom/airbnb/android/models/PartialListing;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getPartialListing()Lcom/airbnb/android/models/PartialListing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrivateFeedback()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getPrivateFeedback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublicFeedback()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getPublicFeedback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatingTypes()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/Review$RatingType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lcom/airbnb/android/models/Review$4;->$SwitchMap$com$airbnb$android$models$ReviewRole:[I

    iget-object v1, p0, Lcom/airbnb/android/models/Review;->mReviewRole:Lcom/airbnb/android/models/ReviewRole;

    invoke-virtual {v1}, Lcom/airbnb/android/models/ReviewRole;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 177
    const/4 v0, 0x0

    :goto_e
    return-object v0

    .line 152
    :pswitch_f
    new-instance v0, Lcom/airbnb/android/models/Review$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/models/Review$1;-><init>(Lcom/airbnb/android/models/Review;)V

    goto :goto_e

    .line 166
    :pswitch_15
    new-instance v0, Lcom/airbnb/android/models/Review$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/models/Review$2;-><init>(Lcom/airbnb/android/models/Review;)V

    goto :goto_e

    .line 150
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method

.method public getRatingTypesUsedForOverall()I
    .registers 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getRatingTypes()Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, "types":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Review$RatingType;>;"
    sget-object v1, Lcom/airbnb/android/models/Review$RatingType;->Recommend:Lcom/airbnb/android/models/Review$RatingType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_10
    return v1

    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_10
.end method

.method public getRatingValue(Lcom/airbnb/android/models/Review$RatingType;)Ljava/lang/Integer;
    .registers 4
    .param p1, "ratingType"    # Lcom/airbnb/android/models/Review$RatingType;

    .prologue
    .line 71
    sget-object v0, Lcom/airbnb/android/models/Review$4;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 91
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 73
    :pswitch_d
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getAverageRating()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 75
    :pswitch_12
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getAccuracyRating()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 77
    :pswitch_17
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getCheckinRating()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 79
    :pswitch_1c
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getCleanlinessRating()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 81
    :pswitch_21
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getCommunicationRating()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 83
    :pswitch_26
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getRespectHouseRulesRating()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 85
    :pswitch_2b
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getLocationRating()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 87
    :pswitch_30
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->getValueRating()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    .line 71
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_d
        :pswitch_12
        :pswitch_17
        :pswitch_1c
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_30
    .end packed-switch
.end method

.method public bridge synthetic getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRespectHouseRulesRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getRespectHouseRulesRating()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReviewRole()Lcom/airbnb/android/models/ReviewRole;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getReviewRole()Lcom/airbnb/android/models/ReviewRole;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReviewee()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRevieweeId()J
    .registers 3

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getRevieweeId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getReviewer()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getReviewer()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReviewerId()J
    .registers 3

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getReviewerId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getValueRating()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->getValueRating()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasListingInfo()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/PartialListing;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public bridge synthetic hasReviewerSubmittedAPreviousReview()Z
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->hasReviewerSubmittedAPreviousReview()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    .line 276
    const/16 v0, 0x1f

    .line 277
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 278
    .local v1, "result":I
    iget-wide v2, p0, Lcom/airbnb/android/models/Review;->mId:J

    iget-wide v4, p0, Lcom/airbnb/android/models/Review;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    .line 279
    return v1
.end method

.method public isDoubleBlind()Z
    .registers 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->isIsDoubleBlind()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->isIsDoubleBlind()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const-string/jumbo v0, "reviews"

    const-string/jumbo v1, "default_double_blind"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_e
.end method

.method public isGuestReviewingHost()Z
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mReviewRole:Lcom/airbnb/android/models/ReviewRole;

    sget-object v1, Lcom/airbnb/android/models/ReviewRole;->Guest:Lcom/airbnb/android/models/ReviewRole;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isHostReviewingGuest()Z
    .registers 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/airbnb/android/models/Review;->mReviewRole:Lcom/airbnb/android/models/ReviewRole;

    sget-object v1, Lcom/airbnb/android/models/ReviewRole;->Host:Lcom/airbnb/android/models/ReviewRole;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic isIsDoubleBlind()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->isIsDoubleBlind()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isOverallRatingComputed()Z
    .registers 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->isHostReviewingGuest()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRecommended()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->isRecommended()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isSubmitted()Z
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->isSubmitted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isTwinCompleted()Z
    .registers 2

    .prologue
    .line 17
    invoke-super {p0}, Lcom/airbnb/android/models/_Review;->isTwinCompleted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAccuracyRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setAccuracyRating(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setAverageRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setAverageRating(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setCheckinRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setCheckinRating(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setCleanlinessRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setCleanlinessRating(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic setCommunicationRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setCommunicationRating(Ljava/lang/Integer;)V

    return-void
.end method

.method public setCreatedAt(Ljava/lang/String;)V
    .registers 3
    .param p1, "createdAt"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 232
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Review;->mCreatedAt:Ljava/util/Date;

    .line 233
    return-void
.end method

.method public bridge synthetic setHasReviewerSubmittedAPreviousReview(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setHasReviewerSubmittedAPreviousReview(Z)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Review;->setId(J)V

    return-void
.end method

.method public bridge synthetic setIsDoubleBlind(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setIsDoubleBlind(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic setLocationRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setLocationRating(Ljava/lang/Integer;)V

    return-void
.end method

.method public setPartialListing(Lcom/airbnb/android/models/Review$PartialListingWrapper;)V
    .registers 3
    .param p1, "partialListingWrapper"    # Lcom/airbnb/android/models/Review$PartialListingWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation

    .prologue
    .line 256
    # getter for: Lcom/airbnb/android/models/Review$PartialListingWrapper;->listingWrapper:Lcom/airbnb/android/models/PartialListing;
    invoke-static {p1}, Lcom/airbnb/android/models/Review$PartialListingWrapper;->access$000(Lcom/airbnb/android/models/Review$PartialListingWrapper;)Lcom/airbnb/android/models/PartialListing;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Review;->mPartialListing:Lcom/airbnb/android/models/PartialListing;

    .line 257
    return-void
.end method

.method public bridge synthetic setPrivateFeedback(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setPrivateFeedback(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPublicFeedback(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setPublicFeedback(Ljava/lang/String;)V

    return-void
.end method

.method public setRatingValue(Lcom/airbnb/android/models/Review$RatingType;Ljava/lang/Integer;)V
    .registers 5
    .param p1, "ratingType"    # Lcom/airbnb/android/models/Review$RatingType;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 116
    sget-object v0, Lcom/airbnb/android/models/Review$4;->$SwitchMap$com$airbnb$android$models$Review$RatingType:[I

    invoke-virtual {p1}, Lcom/airbnb/android/models/Review$RatingType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 144
    :goto_b
    invoke-virtual {p0}, Lcom/airbnb/android/models/Review;->isOverallRatingComputed()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 145
    invoke-direct {p0}, Lcom/airbnb/android/models/Review;->updateAverageRating()V

    .line 147
    :cond_14
    return-void

    .line 118
    :pswitch_15
    invoke-virtual {p0, p2}, Lcom/airbnb/android/models/Review;->setAverageRating(Ljava/lang/Integer;)V

    goto :goto_b

    .line 121
    :pswitch_19
    invoke-virtual {p0, p2}, Lcom/airbnb/android/models/Review;->setAccuracyRating(Ljava/lang/Integer;)V

    goto :goto_b

    .line 124
    :pswitch_1d
    invoke-virtual {p0, p2}, Lcom/airbnb/android/models/Review;->setCheckinRating(Ljava/lang/Integer;)V

    goto :goto_b

    .line 127
    :pswitch_21
    invoke-virtual {p0, p2}, Lcom/airbnb/android/models/Review;->setCleanlinessRating(Ljava/lang/Integer;)V

    goto :goto_b

    .line 130
    :pswitch_25
    invoke-virtual {p0, p2}, Lcom/airbnb/android/models/Review;->setCommunicationRating(Ljava/lang/Integer;)V

    goto :goto_b

    .line 133
    :pswitch_29
    invoke-virtual {p0, p2}, Lcom/airbnb/android/models/Review;->setRespectHouseRulesRating(Ljava/lang/Integer;)V

    goto :goto_b

    .line 136
    :pswitch_2d
    invoke-virtual {p0, p2}, Lcom/airbnb/android/models/Review;->setLocationRating(Ljava/lang/Integer;)V

    goto :goto_b

    .line 139
    :pswitch_31
    invoke-virtual {p0, p2}, Lcom/airbnb/android/models/Review;->setValueRating(Ljava/lang/Integer;)V

    goto :goto_b

    .line 116
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_15
        :pswitch_19
        :pswitch_1d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_31
    .end packed-switch
.end method

.method public bridge synthetic setRecommended(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setRecommended(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setReservation(Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;)V
    .registers 3
    .param p1, "reservationWrapper"    # Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation

    .prologue
    .line 197
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;->reservation:Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/models/Review;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 198
    return-void
.end method

.method public bridge synthetic setRespectHouseRulesRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setRespectHouseRulesRating(Ljava/lang/Integer;)V

    return-void
.end method

.method public setReviewRole(Ljava/lang/String;)V
    .registers 3
    .param p1, "roleString"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "role"
    .end annotation

    .prologue
    .line 247
    invoke-static {p1}, Lcom/airbnb/android/models/ReviewRole;->findRole(Ljava/lang/String;)Lcom/airbnb/android/models/ReviewRole;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Review;->mReviewRole:Lcom/airbnb/android/models/ReviewRole;

    .line 248
    return-void
.end method

.method public setReviewee(Lcom/airbnb/android/requests/Wrappers$UserWrapper;)V
    .registers 3
    .param p1, "userWrapper"    # Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reviewee"
    .end annotation

    .prologue
    .line 242
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/Review;->mReviewee:Lcom/airbnb/android/models/User;

    .line 243
    return-void
.end method

.method public bridge synthetic setRevieweeId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Review;->setRevieweeId(J)V

    return-void
.end method

.method public setReviewer(Lcom/airbnb/android/requests/Wrappers$UserWrapper;)V
    .registers 3
    .param p1, "userWrapper"    # Lcom/airbnb/android/requests/Wrappers$UserWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reviewer"
    .end annotation

    .prologue
    .line 237
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$UserWrapper;->user:Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/Review;->mReviewer:Lcom/airbnb/android/models/User;

    .line 238
    return-void
.end method

.method public bridge synthetic setReviewerId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Review;->setReviewerId(J)V

    return-void
.end method

.method public bridge synthetic setSubmitted(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setSubmitted(Z)V

    return-void
.end method

.method public bridge synthetic setTwinCompleted(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setTwinCompleted(Z)V

    return-void
.end method

.method public bridge synthetic setValueRating(Ljava/lang/Integer;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Integer;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Review;->setValueRating(Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 17
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Review;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
