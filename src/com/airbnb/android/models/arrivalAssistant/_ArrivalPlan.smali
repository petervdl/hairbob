.class abstract Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;
.super Ljava/lang/Object;
.source "_ArrivalPlan.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mArrivalAirport:Ljava/lang/String;

.field protected mArrivalHour:I

.field protected mArrivalMinute:I

.field protected mArrived:Z

.field protected mCarrierCode:Ljava/lang/String;

.field protected mCarrierName:Ljava/lang/String;

.field protected mCarrierRoute:Ljava/lang/String;

.field protected mConfirmationCode:Ljava/lang/String;

.field protected mDepartureAirport:Ljava/lang/String;

.field protected mDepartureDate:Ljava/util/Date;

.field protected mEtaLocalComponents:Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

.field protected mGuestLat:D

.field protected mGuestLng:D

.field protected mHostingId:J

.field protected mId:J

.field protected mPrimaryArrival:Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

.field protected mSecondaryArrival:Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

.field protected mSecondaryTransportationType:Ljava/lang/String;

.field protected mTransportationType:Ljava/lang/String;

.field protected mUserId:J


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZDDIIJJJ)V
    .registers 28
    .param p1, "departureDate"    # Ljava/util/Date;
    .param p2, "etaLocalComponents"    # Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;
    .param p3, "primaryArrival"    # Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;
    .param p4, "secondaryArrival"    # Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;
    .param p5, "confirmationCode"    # Ljava/lang/String;
    .param p6, "carrierCode"    # Ljava/lang/String;
    .param p7, "carrierName"    # Ljava/lang/String;
    .param p8, "carrierRoute"    # Ljava/lang/String;
    .param p9, "transportationType"    # Ljava/lang/String;
    .param p10, "secondaryTransportationType"    # Ljava/lang/String;
    .param p11, "departureAirport"    # Ljava/lang/String;
    .param p12, "arrivalAirport"    # Ljava/lang/String;
    .param p13, "arrived"    # Z
    .param p14, "guestLat"    # D
    .param p16, "guestLng"    # D
    .param p18, "arrivalHour"    # I
    .param p19, "arrivalMinute"    # I
    .param p20, "id"    # J
    .param p22, "hostingId"    # J
    .param p24, "userId"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureDate:Ljava/util/Date;

    .line 38
    iput-object p2, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mEtaLocalComponents:Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    .line 39
    iput-object p3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mPrimaryArrival:Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    .line 40
    iput-object p4, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryArrival:Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    .line 41
    iput-object p5, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mConfirmationCode:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierCode:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierName:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierRoute:Ljava/lang/String;

    .line 45
    iput-object p9, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mTransportationType:Ljava/lang/String;

    .line 46
    iput-object p10, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryTransportationType:Ljava/lang/String;

    .line 47
    iput-object p11, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureAirport:Ljava/lang/String;

    .line 48
    iput-object p12, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalAirport:Ljava/lang/String;

    .line 49
    iput-boolean p13, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrived:Z

    .line 50
    move-wide/from16 v0, p14

    iput-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLat:D

    .line 51
    move-wide/from16 v0, p16

    iput-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLng:D

    .line 52
    move/from16 v0, p18

    iput v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalHour:I

    .line 53
    move/from16 v0, p19

    iput v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalMinute:I

    .line 54
    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mId:J

    .line 55
    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mHostingId:J

    .line 56
    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mUserId:J

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public getArrivalAirport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalAirport:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalHour()I
    .registers 2

    .prologue
    .line 229
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalHour:I

    return v0
.end method

.method public getArrivalMinute()I
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalMinute:I

    return v0
.end method

.method public getCarrierCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierName:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierRoute()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierRoute:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmationCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mConfirmationCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureAirport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureAirport:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureDate:Ljava/util/Date;

    return-object v0
.end method

.method public getEtaLocalComponents()Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mEtaLocalComponents:Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    return-object v0
.end method

.method public getGuestLat()D
    .registers 3

    .prologue
    .line 207
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLat:D

    return-wide v0
.end method

.method public getGuestLng()D
    .registers 3

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLng:D

    return-wide v0
.end method

