.class abstract Lcom/airbnb/android/models/_SearchGeography;
.super Ljava/lang/Object;
.source "_SearchGeography.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCountryCode:Ljava/lang/String;

.field protected mLat:D

.field protected mLng:D

.field protected mPrecision:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;DD)V
    .registers 7
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "precision"    # Ljava/lang/String;
    .param p3, "lat"    # D
    .param p5, "lng"    # D

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/_SearchGeography;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/models/_SearchGeography;->mCountryCode:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/models/_SearchGeography;->mPrecision:Ljava/lang/String;

    .line 22
    iput-wide p3, p0, Lcom/airbnb/android/models/_SearchGeography;->mLat:D

    .line 23
    iput-wide p5, p0, Lcom/airbnb/android/models/_SearchGeography;->mLng:D

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

.method public getCountryCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mLat:D

    return-wide v0
.end method

.method public getLng()D
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mLng:D

    return-wide v0
.end method

.method public getPrecision()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mPrecision:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mCountryCode:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mPrecision:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mLat:D

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mLng:D

    .line 90
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "country_code"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/models/_SearchGeography;->mCountryCode:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setLat(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lat"
    .end annotation

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/airbnb/android/models/_SearchGeography;->mLat:D

    .line 60
    return-void
.end method

.method public setLng(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lng"
    .end annotation

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/airbnb/android/models/_SearchGeography;->mLng:D

    .line 71
    return-void
.end method

.method public setPrecision(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "precision"
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/models/_SearchGeography;->mPrecision:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mPrecision:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-wide v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    iget-wide v0, p0, Lcom/airbnb/android/models/_SearchGeography;->mLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    return-void
.end method
