.class abstract Lcom/airbnb/android/models/_MessageThread;
.super Ljava/lang/Object;
.source "_MessageThread.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCountdownAt:Ljava/util/Date;

.field protected mExpiresAt:Ljava/util/Date;

.field protected mId:J

.field protected mInquiryCheckinDate:Ljava/util/Date;

.field protected mInquiryCheckoutDate:Ljava/util/Date;

.field protected mInquiryNumGuests:I

.field protected mInquiryPriceNative:I

.field protected mListing:Lcom/airbnb/android/models/Listing;

.field protected mMessageThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

.field protected mOtherUser:Lcom/airbnb/android/models/User;

.field protected mPosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Post;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreview:Ljava/lang/String;

.field protected mReservation:Lcom/airbnb/android/models/Reservation;

.field protected mResponded:Z

.field protected mStatusString:Ljava/lang/String;

.field protected mUnread:Z

.field protected mUpdatedAt:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lcom/airbnb/android/models/Listing;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/User;ZZIIJ)V
    .registers 21
    .param p1, "inquiryCheckinDate"    # Ljava/util/Date;
    .param p2, "inquiryCheckoutDate"    # Ljava/util/Date;
    .param p3, "countdownAt"    # Ljava/util/Date;
    .param p4, "expiresAt"    # Ljava/util/Date;
    .param p5, "updatedAt"    # Ljava/util/Date;
    .param p7, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p8, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p9, "messageThreadStatus"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p10, "preview"    # Ljava/lang/String;
    .param p11, "statusString"    # Ljava/lang/String;
    .param p12, "otherUser"    # Lcom/airbnb/android/models/User;
    .param p13, "unread"    # Z
    .param p14, "responded"    # Z
    .param p15, "inquiryNumGuests"    # I
    .param p16, "inquiryPriceNative"    # I
    .param p17, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Post;",
            ">;",
            "Lcom/airbnb/android/models/Listing;",
            "Lcom/airbnb/android/models/Reservation;",
            "Lcom/airbnb/android/models/ReservationStatus;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/User;",
            "ZZIIJ)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p6, "posts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Post;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_MessageThread;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckinDate:Ljava/util/Date;

    .line 36
    iput-object p2, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckoutDate:Ljava/util/Date;

    .line 37
    iput-object p3, p0, Lcom/airbnb/android/models/_MessageThread;->mCountdownAt:Ljava/util/Date;

    .line 38
    iput-object p4, p0, Lcom/airbnb/android/models/_MessageThread;->mExpiresAt:Ljava/util/Date;

    .line 39
    iput-object p5, p0, Lcom/airbnb/android/models/_MessageThread;->mUpdatedAt:Ljava/util/Date;

    .line 40
    iput-object p6, p0, Lcom/airbnb/android/models/_MessageThread;->mPosts:Ljava/util/List;

    .line 41
    iput-object p7, p0, Lcom/airbnb/android/models/_MessageThread;->mListing:Lcom/airbnb/android/models/Listing;

    .line 42
    iput-object p8, p0, Lcom/airbnb/android/models/_MessageThread;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 43
    iput-object p9, p0, Lcom/airbnb/android/models/_MessageThread;->mMessageThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 44
    iput-object p10, p0, Lcom/airbnb/android/models/_MessageThread;->mPreview:Ljava/lang/String;

    .line 45
    iput-object p11, p0, Lcom/airbnb/android/models/_MessageThread;->mStatusString:Ljava/lang/String;

    .line 46
    iput-object p12, p0, Lcom/airbnb/android/models/_MessageThread;->mOtherUser:Lcom/airbnb/android/models/User;

    .line 47
    iput-boolean p13, p0, Lcom/airbnb/android/models/_MessageThread;->mUnread:Z

    .line 48
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/airbnb/android/models/_MessageThread;->mResponded:Z

    .line 49
    move/from16 v0, p15

    iput v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryNumGuests:I

    .line 50
    move/from16 v0, p16

    iput v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryPriceNative:I

    .line 51
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/airbnb/android/models/_MessageThread;->mId:J

    .line 52
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public getCountdownAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mCountdownAt:Ljava/util/Date;

    return-object v0
.end method

.method public getExpiresAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mExpiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/airbnb/android/models/_MessageThread;->mId:J

    return-wide v0
.end method

.method public getInquiryCheckinDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckinDate:Ljava/util/Date;

    return-object v0
.end method

.method public getInquiryCheckoutDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckoutDate:Ljava/util/Date;

    return-object v0
.end method

.method public getInquiryNumGuests()I
    .registers 2

    .prologue
    .line 177
    iget v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryNumGuests:I

    return v0
.end method

.method public getInquiryPriceNative()I
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryPriceNative:I

    return v0
.end method

.method public getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public getMessageThreadStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mMessageThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

    return-object v0
.end method

.method public getOtherUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mOtherUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getPosts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Post;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mPosts:Ljava/util/List;

    return-object v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mPreview:Ljava/lang/String;

    return-object v0
.end method

.method public getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method public getStatusString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mStatusString:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mUpdatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public isResponded()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/airbnb/android/models/_MessageThread;->mResponded:Z

    return v0
.end method

