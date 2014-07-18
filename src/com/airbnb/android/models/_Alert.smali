.class abstract Lcom/airbnb/android/models/_Alert;
.super Ljava/lang/Object;
.source "_Alert.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAlertType:Ljava/lang/String;

.field protected mBodyText:Ljava/lang/String;

.field protected mContentId:I

.field protected mCreatedAt:Ljava/util/Date;

.field protected mEventId:I

.field protected mExpiresAt:Ljava/util/Date;

.field protected mGroupId:I

.field protected mId:I

.field protected mImageUrl:Ljava/lang/String;

.field protected mObjectId:I

.field protected mObjectType:Ljava/lang/String;

.field protected mReservation:Lcom/airbnb/android/models/Reservation;

.field protected mReview:Lcom/airbnb/android/models/Review;

.field protected mThread:Lcom/airbnb/android/models/MessageThread;

.field protected mTitleText:Ljava/lang/String;

.field protected mUrl:Ljava/lang/String;

.field protected mUserId:I

.field protected mViewed:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/Review;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIIII)V
    .registers 20
    .param p1, "createdAt"    # Ljava/util/Date;
    .param p2, "expiresAt"    # Ljava/util/Date;
    .param p3, "thread"    # Lcom/airbnb/android/models/MessageThread;
    .param p4, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p5, "review"    # Lcom/airbnb/android/models/Review;
    .param p6, "objectType"    # Ljava/lang/String;
    .param p7, "alertType"    # Ljava/lang/String;
    .param p8, "imageUrl"    # Ljava/lang/String;
    .param p9, "titleText"    # Ljava/lang/String;
    .param p10, "bodyText"    # Ljava/lang/String;
    .param p11, "url"    # Ljava/lang/String;
    .param p12, "viewed"    # Z
    .param p13, "id"    # I
    .param p14, "objectId"    # I
    .param p15, "userId"    # I
    .param p16, "groupId"    # I
    .param p17, "contentId"    # I
    .param p18, "eventId"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/airbnb/android/models/_Alert;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/_Alert;->mCreatedAt:Ljava/util/Date;

    .line 36
    iput-object p2, p0, Lcom/airbnb/android/models/_Alert;->mExpiresAt:Ljava/util/Date;

    .line 37
    iput-object p3, p0, Lcom/airbnb/android/models/_Alert;->mThread:Lcom/airbnb/android/models/MessageThread;

    .line 38
    iput-object p4, p0, Lcom/airbnb/android/models/_Alert;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 39
    iput-object p5, p0, Lcom/airbnb/android/models/_Alert;->mReview:Lcom/airbnb/android/models/Review;

    .line 40
    iput-object p6, p0, Lcom/airbnb/android/models/_Alert;->mObjectType:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcom/airbnb/android/models/_Alert;->mAlertType:Ljava/lang/String;

    .line 42
    iput-object p8, p0, Lcom/airbnb/android/models/_Alert;->mImageUrl:Ljava/lang/String;

    .line 43
    iput-object p9, p0, Lcom/airbnb/android/models/_Alert;->mTitleText:Ljava/lang/String;

    .line 44
    iput-object p10, p0, Lcom/airbnb/android/models/_Alert;->mBodyText:Ljava/lang/String;

    .line 45
    iput-object p11, p0, Lcom/airbnb/android/models/_Alert;->mUrl:Ljava/lang/String;

    .line 46
    iput-boolean p12, p0, Lcom/airbnb/android/models/_Alert;->mViewed:Z

    .line 47
    iput p13, p0, Lcom/airbnb/android/models/_Alert;->mId:I

    .line 48
    iput p14, p0, Lcom/airbnb/android/models/_Alert;->mObjectId:I

    .line 49
    move/from16 v0, p15

    iput v0, p0, Lcom/airbnb/android/models/_Alert;->mUserId:I

    .line 50
    move/from16 v0, p16

    iput v0, p0, Lcom/airbnb/android/models/_Alert;->mGroupId:I

    .line 51
    move/from16 v0, p17

    iput v0, p0, Lcom/airbnb/android/models/_Alert;->mContentId:I

    .line 52
    move/from16 v0, p18

    iput v0, p0, Lcom/airbnb/android/models/_Alert;->mEventId:I

    .line 53
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getAlertType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mAlertType:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mBodyText:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()I
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mContentId:I

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getEventId()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mEventId:I

    return v0
.end method

.method public getExpiresAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mExpiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 207
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mGroupId:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mId:I

    return v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectId()I
    .registers 2

    .prologue
    .line 185
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mObjectId:I

    return v0
