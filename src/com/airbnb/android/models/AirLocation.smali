.class public Lcom/airbnb/android/models/AirLocation;
.super Lcom/airbnb/android/models/_AirLocation;
.source "AirLocation.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/AirLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Lcom/airbnb/android/models/AirLocation$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/AirLocation$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/AirLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/airbnb/android/models/_AirLocation;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_AirLocation;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    if-ne p0, p1, :cond_5

    .line 51
    :cond_4
    :goto_4
    return v1

    .line 40
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/airbnb/android/models/AirLocation;

    .line 44
    .local v0, "that":Lcom/airbnb/android/models/AirLocation;
    iget-object v3, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    iget-object v4, v0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/BoundingBox;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 45
    goto :goto_4

    .line 44
    :cond_26
    iget-object v3, v0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    if-nez v3, :cond_24

    .line 46
    :cond_2a
    iget-object v3, p0, Lcom/airbnb/android/models/AirLocation;->mDisplayName:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/airbnb/android/models/AirLocation;->mDisplayName:Ljava/lang/String;

    iget-object v4, v0, Lcom/airbnb/android/models/AirLocation;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_38
    move v1, v2

    .line 47
    goto :goto_4

    .line 46
    :cond_3a
    iget-object v3, v0, Lcom/airbnb/android/models/AirLocation;->mDisplayName:Ljava/lang/String;

    if-nez v3, :cond_38

    .line 48
    :cond_3e
    iget-object v3, p0, Lcom/airbnb/android/models/AirLocation;->mSearchTerm:Ljava/lang/String;

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/airbnb/android/models/AirLocation;->mSearchTerm:Ljava/lang/String;

    iget-object v4, v0, Lcom/airbnb/android/models/AirLocation;->mSearchTerm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_4c
    move v1, v2

    .line 49
    goto :goto_4

    .line 48
    :cond_4e
    iget-object v3, v0, Lcom/airbnb/android/models/AirLocation;->mSearchTerm:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_4c
.end method

.method public bridge synthetic getBoundingBox()Lcom/airbnb/android/models/BoundingBox;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_AirLocation;->getBoundingBox()Lcom/airbnb/android/models/BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;
    .registers 7

    .prologue
    .line 13
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v2}, Lcom/airbnb/android/models/BoundingBox;->getSwLat()D

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v4}, Lcom/airbnb/android/models/BoundingBox;->getSwLng()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 14
    .local v1, "southWest":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v2}, Lcom/airbnb/android/models/BoundingBox;->getNeLat()D

    move-result-wide v2

    iget-object v4, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v4}, Lcom/airbnb/android/models/BoundingBox;->getNeLng()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 15
    .local v0, "northEast":Lcom/google/android/gms/maps/model/LatLng;
    new-instance v2, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    return-object v2
.end method

.method public getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .registers 11

    .prologue
    const-wide/high16 v8, 0x4000000000000000L

    .line 19
    iget-object v4, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v4}, Lcom/airbnb/android/models/BoundingBox;->getNeLat()D

    move-result-wide v4

    iget-object v6, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v6}, Lcom/airbnb/android/models/BoundingBox;->getSwLat()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double v0, v4, v8

    .line 20
    .local v0, "centerLat":D
    iget-object v4, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v4}, Lcom/airbnb/android/models/BoundingBox;->getNeLng()D

    move-result-wide v4

    iget-object v6, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v6}, Lcom/airbnb/android/models/BoundingBox;->getSwLng()D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double v2, v4, v8

    .line 21
    .local v2, "centerLng":D
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v4
.end method

.method public bridge synthetic getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_AirLocation;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSearchTerm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/airbnb/android/models/_AirLocation;->getSearchTerm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v2, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/airbnb/android/models/AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v2}, Lcom/airbnb/android/models/BoundingBox;->hashCode()I

    move-result v0

    .line 57
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/airbnb/android/models/AirLocation;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/airbnb/android/models/AirLocation;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int v0, v3, v2

    .line 58
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/airbnb/android/models/AirLocation;->mSearchTerm:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v1, p0, Lcom/airbnb/android/models/AirLocation;->mSearchTerm:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_25
    add-int v0, v2, v1

    .line 59
    return v0

    .end local v0    # "result":I
    :cond_28
    move v0, v1

    .line 56
    goto :goto_b

    .restart local v0    # "result":I
    :cond_2a
    move v2, v1

    .line 57
    goto :goto_17
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AirLocation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setBoundingBox(Lcom/airbnb/android/models/BoundingBox;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/BoundingBox;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AirLocation;->setBoundingBox(Lcom/airbnb/android/models/BoundingBox;)V

    return-void
.end method

.method public bridge synthetic setDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AirLocation;->setDisplayName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSearchTerm(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AirLocation;->setSearchTerm(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_AirLocation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
