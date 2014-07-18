.class abstract Lcom/airbnb/android/models/_Post;
.super Ljava/lang/Object;
.source "_Post.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCheckinDate:Ljava/util/Date;

.field protected mCheckoutDate:Ljava/util/Date;

.field protected mCreatedAt:Ljava/util/Date;

.field protected mId:J

.field protected mMessage:Ljava/lang/String;

.field protected mNumberOfGuests:I

.field protected mSentFromMobile:Z

.field protected mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

.field protected mStatus:Lcom/airbnb/android/models/ReservationStatus;

.field protected mUserId:J


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/airbnb/android/models/ReservationStatus;Lcom/airbnb/android/models/SpecialOffer;Ljava/lang/String;ZIJJ)V
    .registers 13
    .param p1, "checkinDate"    # Ljava/util/Date;
    .param p2, "checkoutDate"    # Ljava/util/Date;
    .param p3, "createdAt"    # Ljava/util/Date;
    .param p4, "status"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p5, "specialOffer"    # Lcom/airbnb/android/models/SpecialOffer;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "sentFromMobile"    # Z
    .param p8, "numberOfGuests"    # I
    .param p9, "id"    # J
    .param p11, "userId"    # J

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/models/_Post;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/airbnb/android/models/_Post;->mCheckinDate:Ljava/util/Date;

    .line 28
    iput-object p2, p0, Lcom/airbnb/android/models/_Post;->mCheckoutDate:Ljava/util/Date;

    .line 29
    iput-object p3, p0, Lcom/airbnb/android/models/_Post;->mCreatedAt:Ljava/util/Date;

    .line 30
    iput-object p4, p0, Lcom/airbnb/android/models/_Post;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 31
    iput-object p5, p0, Lcom/airbnb/android/models/_Post;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 32
    iput-object p6, p0, Lcom/airbnb/android/models/_Post;->mMessage:Ljava/lang/String;

    .line 33
    iput-boolean p7, p0, Lcom/airbnb/android/models/_Post;->mSentFromMobile:Z

    .line 34
    iput p8, p0, Lcom/airbnb/android/models/_Post;->mNumberOfGuests:I

    .line 35
    iput-wide p9, p0, Lcom/airbnb/android/models/_Post;->mId:J

    .line 36
    iput-wide p11, p0, Lcom/airbnb/android/models/_Post;->mUserId:J

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckinDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mCheckinDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCheckoutDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mCheckoutDate:Ljava/util/Date;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/airbnb/android/models/_Post;->mId:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfGuests()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/airbnb/android/models/_Post;->mNumberOfGuests:I

    return v0
.end method

.method public getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    return-object v0
.end method

.method public getStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/airbnb/android/models/_Post;->mUserId:J

    return-wide v0
.end method

.method public isSentFromMobile()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Post;->mSentFromMobile:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/32 v8, -0x80000000

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 154
    .local v1, "date0":J
    cmp-long v7, v1, v8

    if-eqz v7, :cond_12

    .line 155
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Lcom/airbnb/android/models/_Post;->mCheckinDate:Ljava/util/Date;

    .line 157
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 158
    .local v3, "date1":J
    cmp-long v7, v3, v8

    if-eqz v7, :cond_21

    .line 159
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Lcom/airbnb/android/models/_Post;->mCheckoutDate:Ljava/util/Date;

    .line 161
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 162
    .local v5, "date2":J
    cmp-long v7, v5, v8

    if-eqz v7, :cond_30

    .line 163
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Lcom/airbnb/android/models/_Post;->mCreatedAt:Ljava/util/Date;

    .line 165
    :cond_30
    const-class v7, Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/models/ReservationStatus;

    iput-object v7, p0, Lcom/airbnb/android/models/_Post;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 166
    const-class v7, Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/models/SpecialOffer;

    iput-object v7, p0, Lcom/airbnb/android/models/_Post;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/airbnb/android/models/_Post;->mMessage:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 169
    .local v0, "bools":[Z
    const/4 v7, 0x0

    aget-boolean v7, v0, v7

    iput-boolean v7, p0, Lcom/airbnb/android/models/_Post;->mSentFromMobile:Z

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/airbnb/android/models/_Post;->mNumberOfGuests:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/airbnb/android/models/_Post;->mId:J

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/airbnb/android/models/_Post;->mUserId:J

    .line 173
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/models/_Post;->mCreatedAt:Ljava/util/Date;

    .line 61
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/airbnb/android/models/_Post;->mId:J

    .line 121
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/airbnb/android/models/_Post;->mMessage:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setNumberOfGuests(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "number_of_guests"
    .end annotation

    .prologue
    .line 109
    iput p1, p0, Lcom/airbnb/android/models/_Post;->mNumberOfGuests:I

    .line 110
    return-void
.end method

.method public setSentFromMobile(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sent_from_mobile"
    .end annotation

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Post;->mSentFromMobile:Z

    .line 99
    return-void
.end method

.method public setStatus(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/ReservationStatus;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/models/_Post;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 72
    return-void
.end method

.method public setUserId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 131
    iput-wide p1, p0, Lcom/airbnb/android/models/_Post;->mUserId:J

    .line 132
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mCheckinDate:Ljava/util/Date;

    if-nez v0, :cond_44

    move-wide v0, v2

    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mCheckoutDate:Ljava/util/Date;

    if-nez v0, :cond_4b

    move-wide v0, v2

    :goto_11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_52

    :goto_18
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 143
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_Post;->mSentFromMobile:Z

    aput-boolean v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 147
    iget v0, p0, Lcom/airbnb/android/models/_Post;->mNumberOfGuests:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-wide v0, p0, Lcom/airbnb/android/models/_Post;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-wide v0, p0, Lcom/airbnb/android/models/_Post;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    return-void

    .line 140
    :cond_44
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mCheckinDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_9

    .line 141
    :cond_4b
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mCheckoutDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_11

    .line 142
    :cond_52
    iget-object v0, p0, Lcom/airbnb/android/models/_Post;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_18
.end method
