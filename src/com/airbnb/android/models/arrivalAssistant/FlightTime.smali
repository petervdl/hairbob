.class public Lcom/airbnb/android/models/arrivalAssistant/FlightTime;
.super Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;
.source "FlightTime.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/arrivalAssistant/FlightTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/FlightTime$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/arrivalAssistant/FlightTime$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/FlightTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->getDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->getDay()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->getTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->setDate(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDay(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->setDay(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->setTime(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_FlightTime;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method