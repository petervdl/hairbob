.class abstract Lcom/airbnb/android/models/_ActiveListing;
.super Ljava/lang/Object;
.source "_ActiveListing.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mListing:Lcom/airbnb/android/models/Listing;

.field protected mReservations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Lcom/airbnb/android/models/Listing;)V
    .registers 3
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;",
            "Lcom/airbnb/android/models/Listing;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "reservations":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Reservation;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/_ActiveListing;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/_ActiveListing;->mReservations:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/_ActiveListing;->mListing:Lcom/airbnb/android/models/Listing;

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/models/_ActiveListing;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method public getReservations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/models/_ActiveListing;->mReservations:Ljava/util/List;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 59
    sget-object v0, Lcom/airbnb/android/models/Reservation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_ActiveListing;->mReservations:Ljava/util/List;

    .line 60
    const-class v0, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/models/_ActiveListing;->mListing:Lcom/airbnb/android/models/Listing;

    .line 61
    return-void
.end method

.method public setListing(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/Listing;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "listing"
    .end annotation

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/models/_ActiveListing;->mListing:Lcom/airbnb/android/models/Listing;

    .line 46
    return-void
.end method

.method public setReservations(Ljava/util/List;)V
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Reservation;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/_ActiveListing;->mReservations:Ljava/util/List;

    .line 35
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/_ActiveListing;->mReservations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 55
    iget-object v0, p0, Lcom/airbnb/android/models/_ActiveListing;->mListing:Lcom/airbnb/android/models/Listing;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 56
    return-void
.end method
