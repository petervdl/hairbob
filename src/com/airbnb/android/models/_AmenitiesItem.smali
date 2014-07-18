.class abstract Lcom/airbnb/android/models/_AmenitiesItem;
.super Ljava/lang/Object;
.source "_AmenitiesItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAmenity:Lcom/airbnb/android/models/Amenities;

.field protected mEnabled:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/Amenities;Z)V
    .registers 3
    .param p1, "amenity"    # Lcom/airbnb/android/models/Amenities;
    .param p2, "enabled"    # Z

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/models/_AmenitiesItem;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/airbnb/android/models/_AmenitiesItem;->mAmenity:Lcom/airbnb/android/models/Amenities;

    .line 19
    iput-boolean p2, p0, Lcom/airbnb/android/models/_AmenitiesItem;->mEnabled:Z

    .line 20
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getAmenity()Lcom/airbnb/android/models/Amenities;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/models/_AmenitiesItem;->mAmenity:Lcom/airbnb/android/models/Amenities;

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/airbnb/android/models/_AmenitiesItem;->mEnabled:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 46
    const-class v1, Lcom/airbnb/android/models/Amenities;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/Amenities;

    iput-object v1, p0, Lcom/airbnb/android/models/_AmenitiesItem;->mAmenity:Lcom/airbnb/android/models/Amenities;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 48
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_AmenitiesItem;->mEnabled:Z

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/models/_AmenitiesItem;->mAmenity:Lcom/airbnb/android/models/Amenities;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_AmenitiesItem;->mEnabled:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 43
    return-void
.end method