.method public getHostingId()J
    .registers 3

    .prologue
    .line 262
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mHostingId:J

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mId:J

    return-wide v0
.end method

.method public getPrimaryArrival()Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mPrimaryArrival:Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    return-object v0
.end method

.method public getSecondaryArrival()Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryArrival:Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    return-object v0
.end method

.method public getSecondaryTransportationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryTransportationType:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mTransportationType:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mUserId:J

    return-wide v0
.end method

.method public isArrived()Z
    .registers 2

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrived:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 312
    .local v1, "date0":J
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-eqz v3, :cond_12

    .line 313
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureDate:Ljava/util/Date;

    .line 315
    :cond_12
    const-class v3, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mEtaLocalComponents:Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    .line 316
    const-class v3, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mPrimaryArrival:Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    .line 317
    const-class v3, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryArrival:Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mConfirmationCode:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierCode:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierName:Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierRoute:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mTransportationType:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryTransportationType:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureAirport:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalAirport:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 327
    .local v0, "bools":[Z
    const/4 v3, 0x0

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrived:Z

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLat:D

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLng:D

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalHour:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalMinute:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mId:J

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mHostingId:J

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mUserId:J

    .line 335
    return-void
.end method

.method public setArrivalAirport(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrival_airport"
    .end annotation

    .prologue
    .line 191
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalAirport:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setArrivalHour(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrival_hour"
    .end annotation

    .prologue
    .line 235
    iput p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalHour:I

    .line 236
    return-void
.end method

.method public setArrivalMinute(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrival_minute"
    .end annotation

    .prologue
    .line 246
    iput p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalMinute:I

    .line 247
    return-void
.end method

.method public setArrived(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrived"
    .end annotation

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrived:Z

    .line 203
    return-void
.end method

.method public setCarrierCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "carrier_code"
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierCode:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCarrierName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "carrier_name"
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setCarrierRoute(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "carrier_route"
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierRoute:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setConfirmationCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "confirmation_code"
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mConfirmationCode:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setDepartureAirport(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "departure_airport"
    .end annotation

    .prologue
    .line 180
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureAirport:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setDepartureDate(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "departure_date"
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureDate:Ljava/util/Date;

    .line 71
    return-void
.end method

.method public setEtaLocalComponents(Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "eta_local_components"
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mEtaLocalComponents:Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    .line 82
    return-void
.end method

.method public setGuestLat(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "guest_lat"
    .end annotation

    .prologue
    .line 213
    iput-wide p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLat:D

    .line 214
    return-void
.end method

.method public setGuestLng(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "guest_lng"
    .end annotation

    .prologue
    .line 224
    iput-wide p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLng:D

    .line 225
    return-void
.end method

.method public setHostingId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hosting_id"
    .end annotation

    .prologue
    .line 268
    iput-wide p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mHostingId:J

    .line 269
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 257
    iput-wide p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mId:J

    .line 258
    return-void
.end method

.method public setPrimaryArrival(Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "primary_arrival"
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mPrimaryArrival:Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    .line 93
    return-void
.end method

.method public setSecondaryArrival(Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "secondary_arrival"
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryArrival:Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    .line 104
    return-void
.end method

.method public setSecondaryTransportationType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "secondary_transportation_type"
    .end annotation

    .prologue
    .line 169
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryTransportationType:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setTransportationType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "transportation_type"
    .end annotation

    .prologue
    .line 158
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mTransportationType:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setUserId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_id"
    .end annotation

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mUserId:J

    .line 280
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureDate:Ljava/util/Date;

    if-nez v0, :cond_70

    const-wide/32 v0, -0x80000000

    :goto_8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mEtaLocalComponents:Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 290
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mPrimaryArrival:Lcom/airbnb/android/models/arrivalAssistant/PrimaryArrivalMethod;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 291
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryArrival:Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 292
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mConfirmationCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mCarrierRoute:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mTransportationType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mSecondaryTransportationType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureAirport:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalAirport:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrived:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 301
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 302
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mGuestLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 303
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mArrivalMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 306
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mHostingId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 307
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 308
    return-void

    .line 288
    :cond_70
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_ArrivalPlan;->mDepartureDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_8
.end method
