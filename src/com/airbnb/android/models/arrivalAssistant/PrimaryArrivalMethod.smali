.class public Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;
.super Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;
.source "PrimaryArrivalMethod.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->getArrivalAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->getDepartureAirport()Lcom/airbnb/android/models/arrivalAssistant/Airport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setArrivalAirport(Lcom/airbnb/android/models/arrivalAssistant/Airport;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/arrivalAssistant/Airport;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->setArrivalAirport(Lcom/airbnb/android/models/arrivalAssistant/Airport;)V

    return-void
.end method

.method public bridge synthetic setDepartureAirport(Lcom/airbnb/android/models/arrivalAssistant/Airport;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/arrivalAssistant/Airport;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->setDepartureAirport(Lcom/airbnb/android/models/arrivalAssistant/Airport;)V

    return-void
.end method

.method public bridge synthetic setFlight(Lcom/airbnb/android/models/arrivalAssistant/Flight;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/arrivalAssistant/Flight;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->setFlight(Lcom/airbnb/android/models/arrivalAssistant/Flight;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_PrimaryArrivalMethod;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
