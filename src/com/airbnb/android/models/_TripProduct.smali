.class abstract Lcom/airbnb/android/models/_TripProduct;
.super Ljava/lang/Object;
.source "_TripProduct.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mDescription:Ljava/lang/String;

.field protected mId:J

.field protected mName:Ljava/lang/String;

.field protected mProviderType:Ljava/lang/String;

.field protected mTripProvider:Lcom/airbnb/android/models/TripProvider;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/TripProvider;J)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "providerType"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "tripProvider"    # Lcom/airbnb/android/models/TripProvider;
    .param p5, "id"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/airbnb/android/models/_TripProduct;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/airbnb/android/models/_TripProduct;->mName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/airbnb/android/models/_TripProduct;->mProviderType:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/airbnb/android/models/_TripProduct;->mDescription:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/airbnb/android/models/_TripProduct;->mTripProvider:Lcom/airbnb/android/models/TripProvider;

    .line 25
    iput-wide p5, p0, Lcom/airbnb/android/models/_TripProduct;->mId:J

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripProduct;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mProviderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTripProvider()Lcom/airbnb/android/models/TripProvider;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mTripProvider:Lcom/airbnb/android/models/TripProvider;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mName:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mProviderType:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mDescription:Ljava/lang/String;

    .line 103
    const-class v0, Lcom/airbnb/android/models/TripProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/TripProvider;

    iput-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mTripProvider:Lcom/airbnb/android/models/TripProvider;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_TripProduct;->mId:J

    .line 105
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/models/_TripProduct;->mDescription:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/airbnb/android/models/_TripProduct;->mId:J

    .line 84
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/airbnb/android/models/_TripProduct;->mName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setProviderType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "provider_type"
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/airbnb/android/models/_TripProduct;->mProviderType:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setTripProvider(Lcom/airbnb/android/models/TripProvider;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/TripProvider;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "trip_provider"
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/models/_TripProduct;->mTripProvider:Lcom/airbnb/android/models/TripProvider;

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mProviderType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProduct;->mTripProvider:Lcom/airbnb/android/models/TripProvider;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripProduct;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    return-void
.end method
