.class public Lcom/airbnb/android/models/arrivalAssistant/Flight;
.super Lcom/airbnb/android/models/arrivalAssistant/_Flight;
.source "Flight.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/arrivalAssistant/Flight;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/Flight$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/arrivalAssistant/Flight$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Flight;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAirline()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->getAirline()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getArrivalTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->getArrivalTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getArrivalTimeUtc()Ljava/util/Date;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->getArrivalTimeUtc()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDelay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->getDelay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDepartureTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->getDepartureTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDepartureTimeUtc()Ljava/util/Date;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->getDepartureTimeUtc()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->getDuration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->getStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAirline(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->setAirline(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setArrivalTimeLocal(Lcom/airbnb/android/models/arrivalAssistant/FlightTime;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->setArrivalTimeLocal(Lcom/airbnb/android/models/arrivalAssistant/FlightTime;)V

    return-void
.end method

.method public bridge synthetic setArrivalTimeUtc(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->setArrivalTimeUtc(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->setCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDelay(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->setDelay(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDepartureTimeLocal(Lcom/airbnb/android/models/arrivalAssistant/FlightTime;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->setDepartureTimeLocal(Lcom/airbnb/android/models/arrivalAssistant/FlightTime;)V

    return-void
.end method

.method public bridge synthetic setDepartureTimeUtc(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->setDepartureTimeUtc(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setDuration(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->setDuration(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
