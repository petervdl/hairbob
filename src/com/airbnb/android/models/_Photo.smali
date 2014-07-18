.class abstract Lcom/airbnb/android/models/_Photo;
.super Ljava/lang/Object;
.source "_Photo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCaption:Ljava/lang/String;

.field protected mId:J

.field protected mPictureUrl:Ljava/lang/String;

.field protected mSortOrder:I

.field protected mThumbnailUrl:Ljava/lang/String;

.field protected mXlPictureUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "xlPictureUrl"    # Ljava/lang/String;
    .param p2, "pictureUrl"    # Ljava/lang/String;
    .param p3, "thumbnailUrl"    # Ljava/lang/String;
    .param p4, "caption"    # Ljava/lang/String;
    .param p5, "sortOrder"    # I
    .param p6, "id"    # J

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/models/_Photo;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/android/models/_Photo;->mXlPictureUrl:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/airbnb/android/models/_Photo;->mPictureUrl:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/airbnb/android/models/_Photo;->mThumbnailUrl:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/airbnb/android/models/_Photo;->mCaption:Ljava/lang/String;

    .line 26
    iput p5, p0, Lcom/airbnb/android/models/_Photo;->mSortOrder:I

    .line 27
    iput-wide p6, p0, Lcom/airbnb/android/models/_Photo;->mId:J

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getCaption()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/_Photo;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/airbnb/android/models/_Photo;->mId:J

    return-wide v0
.end method

.method public getPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/models/_Photo;->mPictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/airbnb/android/models/_Photo;->mSortOrder:I

    return v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/models/_Photo;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getXlPictureUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/models/_Photo;->mXlPictureUrl:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Photo;->mXlPictureUrl:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Photo;->mPictureUrl:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Photo;->mThumbnailUrl:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_Photo;->mCaption:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/_Photo;->mSortOrder:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_Photo;->mId:J

    .line 120
    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "caption"
    .end annotation

    .prologue
    .line 74
    iput-object p1, p0, Lcom/airbnb/android/models/_Photo;->mCaption:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 96
    iput-wide p1, p0, Lcom/airbnb/android/models/_Photo;->mId:J

    .line 97
    return-void
.end method

.method public setPictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "picture"
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/airbnb/android/models/_Photo;->mPictureUrl:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setSortOrder(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sort_order"
    .end annotation

    .prologue
    .line 85
    iput p1, p0, Lcom/airbnb/android/models/_Photo;->mSortOrder:I

    .line 86
    return-void
.end method

.method public setThumbnailUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thumbnail"
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/airbnb/android/models/_Photo;->mThumbnailUrl:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setXlPictureUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "xl_picture"
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/airbnb/android/models/_Photo;->mXlPictureUrl:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/models/_Photo;->mXlPictureUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/models/_Photo;->mPictureUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/models/_Photo;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/airbnb/android/models/_Photo;->mCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/airbnb/android/models/_Photo;->mSortOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-wide v0, p0, Lcom/airbnb/android/models/_Photo;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    return-void
.end method
