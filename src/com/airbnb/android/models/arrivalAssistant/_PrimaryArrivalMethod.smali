.class abstract Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;
.super Ljava/lang/Object;
.source "_PrimaryArrivalMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mArrivalAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

.field protected mDepartureAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

.field protected mFlight:Lcom/airbnb/android/models/arrivalAssistant/Flight;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/arrivalAssistant/Airport;Lcom/airbnb/android/models/arrivalAssistant/Airport;Lcom/airbnb/android/models/arrivalAssistant/Flight;)V
    .registers 4
    .param p1, "departureAirport"    # Lcom/airbnb/android/models/arrivalAssistant/Airport;
    .param p2, "arrivalAirport"    # Lcom/airbnb/android/models/arrivalAssistant/Airport;
    .param p3, "flight"    # Lcom/airbnb/android/models/arrivalAssistant/Flight;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mDepartureAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mArrivalAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    .line 21
    iput-object p3, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mFlight:Lcom/airbnb/android/models/arrivalAssistant/Flight;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mArrivalAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    return-object v0
.end method

.method public getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mDepartureAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    return-object v0
.end method

.method public getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mFlight:Lcom/airbnb/android/models/arrivalAssistant/Flight;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    const-class v0, Lcom/airbnb/android/models/arrivalAssistant/Airport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/Airport;

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mDepartureAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    .line 73
    const-class v0, Lcom/airbnb/android/models/arrivalAssistant/Airport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/Airport;

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mArrivalAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    .line 74
    const-class v0, Lcom/airbnb/android/models/arrivalAssistant/Flight;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/Flight;

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mFlight:Lcom/airbnb/android/models/arrivalAssistant/Flight;

    .line 75
    return-void
.end method

.method public setArrivalAirport(Lcom/airbnb/android/models/arrivalAssistant/Airport;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/arrivalAssistant/Airport;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrival_airport"
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mArrivalAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    .line 47
    return-void
.end method

.method public setDepartureAirport(Lcom/airbnb/android/models/arrivalAssistant/Airport;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/arrivalAssistant/Airport;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "departure_airport"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mDepartureAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    .line 36
    return-void
.end method

.method public setFlight(Lcom/airbnb/android/models/arrivalAssistant/Flight;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/arrivalAssistant/Flight;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "flight"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mFlight:Lcom/airbnb/android/models/arrivalAssistant/Flight;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mDepartureAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mArrivalAirport:Lcom/airbnb/android/models/arrivalAssistant/Airport;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->mFlight:Lcom/airbnb/android/models/arrivalAssistant/Flight;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    return-void
.end method
