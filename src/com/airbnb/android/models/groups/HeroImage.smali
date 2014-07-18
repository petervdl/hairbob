.class public Lcom/airbnb/android/models/groups/HeroImage;
.super Lcom/airbnb/android/models/groups/_HeroImage;
.source "HeroImage.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/HeroImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/groups/HeroImage$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/HeroImage$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/HeroImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_HeroImage;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_HeroImage;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCard()Lcom/airbnb/android/models/groups/Image;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_HeroImage;->getCard()Lcom/airbnb/android/models/groups/Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCardAndroid()Lcom/airbnb/android/models/groups/Image;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_HeroImage;->getCardAndroid()Lcom/airbnb/android/models/groups/Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHero()Lcom/airbnb/android/models/groups/Image;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_HeroImage;->getHero()Lcom/airbnb/android/models/groups/Image;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_HeroImage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCard(Lcom/airbnb/android/models/groups/Image;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Image;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_HeroImage;->setCard(Lcom/airbnb/android/models/groups/Image;)V

    return-void
.end method

.method public bridge synthetic setCardAndroid(Lcom/airbnb/android/models/groups/Image;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Image;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_HeroImage;->setCardAndroid(Lcom/airbnb/android/models/groups/Image;)V

    return-void
.end method

.method public bridge synthetic setHero(Lcom/airbnb/android/models/groups/Image;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Image;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_HeroImage;->setHero(Lcom/airbnb/android/models/groups/Image;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_HeroImage;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
