.class public Lcom/airbnb/android/models/AmenitiesItem;
.super Lcom/airbnb/android/models/_AmenitiesItem;
.source "AmenitiesItem.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/AmenitiesItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/airbnb/android/models/AmenitiesItem$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/AmenitiesItem$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/AmenitiesItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/airbnb/android/models/_AmenitiesItem;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/airbnb/android/models/Amenities;Z)V
    .registers 3
    .param p1, "amenity"    # Lcom/airbnb/android/models/Amenities;
    .param p2, "enabled"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/models/_AmenitiesItem;-><init>(Lcom/airbnb/android/models/Amenities;Z)V

    .line 14
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_AmenitiesItem;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAmenity()Lcom/airbnb/android/models/Amenities;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_AmenitiesItem;->getAmenity()Lcom/airbnb/android/models/Amenities;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEnabled()Z
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_AmenitiesItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_AmenitiesItem;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public toggleEnabled()V
    .registers 2

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/airbnb/android/models/AmenitiesItem;->mEnabled:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/airbnb/android/models/AmenitiesItem;->mEnabled:Z

    .line 18
    return-void

    .line 17
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_AmenitiesItem;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
