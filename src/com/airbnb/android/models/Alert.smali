.class public Lcom/airbnb/android/models/Alert;
.super Lcom/airbnb/android/models/_Alert;
.source "Alert.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/TravelInboxItem;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/Alert$AlertType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/models/_Alert;",
        "Lcom/airbnb/android/interfaces/TravelInboxItem;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/airbnb/android/models/Alert;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Alert;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTravelInboxImageUrl:Ljava/lang/String;

.field private mTypeEnum:Lcom/airbnb/android/models/Alert$AlertType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    new-instance v0, Lcom/airbnb/android/models/Alert$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Alert$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Alert;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/models/_Alert;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/airbnb/android/models/Alert;)I
    .registers 4
    .param p1, "another"    # Lcom/airbnb/android/models/Alert;

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/airbnb/android/models/Alert;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/models/Alert;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/airbnb/android/models/Alert;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/Alert;->compareTo(Lcom/airbnb/android/models/Alert;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    if-ne p0, p1, :cond_5

    .line 183
    :cond_4
    :goto_4
    return v1

    .line 173
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 174
    goto :goto_4

    .line 176
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 177
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 179
    check-cast v0, Lcom/airbnb/android/models/Alert;

    .line 180
    .local v0, "other":Lcom/airbnb/android/models/Alert;
    iget v3, p0, Lcom/airbnb/android/models/Alert;->mId:I

    iget v4, v0, Lcom/airbnb/android/models/Alert;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 181
    goto :goto_4
.end method

.method public bridge synthetic getAlertType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getAlertType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlertTypeEnum()Lcom/airbnb/android/models/Alert$AlertType;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mTypeEnum:Lcom/airbnb/android/models/Alert$AlertType;

    if-nez v0, :cond_c

    .line 69
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mAlertType:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/android/models/Alert$AlertType;->findType(Ljava/lang/String;)Lcom/airbnb/android/models/Alert$AlertType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Alert;->mTypeEnum:Lcom/airbnb/android/models/Alert$AlertType;

    .line 72
    :cond_c
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mTypeEnum:Lcom/airbnb/android/models/Alert$AlertType;

    return-object v0
.end method

.method public bridge synthetic getBodyText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentId()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getContentId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEventId()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getEventId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getExpiresAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getExpiresAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroupId()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getGroupId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getObjectId()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getObjectId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getObjectType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getObjectType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReview()Lcom/airbnb/android/models/Review;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getReview()Lcom/airbnb/android/models/Review;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThread()Lcom/airbnb/android/models/MessageThread;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitleText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getTitleText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTravelInboxImageUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mTravelInboxImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mTypeEnum:Lcom/airbnb/android/models/Alert$AlertType;

    sget-object v1, Lcom/airbnb/android/models/Alert$AlertType;->LeaveReviews:Lcom/airbnb/android/models/Alert$AlertType;

    if-ne v0, v1, :cond_1a

    .line 137
    :try_start_e
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Review;->getReviewee()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/Alert;->mTravelInboxImageUrl:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_1a} :catch_29

    .line 143
    :cond_1a
    :goto_1a
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mTravelInboxImageUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mImageUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/android/models/Alert;->mTravelInboxImageUrl:Ljava/lang/String;

    .line 147
    :cond_26
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mTravelInboxImageUrl:Ljava/lang/String;

    return-object v0

    .line 138
    :catch_29
    move-exception v0

    goto :goto_1a
.end method

.method public getTravelInboxStatusStringId()I
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public getTravelInboxStatusTextColor()I
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getTravelInboxSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mBodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getTravelInboxTime()Ljava/util/Date;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getTravelInboxTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/airbnb/android/models/Alert;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/airbnb/android/interfaces/TravelInboxItem$Type;
    .registers 2

    .prologue
    .line 188
    sget-object v0, Lcom/airbnb/android/interfaces/TravelInboxItem$Type;->Alert:Lcom/airbnb/android/interfaces/TravelInboxItem$Type;

    return-object v0
.end method

.method public bridge synthetic getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Lcom/airbnb/android/models/User;
    .registers 3

    .prologue
    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "dont call this on an alert!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getUserId()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->getUserId()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 162
    const/16 v0, 0x1f

    .line 163
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 164
    .local v1, "result":I
    iget v2, p0, Lcom/airbnb/android/models/Alert;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 165
    return v1
.end method

.method public isTravelInboxUnread()Z
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isViewed()Z
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/_Alert;->isViewed()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAlertType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setAlertType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setBodyText(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setBodyText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setContentId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setContentId(I)V

    return-void
.end method

.method public bridge synthetic setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setCreatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setEventId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setEventId(I)V

    return-void
.end method

.method public bridge synthetic setExpiresAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setExpiresAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setGroupId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setGroupId(I)V

    return-void
.end method

.method public bridge synthetic setId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setId(I)V

    return-void
.end method

.method public bridge synthetic setImageUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setObjectId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setObjectId(I)V

    return-void
.end method

.method public bridge synthetic setObjectType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setObjectType(Ljava/lang/String;)V

    return-void
.end method

.method public setReservation(Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;)V
    .registers 3
    .param p1, "reservationWrapper"    # Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation

    .prologue
    .line 77
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$ReservationWrapper;->reservation:Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/models/Alert;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 78
    return-void
.end method

.method public setReview(Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;)V
    .registers 3
    .param p1, "reviewWrapper"    # Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "review"
    .end annotation

    .prologue
    .line 87
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$ReviewWrapper;->review:Lcom/airbnb/android/models/Review;

    iput-object v0, p0, Lcom/airbnb/android/models/Alert;->mReview:Lcom/airbnb/android/models/Review;

    .line 88
    return-void
.end method

.method public setThread(Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;)V
    .registers 3
    .param p1, "threadWrapper"    # Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thread"
    .end annotation

    .prologue
    .line 82
    iget-object v0, p1, Lcom/airbnb/android/requests/Wrappers$MessageThreadWrapper;->thread:Lcom/airbnb/android/models/MessageThread;

    iput-object v0, p0, Lcom/airbnb/android/models/Alert;->mThread:Lcom/airbnb/android/models/MessageThread;

    .line 83
    return-void
.end method

.method public bridge synthetic setTitleText(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setTitleText(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUserId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setUserId(I)V

    return-void
.end method

.method public bridge synthetic setViewed(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Alert;->setViewed(Z)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Alert;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