.end method

.method public getObjectType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mObjectType:Ljava/lang/String;

    return-object v0
.end method

.method public getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method public getReview()Lcom/airbnb/android/models/Review;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mReview:Lcom/airbnb/android/models/Review;

    return-object v0
.end method

.method public getThread()Lcom/airbnb/android/models/MessageThread;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mThread:Lcom/airbnb/android/models/MessageThread;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mUserId:I

    return v0
.end method

.method public isViewed()Z
    .registers 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Alert;->mViewed:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/32 v6, -0x80000000

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 266
    .local v1, "date0":J
    cmp-long v5, v1, v6

    if-eqz v5, :cond_12

    .line 267
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mCreatedAt:Ljava/util/Date;

    .line 269
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 270
    .local v3, "date1":J
    cmp-long v5, v3, v6

    if-eqz v5, :cond_21

    .line 271
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mExpiresAt:Ljava/util/Date;

    .line 273
    :cond_21
    const-class v5, Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/MessageThread;

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mThread:Lcom/airbnb/android/models/MessageThread;

    .line 274
    const-class v5, Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Reservation;

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 275
    const-class v5, Lcom/airbnb/android/models/Review;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/Review;

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mReview:Lcom/airbnb/android/models/Review;

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mObjectType:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mAlertType:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mImageUrl:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mTitleText:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mBodyText:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/airbnb/android/models/_Alert;->mUrl:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 283
    .local v0, "bools":[Z
    const/4 v5, 0x0

    aget-boolean v5, v0, v5

    iput-boolean v5, p0, Lcom/airbnb/android/models/_Alert;->mViewed:Z

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_Alert;->mId:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_Alert;->mObjectId:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_Alert;->mUserId:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_Alert;->mGroupId:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_Alert;->mContentId:I

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/airbnb/android/models/_Alert;->mEventId:I

    .line 290
    return-void
.end method

.method public setAlertType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "alert_type"
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/airbnb/android/models/_Alert;->mAlertType:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setBodyText(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "body_text"
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/airbnb/android/models/_Alert;->mBodyText:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setContentId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_id"
    .end annotation

    .prologue
    .line 224
    iput p1, p0, Lcom/airbnb/android/models/_Alert;->mContentId:I

    .line 225
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/models/_Alert;->mCreatedAt:Ljava/util/Date;

    .line 67
    return-void
.end method

.method public setEventId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event_id"
    .end annotation

    .prologue
    .line 235
    iput p1, p0, Lcom/airbnb/android/models/_Alert;->mEventId:I

    .line 236
    return-void
.end method

.method public setExpiresAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expires_at"
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lcom/airbnb/android/models/_Alert;->mExpiresAt:Ljava/util/Date;

    .line 78
    return-void
.end method

.method public setGroupId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group_id"
    .end annotation

    .prologue
    .line 213
    iput p1, p0, Lcom/airbnb/android/models/_Alert;->mGroupId:I

    .line 214
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 180
    iput p1, p0, Lcom/airbnb/android/models/_Alert;->mId:I

    .line 181
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "image_url"
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/airbnb/android/models/_Alert;->mImageUrl:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setObjectId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "object_id"
    .end annotation

    .prologue
    .line 191
    iput p1, p0, Lcom/airbnb/android/models/_Alert;->mObjectId:I

    .line 192
    return-void
.end method

.method public setObjectType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "object_type"
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/airbnb/android/models/_Alert;->mObjectType:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title_text"
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/airbnb/android/models/_Alert;->mTitleText:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "url"
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/airbnb/android/models/_Alert;->mUrl:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setUserId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 202
    iput p1, p0, Lcom/airbnb/android/models/_Alert;->mUserId:I

    .line 203
    return-void
.end method

.method public setViewed(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "viewed"
    .end annotation

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Alert;->mViewed:Z

    .line 170
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 244
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_69

    move-wide v0, v2

    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mExpiresAt:Ljava/util/Date;

    if-nez v0, :cond_70

    :goto_10
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 246
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 247
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 248
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mReview:Lcom/airbnb/android/models/Review;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 249
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mObjectType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mAlertType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mTitleText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mBodyText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_Alert;->mViewed:Z

    aput-boolean v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 256
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mObjectId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mContentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Lcom/airbnb/android/models/_Alert;->mEventId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    return-void

    .line 244
    :cond_69
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_9

    .line 245
    :cond_70
    iget-object v0, p0, Lcom/airbnb/android/models/_Alert;->mExpiresAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_10
.end method
