.class abstract Lcom/airbnb/android/models/_TripProvider;
.super Ljava/lang/Object;
.source "_TripProvider.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCategory:Ljava/lang/String;

.field protected mDescription:Ljava/lang/String;

.field protected mId:J

.field protected mName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "id"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/_TripProvider;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/models/_TripProvider;->mName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/models/_TripProvider;->mCategory:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/airbnb/android/models/_TripProvider;->mDescription:Ljava/lang/String;

    .line 23
    iput-wide p4, p0, Lcom/airbnb/android/models/_TripProvider;->mId:J

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProvider;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProvider;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripProvider;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TripProvider;->mName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TripProvider;->mCategory:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_TripProvider;->mDescription:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_TripProvider;->mId:J

    .line 90
    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "category"
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/models/_TripProvider;->mCategory:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "description"
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/airbnb/android/models/_TripProvider;->mDescription:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/airbnb/android/models/_TripProvider;->mId:J

    .line 71
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/models/_TripProvider;->mName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProvider;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProvider;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/models/_TripProvider;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-wide v0, p0, Lcom/airbnb/android/models/_TripProvider;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    return-void
.end method
