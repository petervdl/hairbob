.class abstract Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;
.super Ljava/lang/Object;
.source "_SecurityCheckPhoneNumber.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mId:J

.field protected mLastFourDigits:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .registers 4
    .param p1, "lastFourDigits"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mLastFourDigits:Ljava/lang/String;

    .line 19
    iput-wide p2, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mId:J

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mId:J

    return-wide v0
.end method

.method public getLastFourDigits()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mLastFourDigits:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mLastFourDigits:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mId:J

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
    .line 44
    iput-wide p1, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mId:J

    .line 45
    return-void
.end method

.method public setLastFourDigits(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "last_four_digits"
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mLastFourDigits:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mLastFourDigits:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-wide v0, p0, Lcom/airbnb/android/models/_SecurityCheckPhoneNumber;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    return-void
.end method
