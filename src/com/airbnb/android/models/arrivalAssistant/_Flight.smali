.class abstract Lcom/airbnb/android/models/arrivalAssistant/_Flight;
.super Ljava/lang/Object;
.source "_Flight.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAirline:Ljava/lang/String;

.field protected mArrivalTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

.field protected mArrivalTimeUtc:Ljava/util/Date;

.field protected mCode:Ljava/lang/String;

.field protected mDelay:Ljava/lang/String;

.field protected mDepartureTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

.field protected mDepartureTimeUtc:Ljava/util/Date;

.field protected mDuration:Ljava/lang/String;

.field protected mStatus:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcom/airbnb/android/models/arrivalAssistant/FlightTime;Lcom/airbnb/android/models/arrivalAssistant/FlightTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "departureTimeUtc"    # Ljava/util/Date;
    .param p2, "arrivalTimeUtc"    # Ljava/util/Date;
    .param p3, "departureTimeLocal"    # Lcom/airbnb/android/models/arrivalAssistant/FlightTime;
    .param p4, "arrivalTimeLocal"    # Lcom/airbnb/android/models/arrivalAssistant/FlightTime;
    .param p5, "code"    # Ljava/lang/String;
    .param p6, "airline"    # Ljava/lang/String;
    .param p7, "duration"    # Ljava/lang/String;
    .param p8, "status"    # Ljava/lang/String;
    .param p9, "delay"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Flight;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeUtc:Ljava/util/Date;

    .line 27
    iput-object p2, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeUtc:Ljava/util/Date;

    .line 28
    iput-object p3, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    .line 29
    iput-object p4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    .line 30
    iput-object p5, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mCode:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mAirline:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDuration:Ljava/lang/String;

    .line 33
    iput-object p8, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mStatus:Ljava/lang/String;

    .line 34
    iput-object p9, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDelay:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getAirline()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mAirline:Ljava/lang/String;

    return-object v0
.end method

.method public getArrivalTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    return-object v0
.end method

.method public getArrivalTimeUtc()Ljava/util/Date;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeUtc:Ljava/util/Date;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDelay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDelay:Ljava/lang/String;

    return-object v0
.end method

.method public getDepartureTimeLocal()Lcom/airbnb/android/models/arrivalAssistant/FlightTime;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    return-object v0
.end method

.method public getDepartureTimeUtc()Ljava/util/Date;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeUtc:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/32 v5, -0x80000000

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 158
    .local v0, "date0":J
    cmp-long v4, v0, v5

    if-eqz v4, :cond_12

    .line 159
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeUtc:Ljava/util/Date;

    .line 161
    :cond_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 162
    .local v2, "date1":J
    cmp-long v4, v2, v5

    if-eqz v4, :cond_21

    .line 163
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeUtc:Ljava/util/Date;

    .line 165
    :cond_21
    const-class v4, Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    iput-object v4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    .line 166
    const-class v4, Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    iput-object v4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mCode:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mAirline:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDuration:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mStatus:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDelay:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setAirline(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "airline"
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mAirline:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setArrivalTimeLocal(Lcom/airbnb/android/models/arrivalAssistant/FlightTime;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/arrivalAssistant/FlightTime;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrival_time_local"
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    .line 82
    return-void
.end method

.method public setArrivalTimeUtc(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrival_time_utc"
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeUtc:Ljava/util/Date;

    .line 60
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "code"
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mCode:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setDelay(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "delay"
    .end annotation

    .prologue
    .line 136
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDelay:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setDepartureTimeLocal(Lcom/airbnb/android/models/arrivalAssistant/FlightTime;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/arrivalAssistant/FlightTime;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "departure_time_local"
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    .line 71
    return-void
.end method

.method public setDepartureTimeUtc(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "departure_time_utc"
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeUtc:Ljava/util/Date;

    .line 49
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDuration:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 125
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mStatus:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeUtc:Ljava/util/Date;

    if-nez v0, :cond_37

    move-wide v0, v2

    :goto_9
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 146
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeUtc:Ljava/util/Date;

    if-nez v0, :cond_3e

    :goto_10
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeLocal:Lcom/airbnb/android/models/arrivalAssistant/FlightTime;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mAirline:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDuration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDelay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return-void

    .line 145
    :cond_37
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mDepartureTimeUtc:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_9

    .line 146
    :cond_3e
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Flight;->mArrivalTimeUtc:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_10
.end method
