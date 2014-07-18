.class abstract Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;
.super Ljava/lang/Object;
.source "_FlightTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mDate:Ljava/lang/String;

.field protected mDay:Ljava/lang/String;

.field protected mTime:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "day"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "time"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDay:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDate:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mTime:Ljava/lang/String;

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

.method public getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public getDay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDay:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mTime:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDay:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDate:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mTime:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "date"
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDate:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "day"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDay:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "time"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mTime:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mDate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->mTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
