.class abstract Lcom/airbnb/android/models/arrivalAssistant/_Airport;
.super Ljava/lang/Object;
.source "_Airport.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCode:Ljava/lang/String;

.field protected mLat:F

.field protected mLng:F

.field protected mLocation:Ljava/lang/String;

.field protected mTimezone:Ljava/lang/String;

.field protected mUtcOffset:I


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFI)V
    .registers 7
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "timezone"    # Ljava/lang/String;
    .param p4, "lat"    # F
    .param p5, "lng"    # F
    .param p6, "utcOffset"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Airport;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mCode:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLocation:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mTimezone:Ljava/lang/String;

    .line 25
    iput p4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLat:F

    .line 26
    iput p5, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLng:F

    .line 27
    iput p6, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mUtcOffset:I

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

.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()F
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLat:F

    return v0
.end method

.method public getLng()F
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLng:F

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTimezone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getUtcOffset()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mUtcOffset:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mCode:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLocation:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mTimezone:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLat:F

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLng:F

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mUtcOffset:I

    .line 120
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "code"
    .end annotation

    .prologue
    .line 41
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mCode:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLat(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lat"
    .end annotation

    .prologue
    .line 74
    iput p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLat:F

    .line 75
    return-void
.end method

.method public setLng(F)V
    .registers 2
    .param p1, "value"    # F
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lng"
    .end annotation

    .prologue
    .line 85
    iput p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLng:F

    .line 86
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "location"
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLocation:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setTimezone(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "timezone"
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mTimezone:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setUtcOffset(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "utc_offset"
    .end annotation

    .prologue
    .line 96
    iput p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mUtcOffset:I

    .line 97
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mTimezone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLat:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 109
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mLng:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 110
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airport;->mUtcOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void
.end method
