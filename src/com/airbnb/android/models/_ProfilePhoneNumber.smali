.class abstract Lcom/airbnb/android/models/_ProfilePhoneNumber;
.super Ljava/lang/Object;
.source "_ProfilePhoneNumber.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCountry:Ljava/lang/String;

.field protected mId:J

.field protected mNumber:Ljava/lang/String;

.field protected mNumberFormatted:Ljava/lang/String;

.field protected mVerified:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 7
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "numberFormatted"    # Ljava/lang/String;
    .param p4, "verified"    # Z
    .param p5, "id"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/airbnb/android/models/_ProfilePhoneNumber;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mCountry:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumber:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumberFormatted:Ljava/lang/String;

    .line 24
    iput-boolean p4, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mVerified:Z

    .line 25
    iput-wide p5, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mId:J

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

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mId:J

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberFormatted()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumberFormatted:Ljava/lang/String;

    return-object v0
.end method

.method public isVerified()Z
    .registers 2

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mVerified:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mCountry:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumber:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumberFormatted:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 104
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mVerified:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mId:J

    .line 106
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "country"
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mCountry:Ljava/lang/String;

    .line 40
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
    iput-wide p1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mId:J

    .line 84
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "number"
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumber:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setNumberFormatted(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "number_formatted"
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumberFormatted:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setVerified(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "verified"
    .end annotation

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mVerified:Z

    .line 73
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mNumberFormatted:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mVerified:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 96
    iget-wide v0, p0, Lcom/airbnb/android/models/_ProfilePhoneNumber;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    return-void
.end method
