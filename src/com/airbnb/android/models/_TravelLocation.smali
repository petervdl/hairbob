.class abstract Lcom/airbnb/android/models/_TravelLocation;
.super Ljava/lang/Object;
.source "_TravelLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDescription:Ljava/lang/String;

.field protected mMedium_url:Ljava/lang/String;

.field protected mNum_listings:J

.field protected mPicture_url:Ljava/lang/String;

.field protected mSubtitle:Ljava/lang/String;

.field protected mThumbnail_url:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field protected mType:Ljava/lang/String;

.field protected mXl_picture_url:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "picture_url"    # Ljava/lang/String;
    .param p7, "thumbnail_url"    # Ljava/lang/String;
    .param p8, "medium_url"    # Ljava/lang/String;
    .param p9, "xl_picture_url"    # Ljava/lang/String;
    .param p10, "num_listings"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "attributes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_TravelLocation;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mAttributes:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lcom/airbnb/android/models/_TravelLocation;->mTitle:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/airbnb/android/models/_TravelLocation;->mSubtitle:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/airbnb/android/models/_TravelLocation;->mDescription:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/airbnb/android/models/_TravelLocation;->mType:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/airbnb/android/models/_TravelLocation;->mPicture_url:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/airbnb/android/models/_TravelLocation;->mThumbnail_url:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/airbnb/android/models/_TravelLocation;->mMedium_url:Ljava/lang/String;

    .line 36
    iput-object p9, p0, Lcom/airbnb/android/models/_TravelLocation;->mXl_picture_url:Ljava/lang/String;

    .line 37
    iput-wide p10, p0, Lcom/airbnb/android/models/_TravelLocation;->mNum_listings:J

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMedium_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mMedium_url:Ljava/lang/String;

    return-object v0
.end method

.method public getNum_listings()J
    .registers 3

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mNum_listings:J

    return-wide v0
.end method

.method public getPicture_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mPicture_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mThumbnail_url:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getXl_picture_url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mXl_picture_url:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mAttributes:Ljava/util/List;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mTitle:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mSubtitle:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mDescription:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mType:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mPicture_url:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mThumbnail_url:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mMedium_url:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mXl_picture_url:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mNum_listings:J

    .line 182
    return-void
.end method

.method public setAttributes(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "attributes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mAttributes:Ljava/util/List;

    .line 52
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mDescription:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setMedium_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "medium_url"
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mMedium_url:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setNum_listings(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "num_listings"
    .end annotation

    .prologue
    .line 150
    iput-wide p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mNum_listings:J

    .line 151
    return-void
.end method

.method public setPicture_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "picture_url"
    .end annotation

    .prologue
    .line 106
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mPicture_url:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "subtitle"
    .end annotation

    .prologue
    .line 73
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mSubtitle:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setThumbnail_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thumbnail_url"
    .end annotation

    .prologue
    .line 117
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mThumbnail_url:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "title"
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mTitle:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "location_item_type"
    .end annotation

    .prologue
    .line 95
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mType:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setXl_picture_url(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "xl_picture_url"
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/airbnb/android/models/_TravelLocation;->mXl_picture_url:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 159
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mAttributes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 160
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mPicture_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mThumbnail_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mMedium_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mXl_picture_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-wide v0, p0, Lcom/airbnb/android/models/_TravelLocation;->mNum_listings:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 169
    return-void
.end method
