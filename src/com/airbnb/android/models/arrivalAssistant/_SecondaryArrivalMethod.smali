.class abstract Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;
.super Ljava/lang/Object;
.source "_SecondaryArrivalMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mArrived:Z

.field protected mDestination:Lcom/airbnb/android/models/arrivalAssistant/Destination;

.field protected mDistance:Ljava/lang/String;

.field protected mDuration:Ljava/lang/String;

.field protected mDurationSeconds:J

.field protected mInstructions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPolyline:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/arrivalAssistant/Destination;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .registers 9
    .param p1, "destination"    # Lcom/airbnb/android/models/arrivalAssistant/Destination;
    .param p4, "distance"    # Ljava/lang/String;
    .param p5, "duration"    # Ljava/lang/String;
    .param p6, "arrived"    # Z
    .param p7, "durationSeconds"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/arrivalAssistant/Destination;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJ)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "polyline":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    .local p3, "instructions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDestination:Lcom/airbnb/android/models/arrivalAssistant/Destination;

    .line 26
    iput-object p2, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mPolyline:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mInstructions:Ljava/util/List;

    .line 28
    iput-object p4, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDistance:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDuration:Ljava/lang/String;

    .line 30
    iput-boolean p6, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mArrived:Z

    .line 31
    iput-wide p7, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDurationSeconds:J

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public getDestination()Lcom/airbnb/android/models/arrivalAssistant/Destination;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDestination:Lcom/airbnb/android/models/arrivalAssistant/Destination;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDistance:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method public getDurationSeconds()J
    .registers 3

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDurationSeconds:J

    return-wide v0
.end method

.method public getInstructions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mInstructions:Ljava/util/List;

    return-object v0
.end method

.method public getPolyline()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mPolyline:Ljava/util/List;

    return-object v0
.end method

.method public isArrived()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mArrived:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 124
    const-class v1, Lcom/airbnb/android/models/arrivalAssistant/Destination;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/arrivalAssistant/Destination;

    iput-object v1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDestination:Lcom/airbnb/android/models/arrivalAssistant/Destination;

    .line 125
    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mPolyline:Ljava/util/List;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mInstructions:Ljava/util/List;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDistance:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDuration:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 130
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mArrived:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDurationSeconds:J

    .line 132
    return-void
.end method

.method public setArrived(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "arrived"
    .end annotation

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mArrived:Z

    .line 95
    return-void
.end method

.method public setDestination(Lcom/airbnb/android/models/arrivalAssistant/Destination;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/arrivalAssistant/Destination;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "destination"
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDestination:Lcom/airbnb/android/models/arrivalAssistant/Destination;

    .line 46
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "distance"
    .end annotation

    .prologue
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDistance:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration"
    .end annotation

    .prologue
    .line 83
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDuration:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setDurationSeconds(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "duration_seconds"
    .end annotation

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDurationSeconds:J

    .line 106
    return-void
.end method

.method public setInstructions(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "instructions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mInstructions:Ljava/util/List;

    .line 62
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDestination:Lcom/airbnb/android/models/arrivalAssistant/Destination;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mPolyline:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 116
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mInstructions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDistance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDuration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mArrived:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 120
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_SecondaryArrivalMethod;->mDurationSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 121
    return-void
.end method
