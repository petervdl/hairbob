.class abstract Lcom/airbnb/android/models/arrivalAssistant/_Destination;
.super Ljava/lang/Object;
.source "_Destination.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCity:Ljava/lang/String;

.field protected mCountry:Ljava/lang/String;

.field protected mFullAddress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLat:D

.field protected mLng:D

.field protected mName:Ljava/lang/String;

.field protected mState:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V
    .registers 10
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "city"    # Ljava/lang/String;
    .param p4, "state"    # Ljava/lang/String;
    .param p5, "country"    # Ljava/lang/String;
    .param p6, "lat"    # D
    .param p8, "lng"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "DD)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "fullAddress":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/arrivalAssistant/_Destination;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mFullAddress:Ljava/util/List;

    .line 26
    iput-object p2, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCity:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mState:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCountry:Ljava/lang/String;

    .line 30
    iput-wide p6, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLat:D

    .line 31
    iput-wide p8, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLng:D

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAddress()Ljava/util/List;
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
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mFullAddress:Ljava/util/List;

    return-object v0
.end method

.method public getLat()D
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLat:D

    return-wide v0
.end method

.method public getLng()D
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLng:D

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mFullAddress:Ljava/util/List;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCity:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mState:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCountry:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLat:D

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLng:D

    .line 137
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "city"
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCity:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "country"
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCountry:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setFullAddress(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "full_address"
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
    .line 45
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mFullAddress:Ljava/util/List;

    .line 46
    return-void
.end method

.method public setLat(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lat"
    .end annotation

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLat:D

    .line 101
    return-void
.end method

.method public setLng(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "lng"
    .end annotation

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLng:D

    .line 112
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "name"
    .end annotation

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "state"
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mState:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mFullAddress:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 121
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 126
    iget-wide v0, p0, Lcom/airbnb/android/models/arrivalAssistant/_Destination;->mLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 127
    return-void
.end method
