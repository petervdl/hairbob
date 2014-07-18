.class abstract Lcom/airbnb/android/models/arrivalAssistant/_Airline;
.super Ljava/lang/Object;
.source "_Airline.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAirline:Ljava/lang/String;

.field protected mCallSign:Ljava/lang/String;

.field protected mIata:Ljava/lang/String;

.field protected mIcao:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "iata"    # Ljava/lang/String;
    .param p2, "icao"    # Ljava/lang/String;
    .param p3, "airline"    # Ljava/lang/String;
    .param p4, "callSign"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Airline;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIata:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIcao:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mAirline:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mCallSign:Ljava/lang/String;

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

.method public getAirline()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mAirline:Ljava/lang/String;

    return-object v0
.end method

.method public getCallSign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mCallSign:Ljava/lang/String;

    return-object v0
.end method

.method public getIata()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIata:Ljava/lang/String;

    return-object v0
.end method

.method public getIcao()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIcao:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIata:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIcao:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mAirline:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mCallSign:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setAirline(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "airline"
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mAirline:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setCallSign(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "call_sign"
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mCallSign:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setIata(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "iata"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIata:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setIcao(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "icao"
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIcao:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIata:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mIcao:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mAirline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Airline;->mCallSign:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return-void
.end method
