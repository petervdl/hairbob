.class public Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;
.super Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;
.source "SecondaryArrivalMethod.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDestination()Lcom/airbnb/android/models/arrivalAssistant/Destination;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->getDestination()Lcom/airbnb/android/models/arrivalAssistant/Destination;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDistance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->getDistance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->getDuration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDurationSeconds()J
    .registers 3

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->getDurationSeconds()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getInstructions()Ljava/util/List;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->getInstructions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPolyline()Ljava/util/List;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->getPolyline()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isArrived()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->isArrived()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setArrived(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->setArrived(Z)V

    return-void
.end method

.method public bridge synthetic setDestination(Lcom/airbnb/android/models/arrivalAssistant/Destination;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/arrivalAssistant/Destination;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->setDestination(Lcom/airbnb/android/models/arrivalAssistant/Destination;)V

    return-void
.end method

.method public bridge synthetic setDistance(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->setDistance(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDuration(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->setDuration(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDurationSeconds(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->setDurationSeconds(J)V

    return-void
.end method

.method public bridge synthetic setInstructions(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->setInstructions(Ljava/util/List;)V

    return-void
.end method

.method public setPolyline([[D)V
    .registers 11
    .param p1, "value"    # [[D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "polyline"
    .end annotation

    .prologue
    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;->mPolyline:Ljava/util/List;

    .line 17
    move-object v0, p1

    .local v0, "arr$":[[D
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_a
    if-ge v1, v3, :cond_25

    aget-object v4, v0, v1

    .line 18
    .local v4, "pair":[D
    array-length v5, v4

    const/4 v6, 0x2

    if-lt v5, v6, :cond_22

    .line 19
    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v5, 0x0

    aget-wide v5, v4, v5

    const/4 v7, 0x1

    aget-wide v7, v4, v7

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 20
    .local v2, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v5, p0, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;->mPolyline:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .end local v2    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 23
    .end local v4    # "pair":[D
    :cond_25
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