.method public isUnread()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/airbnb/android/models/_MessageThread;->mUnread:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/32 v12, -0x80000000

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 234
    .local v1, "date0":J
    cmp-long v11, v1, v12

    if-eqz v11, :cond_12

    .line 235
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckinDate:Ljava/util/Date;

    .line 237
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 238
    .local v3, "date1":J
    cmp-long v11, v3, v12

    if-eqz v11, :cond_21

    .line 239
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckoutDate:Ljava/util/Date;

    .line 241
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 242
    .local v5, "date2":J
    cmp-long v11, v5, v12

    if-eqz v11, :cond_30

    .line 243
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mCountdownAt:Ljava/util/Date;

    .line 245
    :cond_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 246
    .local v7, "date3":J
    cmp-long v11, v7, v12

    if-eqz v11, :cond_3f

    .line 247
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v7, v8}, Ljava/util/Date;-><init>(J)V

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mExpiresAt:Ljava/util/Date;

    .line 249
    :cond_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 250
    .local v9, "date4":J
    cmp-long v11, v9, v12

    if-eqz v11, :cond_4e

    .line 251
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v9, v10}, Ljava/util/Date;-><init>(J)V

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mUpdatedAt:Ljava/util/Date;

    .line 253
    :cond_4e
    sget-object v11, Lcom/airbnb/android/models/Post;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mPosts:Ljava/util/List;

    .line 254
    const-class v11, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/airbnb/android/models/Listing;

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mListing:Lcom/airbnb/android/models/Listing;

    .line 255
    const-class v11, Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/airbnb/android/models/Reservation;

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 256
    const-class v11, Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/airbnb/android/models/ReservationStatus;

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mMessageThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mPreview:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mStatusString:Ljava/lang/String;

    .line 259
    const-class v11, Lcom/airbnb/android/models/User;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Lcom/airbnb/android/models/User;

    iput-object v11, p0, Lcom/airbnb/android/models/_MessageThread;->mOtherUser:Lcom/airbnb/android/models/User;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 261
    .local v0, "bools":[Z
    const/4 v11, 0x0

    aget-boolean v11, v0, v11

    iput-boolean v11, p0, Lcom/airbnb/android/models/_MessageThread;->mUnread:Z

    .line 262
    const/4 v11, 0x1

    aget-boolean v11, v0, v11

    iput-boolean v11, p0, Lcom/airbnb/android/models/_MessageThread;->mResponded:Z

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryNumGuests:I

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    iput v11, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryPriceNative:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/airbnb/android/models/_MessageThread;->mId:J

    .line 266
    return-void
.end method

.method public setCountdownAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "countdown_at"
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/airbnb/android/models/_MessageThread;->mCountdownAt:Ljava/util/Date;

    .line 76
    return-void
.end method

.method public setExpiresAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expires_at"
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/airbnb/android/models/_MessageThread;->mExpiresAt:Ljava/util/Date;

    .line 87
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/airbnb/android/models/_MessageThread;->mId:J

    .line 206
    return-void
.end method

.method public setInquiryNumGuests(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "inquiry_number_of_guests"
    .end annotation

    .prologue
    .line 183
    iput p1, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryNumGuests:I

    .line 184
    return-void
.end method

.method public setInquiryPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "inquiry_price_native"
    .end annotation

    .prologue
    .line 194
    iput p1, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryPriceNative:I

    .line 195
    return-void
.end method

.method public setMessageThreadStatus(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/ReservationStatus;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 123
    iput-object p1, p0, Lcom/airbnb/android/models/_MessageThread;->mMessageThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 124
    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "preview"
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lcom/airbnb/android/models/_MessageThread;->mPreview:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setResponded(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "responded"
    .end annotation

    .prologue
    .line 172
    iput-boolean p1, p0, Lcom/airbnb/android/models/_MessageThread;->mResponded:Z

    .line 173
    return-void
.end method

.method public setStatusString(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status_string"
    .end annotation

    .prologue
    .line 145
    iput-object p1, p0, Lcom/airbnb/android/models/_MessageThread;->mStatusString:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setUnread(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "unread"
    .end annotation

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/airbnb/android/models/_MessageThread;->mUnread:Z

    .line 162
    return-void
.end method

.method public setUpdatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "updated_at"
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/models/_MessageThread;->mUpdatedAt:Ljava/util/Date;

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 214
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckinDate:Ljava/util/Date;

    if-nez v0, :cond_6d

    move-wide v0, v2

    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 215
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckoutDate:Ljava/util/Date;

    if-nez v0, :cond_74

    move-wide v0, v2

    :goto_11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 216
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mCountdownAt:Ljava/util/Date;

    if-nez v0, :cond_7b

    move-wide v0, v2

    :goto_19
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 217
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mExpiresAt:Ljava/util/Date;

    if-nez v0, :cond_82

    move-wide v0, v2

    :goto_21
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mUpdatedAt:Ljava/util/Date;

    if-nez v0, :cond_89

    :goto_28
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 219
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mPosts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 220
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 221
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 222
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mMessageThreadStatus:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 223
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mPreview:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mStatusString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mOtherUser:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 226
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_MessageThread;->mUnread:Z

    aput-boolean v1, v0, v4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/_MessageThread;->mResponded:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 227
    iget v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryNumGuests:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-wide v0, p0, Lcom/airbnb/android/models/_MessageThread;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    return-void

    .line 214
    :cond_6d
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckinDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_9

    .line 215
    :cond_74
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mInquiryCheckoutDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_11

    .line 216
    :cond_7b
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mCountdownAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_19

    .line 217
    :cond_82
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mExpiresAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_21

    .line 218
    :cond_89
    iget-object v0, p0, Lcom/airbnb/android/models/_MessageThread;->mUpdatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_28
.end method
