.class abstract Lcom/airbnb/android/models/_BoundingBox;
.super Ljava/lang/Object;
.source "_BoundingBox.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mNeLat:D

.field protected mNeLng:D

.field protected mSwLat:D

.field protected mSwLng:D


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(DDDD)V
    .registers 9
    .param p1, "neLat"    # D
    .param p3, "neLng"    # D
    .param p5, "swLat"    # D
    .param p7, "swLng"    # D

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/_BoundingBox;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLat:D

    .line 21
    iput-wide p3, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLng:D

    .line 22
    iput-wide p5, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLat:D

    .line 23
    iput-wide p7, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLng:D

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getNeLat()D
    .registers 3

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLat:D

    return-wide v0
.end method

.method public getNeLng()D
    .registers 3

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLng:D

    return-wide v0
.end method

.method public getSwLat()D
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLat:D

    return-wide v0
.end method

.method public getSwLng()D
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLng:D

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLat:D

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLng:D

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLat:D

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLng:D

    .line 90
    return-void
.end method

.method public setNeLat(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ne_lat"
    .end annotation

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLat:D

    .line 38
    return-void
.end method

.method public setNeLng(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "ne_lng"
    .end annotation

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLng:D

    .line 49
    return-void
.end method

.method public setSwLat(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sw_lat"
    .end annotation

    .prologue
    .line 59
    iput-wide p1, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLat:D

    .line 60
    return-void
.end method

.method public setSwLng(D)V
    .registers 3
    .param p1, "value"    # D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "sw_lng"
    .end annotation

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLng:D

    .line 71
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 80
    iget-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mNeLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 81
    iget-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 82
    iget-wide v0, p0, Lcom/airbnb/android/models/_BoundingBox;->mSwLng:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 83
    return-void
.end method
