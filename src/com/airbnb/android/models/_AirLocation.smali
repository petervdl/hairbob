.class abstract Lcom/airbnb/android/models/_AirLocation;
.super Ljava/lang/Object;
.source "_AirLocation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

.field protected mDisplayName:Ljava/lang/String;

.field protected mSearchTerm:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/BoundingBox;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "boundingBox"    # Lcom/airbnb/android/models/BoundingBox;
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/_AirLocation;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/_AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/_AirLocation;->mDisplayName:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/airbnb/android/models/_AirLocation;->mSearchTerm:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getBoundingBox()Lcom/airbnb/android/models/BoundingBox;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/_AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/_AirLocation;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/_AirLocation;->mSearchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    const-class v0, Lcom/airbnb/android/models/BoundingBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/BoundingBox;

    iput-object v0, p0, Lcom/airbnb/android/models/_AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_AirLocation;->mDisplayName:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_AirLocation;->mSearchTerm:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setBoundingBox(Lcom/airbnb/android/models/BoundingBox;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/BoundingBox;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "bounding_box"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/_AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    .line 36
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "display_name"
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/models/_AirLocation;->mDisplayName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "search_name"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/_AirLocation;->mSearchTerm:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/_AirLocation;->mBoundingBox:Lcom/airbnb/android/models/BoundingBox;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/_AirLocation;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/_AirLocation;->mSearchTerm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    return-void
.end method
