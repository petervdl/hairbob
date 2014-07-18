.class abstract Lcom/airbnb/android/models/_Collection;
.super Ljava/lang/Object;
.source "_Collection.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mId:J

.field protected mImageUrl:Ljava/lang/String;

.field protected mListings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation
.end field

.field protected mListingsCount:I

.field protected mName:Ljava/lang/String;

.field protected mPrivateCollection:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZIJ)V
    .registers 8
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "privateCollection"    # Z
    .param p5, "listingsCount"    # I
    .param p6, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIJ)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_Collection;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/airbnb/android/models/_Collection;->mListings:Ljava/util/List;

    .line 24
    iput-object p2, p0, Lcom/airbnb/android/models/_Collection;->mImageUrl:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/airbnb/android/models/_Collection;->mName:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lcom/airbnb/android/models/_Collection;->mPrivateCollection:Z

    .line 27
    iput p5, p0, Lcom/airbnb/android/models/_Collection;->mListingsCount:I

    .line 28
    iput-wide p6, p0, Lcom/airbnb/android/models/_Collection;->mId:J

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/airbnb/android/models/_Collection;->mId:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/models/_Collection;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getListings()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/models/_Collection;->mListings:Ljava/util/List;

    return-object v0
.end method

.method public getListingsCount()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/airbnb/android/models/_Collection;->mListingsCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/models/_Collection;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isPrivateCollection()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/airbnb/android/models/_Collection;->mPrivateCollection:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 109
    sget-object v1, Lcom/airbnb/android/models/Listing;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Collection;->mListings:Ljava/util/List;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Collection;->mImageUrl:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_Collection;->mName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 113
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_Collection;->mPrivateCollection:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_Collection;->mListingsCount:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_Collection;->mId:J

    .line 116
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/airbnb/android/models/_Collection;->mId:J

    .line 92
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "image_url"
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/android/models/_Collection;->mImageUrl:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setListingsCount(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listings_count"
    .end annotation

    .prologue
    .line 80
    iput p1, p0, Lcom/airbnb/android/models/_Collection;->mListingsCount:I

    .line 81
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/models/_Collection;->mName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPrivateCollection(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "private"
    .end annotation

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/airbnb/android/models/_Collection;->mPrivateCollection:Z

    .line 70
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/android/models/_Collection;->mListings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 101
    iget-object v0, p0, Lcom/airbnb/android/models/_Collection;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/airbnb/android/models/_Collection;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/airbnb/android/models/_Collection;->mPrivateCollection:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 104
    iget v0, p0, Lcom/airbnb/android/models/_Collection;->mListingsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget-wide v0, p0, Lcom/airbnb/android/models/_Collection;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 106
    return-void
.end method
