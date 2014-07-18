.class abstract Lcom/airbnb/android/models/_SpecialOffer;
.super Ljava/lang/Object;
.source "_SpecialOffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCreatedAt:Ljava/util/Date;

.field protected mExpiresAt:Ljava/util/Date;

.field protected mId:J

.field protected mListingId:J

.field protected mMessage:Ljava/lang/String;

.field protected mNativeCurrency:Ljava/lang/String;

.field protected mNights:I

.field protected mNumberOfGuests:I

.field protected mPreApproval:Z

.field protected mPrice:D

.field protected mPriceNative:I

.field protected mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

.field protected mStartDate:Ljava/util/Date;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Lcom/airbnb/android/models/SpecialOffer;Ljava/lang/String;Ljava/lang/String;ZDIIIJJ)V
    .registers 17
    .param p1, "createdAt"    # Ljava/util/Date;
    .param p2, "startDate"    # Ljava/util/Date;
    .param p3, "expiresAt"    # Ljava/util/Date;
    .param p4, "specialOffer"    # Lcom/airbnb/android/models/SpecialOffer;
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "nativeCurrency"    # Ljava/lang/String;
    .param p7, "preApproval"    # Z
    .param p8, "price"    # D
    .param p10, "priceNative"    # I
    .param p11, "nights"    # I
    .param p12, "numberOfGuests"    # I
    .param p13, "id"    # J
    .param p15, "listingId"    # J

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/airbnb/android/models/_SpecialOffer;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mCreatedAt:Ljava/util/Date;

    .line 31
    iput-object p2, p0, Lcom/airbnb/android/models/_SpecialOffer;->mStartDate:Ljava/util/Date;

    .line 32
    iput-object p3, p0, Lcom/airbnb/android/models/_SpecialOffer;->mExpiresAt:Ljava/util/Date;

    .line 33
    iput-object p4, p0, Lcom/airbnb/android/models/_SpecialOffer;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 34
    iput-object p5, p0, Lcom/airbnb/android/models/_SpecialOffer;->mMessage:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNativeCurrency:Ljava/lang/String;

    .line 36
    iput-boolean p7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPreApproval:Z

    .line 37
    iput-wide p8, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPrice:D

    .line 38
    iput p10, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPriceNative:I

    .line 39
    iput p11, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNights:I

    .line 40
    iput p12, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNumberOfGuests:I

    .line 41
    iput-wide p13, p0, Lcom/airbnb/android/models/_SpecialOffer;->mId:J

    .line 42
    iput-wide p15, p0, Lcom/airbnb/android/models/_SpecialOffer;->mListingId:J

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getExpiresAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mExpiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mId:J

    return-wide v0
.end method

.method public getListingId()J
    .registers 3

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mListingId:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getNativeCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNativeCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getNights()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNights:I

    return v0
.end method

.method public getNumberOfGuests()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNumberOfGuests:I

    return v0
.end method

.method public getPrice()D
    .registers 3

    .prologue
    .line 115
    iget-wide v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPrice:D

    return-wide v0
.end method

.method public getPriceNative()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPriceNative:I

    return v0
.end method

.method public getSpecialOffer()Lcom/airbnb/android/models/SpecialOffer;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mStartDate:Ljava/util/Date;

    return-object v0
.end method

.method public isPreApproval()Z
    .registers 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPreApproval:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 12
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/32 v8, -0x80000000

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 202
    .local v1, "date0":J
    cmp-long v7, v1, v8

    if-eqz v7, :cond_12

    .line 203
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mCreatedAt:Ljava/util/Date;

    .line 205
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 206
    .local v3, "date1":J
    cmp-long v7, v3, v8

    if-eqz v7, :cond_21

    .line 207
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mStartDate:Ljava/util/Date;

    .line 209
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 210
    .local v5, "date2":J
    cmp-long v7, v5, v8

    if-eqz v7, :cond_30

    .line 211
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v5, v6}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mExpiresAt:Ljava/util/Date;

    .line 213
    :cond_30
    const-class v7, Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/models/SpecialOffer;

    iput-object v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mMessage:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNativeCurrency:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 217
    .local v0, "bools":[Z
    const/4 v7, 0x0

    aget-boolean v7, v0, v7

    iput-boolean v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPreApproval:Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    iput-wide v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPrice:D

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPriceNative:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNights:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNumberOfGuests:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mId:J

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/airbnb/android/models/_SpecialOffer;->mListingId:J

    .line 224
    return-void
.end method

.method public setExpiresAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "expires_at"
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mExpiresAt:Ljava/util/Date;

    .line 67
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mId:J

    .line 166
    return-void
.end method

.method public setListingId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing_id"
    .end annotation

    .prologue
    .line 176
    iput-wide p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mListingId:J

    .line 177
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message"
    .end annotation

    .prologue
    .line 88
    iput-object p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mMessage:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setNativeCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "native_currency"
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNativeCurrency:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setNights(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "nights"
    .end annotation

    .prologue
    .line 143
    iput p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNights:I

    .line 144
    return-void
.end method

.method public setNumberOfGuests(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "number_of_guests"
    .end annotation

    .prologue
    .line 154
    iput p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNumberOfGuests:I

    .line 155
    return-void
.end method

.method public setPreApproval(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_preapproval"
    .end annotation

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPreApproval:Z

    .line 111
    return-void
.end method

.method public setPrice(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price"
    .end annotation

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPrice:D

    .line 122
    return-void
.end method

.method public setPriceNative(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_native"
    .end annotation

    .prologue
    .line 132
    iput p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPriceNative:I

    .line 133
    return-void
.end method

.method public setSpecialOffer(Lcom/airbnb/android/models/SpecialOffer;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/SpecialOffer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "special_offer"
    .end annotation

    .prologue
    .line 77
    iput-object p1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    const-wide/32 v2, -0x80000000

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_53

    move-wide v0, v2

    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 186
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mStartDate:Ljava/util/Date;

    if-nez v0, :cond_5a

    move-wide v0, v2

    :goto_11
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mExpiresAt:Ljava/util/Date;

    if-nez v0, :cond_61

    :goto_18
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mSpecialOffer:Lcom/airbnb/android/models/SpecialOffer;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 189
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNativeCurrency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPreApproval:Z

    aput-boolean v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 192
    iget-wide v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPrice:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 193
    iget v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mPriceNative:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNights:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mNumberOfGuests:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-wide v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 197
    iget-wide v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mListingId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 198
    return-void

    .line 185
    :cond_53
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_9

    .line 186
    :cond_5a
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mStartDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_11

    .line 187
    :cond_61
    iget-object v0, p0, Lcom/airbnb/android/models/_SpecialOffer;->mExpiresAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_18
.end method
