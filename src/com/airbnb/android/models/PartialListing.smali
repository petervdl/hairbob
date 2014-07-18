.class public Lcom/airbnb/android/models/PartialListing;
.super Lcom/airbnb/android/models/_PartialListing;
.source "PartialListing.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/PartialListing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/PartialListing$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/PartialListing$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/PartialListing;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_PartialListing;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PartialListing;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getListingId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PartialListing;->getListingId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getListingOwnerUserId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PartialListing;->getListingOwnerUserId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PartialListing;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isDoubleBlindReviews()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_PartialListing;->isDoubleBlindReviews()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PartialListing;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setDoubleBlindReviews(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PartialListing;->setDoubleBlindReviews(Ljava/lang/Boolean;)V

    return-void
.end method

.method public bridge synthetic setListingId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_PartialListing;->setListingId(J)V

    return-void
.end method

.method public bridge synthetic setListingOwnerUserId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_PartialListing;->setListingOwnerUserId(J)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_PartialListing;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_PartialListing;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
