.class abstract Lcom/airbnb/android/models/localcompanion/_CompanionPlace;
.super Ljava/lang/Object;
.source "_CompanionPlace.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mId:J

.field protected mLat:D

.field protected mLng:D

.field protected mName:Ljava/lang/String;

.field protected mOpeningHours:[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

.field protected mPhone:Ljava/lang/String;

.field protected mPhotoUrls:[Ljava/lang/String;

.field protected mPriceLevel:I

.field protected mShortAddress:Ljava/lang/String;

.field protected mWebsite:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>([Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;DDIJ)V
    .registers 14
    .param p1, "openingHours"    # [Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "shortAddress"    # Ljava/lang/String;
    .param p4, "phone"    # Ljava/lang/String;
    .param p5, "website"    # Ljava/lang/String;
    .param p6, "photoUrls"    # [Ljava/lang/String;
    .param p7, "lat"    # D
    .param p9, "lng"    # D
    .param p11, "priceLevel"    # I
    .param p12, "id"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mOpeningHours:[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

    .line 27
    iput-object p2, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mName:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mShortAddress:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhone:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mWebsite:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhotoUrls:[Ljava/lang/String;

    .line 32
    iput-wide p7, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLat:D

    .line 33
    iput-wide p9, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLng:D

    .line 34
    iput p11, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPriceLevel:I

    .line 35
    iput-wide p12, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mId:J

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mId:J

    return-wide v0
.end method

.method public getLat()D
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLat:D

    return-wide v0
.end method

.method public getLng()D
    .registers 3

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLng:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningHours()[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mOpeningHours:[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrls()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhotoUrls:[Ljava/lang/String;

    return-object v0
.end method

.method public getPriceLevel()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPriceLevel:I

    return v0
.end method

.method public getShortAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mShortAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getWebsite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 170
    sget-object v0, Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

    iput-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mOpeningHours:[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mName:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mShortAddress:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhone:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mWebsite:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhotoUrls:[Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLat:D

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLng:D

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPriceLevel:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mId:J

    .line 182
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mId:J

    .line 149
    return-void
.end method

.method public setLat(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lat"
    .end annotation

    .prologue
    .line 115
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLat:D

    .line 116
    return-void
.end method

.method public setLng(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lng"
    .end annotation

    .prologue
    .line 126
    iput-wide p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLng:D

    .line 127
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setOpeningHours([Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;)V
    .registers 2
    .param p1, "value"    # [Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "opening_hours"
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mOpeningHours:[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

    .line 50
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "phone"
    .end annotation

    .prologue
    .line 82
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhone:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setPhotoUrls([Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # [Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "photo_urls"
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhotoUrls:[Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setPriceLevel(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "price_level"
    .end annotation

    .prologue
    .line 137
    iput p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPriceLevel:I

    .line 138
    return-void
.end method

.method public setShortAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "short_address"
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mShortAddress:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setWebsite(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "website"
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mWebsite:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mOpeningHours:[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 158
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mShortAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mWebsite:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPhotoUrls:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 163
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 164
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 165
    iget v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mPriceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-wide v0, p0, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 167
    return-void
.end method
