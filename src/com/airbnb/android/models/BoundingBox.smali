.class public Lcom/airbnb/android/models/BoundingBox;
.super Lcom/airbnb/android/models/_BoundingBox;
.source "BoundingBox.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/BoundingBox;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/BoundingBox$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/BoundingBox$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/BoundingBox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_BoundingBox;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_BoundingBox;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 24
    if-ne p0, p1, :cond_5

    .line 34
    :cond_4
    :goto_4
    return v1

    .line 25
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

    .line 27
    check-cast v0, Lcom/airbnb/android/models/BoundingBox;

    .line 29
    .local v0, "that":Lcom/airbnb/android/models/BoundingBox;
    iget-wide v3, v0, Lcom/airbnb/android/models/BoundingBox;->mNeLat:D

    iget-wide v5, p0, Lcom/airbnb/android/models/BoundingBox;->mNeLat:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_22

    move v1, v2

    goto :goto_4

    .line 30
    :cond_22
    iget-wide v3, v0, Lcom/airbnb/android/models/BoundingBox;->mNeLng:D

    iget-wide v5, p0, Lcom/airbnb/android/models/BoundingBox;->mNeLng:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2e

    move v1, v2

    goto :goto_4

    .line 31
    :cond_2e
    iget-wide v3, v0, Lcom/airbnb/android/models/BoundingBox;->mSwLat:D

    iget-wide v5, p0, Lcom/airbnb/android/models/BoundingBox;->mSwLat:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_3a

    move v1, v2

    goto :goto_4

    .line 32
    :cond_3a
    iget-wide v3, v0, Lcom/airbnb/android/models/BoundingBox;->mSwLng:D

    iget-wide v5, p0, Lcom/airbnb/android/models/BoundingBox;->mSwLng:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4
.end method

.method public bridge synthetic getNeLat()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_BoundingBox;->getNeLat()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getNeLng()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_BoundingBox;->getNeLng()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSwLat()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_BoundingBox;->getSwLat()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSwLng()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_BoundingBox;->getSwLng()D

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .prologue
    const/16 v6, 0x20

    .line 41
    iget-wide v3, p0, Lcom/airbnb/android/models/BoundingBox;->mNeLat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 42
    .local v1, "temp":J
    ushr-long v3, v1, v6

    xor-long/2addr v3, v1

    long-to-int v0, v3

    .line 43
    .local v0, "result":I
    iget-wide v3, p0, Lcom/airbnb/android/models/BoundingBox;->mNeLng:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 44
    mul-int/lit8 v3, v0, 0x1f

    ushr-long v4, v1, v6

    xor-long/2addr v4, v1

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 45
    iget-wide v3, p0, Lcom/airbnb/android/models/BoundingBox;->mSwLat:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 46
    mul-int/lit8 v3, v0, 0x1f

    ushr-long v4, v1, v6

    xor-long/2addr v4, v1

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 47
    iget-wide v3, p0, Lcom/airbnb/android/models/BoundingBox;->mSwLng:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 48
    mul-int/lit8 v3, v0, 0x1f

    ushr-long v4, v1, v6

    xor-long/2addr v4, v1

    long-to-int v4, v4

    add-int v0, v3, v4

    .line 49
    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_BoundingBox;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setNeLat(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_BoundingBox;->setNeLat(D)V

    return-void
.end method

.method public bridge synthetic setNeLng(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_BoundingBox;->setNeLng(D)V

    return-void
.end method

.method public bridge synthetic setSwLat(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_BoundingBox;->setSwLat(D)V

    return-void
.end method

.method public bridge synthetic setSwLng(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_BoundingBox;->setSwLng(D)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_BoundingBox;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
