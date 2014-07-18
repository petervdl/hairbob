.class public Lcom/airbnb/android/models/localcompanion/CompanionPlace;
.super Lcom/airbnb/android/models/localcompanion/_CompanionPlace;
.source "CompanionPlace.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/localcompanion/CompanionPlace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/localcompanion/CompanionPlace$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/localcompanion/CompanionPlace$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/localcompanion/CompanionPlace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLat()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getLat()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLng()D
    .registers 3

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getLng()D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOpeningHours()[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getOpeningHours()[Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhotoUrls()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getPhotoUrls()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPriceLevel()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getPriceLevel()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getShortAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getShortAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getWebsite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->getWebsite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setId(J)V

    return-void
.end method

.method public bridge synthetic setLat(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setLat(D)V

    return-void
.end method

.method public bridge synthetic setLng(D)V
    .registers 3
    .param p1, "x0"    # D

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setLng(D)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setOpeningHours([Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;)V
    .registers 2
    .param p1, "x0"    # [Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setOpeningHours([Lcom/airbnb/android/models/localcompanion/CompanionOpeningHours;)V

    return-void
.end method

.method public bridge synthetic setPhone(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setPhone(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPhotoUrls([Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # [Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setPhotoUrls([Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setPriceLevel(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setPriceLevel(I)V

    return-void
.end method

.method public bridge synthetic setShortAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setShortAddress(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setWebsite(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->setWebsite(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/localcompanion/_CompanionPlace;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
