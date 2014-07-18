.class public Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;
.super Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;
.source "EstimatedArrivalTime.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/EstimatedArrivalTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFormattedString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHour()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;->getHour()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMinute()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;->getMinute()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setFormattedString(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;->setFormattedString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setHour(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;->setHour(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMinute(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;->setMinute(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_EstimatedArrivalTime;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
