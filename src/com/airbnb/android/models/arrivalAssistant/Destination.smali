.class public Lcom/airbnb/android/models/arrivalAssistant/Destination;
.super Lcom/airbnb/android/models/arrivalAssistant/_Destination;
.source "Destination.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/arrivalAssistant/Destination;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/Destination$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/arrivalAssistant/Destination$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Destination;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->getCity()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFullAddress()Ljava/util/List;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->getFullAddress()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLat()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->getLat()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLng()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->getLng()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->getState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->setCity(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->setCountry(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setFullAddress(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->setFullAddress(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setLat(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->setLat(D)V

    return-void
.end method

.method public bridge synthetic setLng(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->setLng(D)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->setState(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
