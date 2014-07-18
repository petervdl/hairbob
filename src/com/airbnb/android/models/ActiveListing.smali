.class public Lcom/airbnb/android/models/ActiveListing;
.super Lcom/airbnb/android/models/_ActiveListing;
.source "ActiveListing.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/ActiveListing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    new-instance v0, Lcom/airbnb/android/models/ActiveListing$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/ActiveListing$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/ActiveListing;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/airbnb/android/models/_ActiveListing;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_ActiveListing;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getListing()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_ActiveListing;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReservations()Ljava/util/List;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_ActiveListing;->getReservations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ActiveListing;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setListing(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ActiveListing;->setListing(Lcom/airbnb/android/models/Listing;)V

    return-void
.end method

.method public bridge synthetic setReservations(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ActiveListing;->setReservations(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_ActiveListing;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
