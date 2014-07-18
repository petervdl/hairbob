.class public Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;
.super Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;
.source "ArrivalPlan.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getArrivalAirport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getArrivalAirport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getArrivalHour()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getArrivalHour()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getArrivalMinute()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getArrivalMinute()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCarrierCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getCarrierCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCarrierName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getCarrierName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCarrierRoute()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getCarrierRoute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConfirmationCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getConfirmationCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDepartureAirport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getDepartureAirport()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDepartureDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getDepartureDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGuestLat()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getGuestLat()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getGuestLng()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getGuestLng()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHostingId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getHostingId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryArrival()Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getSecondaryArrival()Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryTransportationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getSecondaryTransportationType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransportationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getTransportationType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->getUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public guestStartedTracking()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLat()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getGuestLng()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hasEstimatedArrivalTime()Z
    .registers 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasFlightDetails()Z
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;->getFlight()Lcom/airbnb/android/models/arrivalAssistant/Flight;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public bridge synthetic isArrived()Z
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->isArrived()Z

    move-result v0

    return v0
.end method

.method public isNew()Z
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/airbnb/android/models/arrivalAssistant/ArrivalPlan;->getTransportationType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setArrivalAirport(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setArrivalAirport(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setArrivalHour(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setArrivalHour(I)V

    return-void
.end method

.method public bridge synthetic setArrivalMinute(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setArrivalMinute(I)V

    return-void
.end method

.method public bridge synthetic setArrived(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setArrived(Z)V

    return-void
.end method

.method public bridge synthetic setCarrierCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setCarrierCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCarrierName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setCarrierName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCarrierRoute(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setCarrierRoute(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setConfirmationCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setConfirmationCode(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDepartureAirport(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setDepartureAirport(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDepartureDate(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setDepartureDate(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setEtaLocalComponents(Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setEtaLocalComponents(Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;)V

    return-void
.end method

.method public bridge synthetic setGuestLat(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setGuestLat(D)V

    return-void
.end method

.method public bridge synthetic setGuestLng(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setGuestLng(D)V

    return-void
.end method

.method public bridge synthetic setHostingId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setHostingId(J)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setId(J)V

    return-void
.end method

.method public bridge synthetic setPrimaryArrival(Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setPrimaryArrival(Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;)V

    return-void
.end method

.method public bridge synthetic setSecondaryArrival(Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setSecondaryArrival(Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;)V

    return-void
.end method

.method public bridge synthetic setSecondaryTransportationType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setSecondaryTransportationType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setTransportationType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setTransportationType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setUserId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->setUserId(J)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
