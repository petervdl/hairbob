.class abstract Lcom/airbnb/android/models/groups/_HeroImage;
.super Ljava/lang/Object;
.source "_HeroImage.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCard:Lcom/airbnb/android/models/groups/Image;

.field protected mCardAndroid:Lcom/airbnb/android/models/groups/Image;

.field protected mHero:Lcom/airbnb/android/models/groups/Image;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/groups/Image;Lcom/airbnb/android/models/groups/Image;Lcom/airbnb/android/models/groups/Image;)V
    .registers 4
    .param p1, "card"    # Lcom/airbnb/android/models/groups/Image;
    .param p2, "cardAndroid"    # Lcom/airbnb/android/models/groups/Image;
    .param p3, "hero"    # Lcom/airbnb/android/models/groups/Image;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_HeroImage;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCard:Lcom/airbnb/android/models/groups/Image;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCardAndroid:Lcom/airbnb/android/models/groups/Image;

    .line 21
    iput-object p3, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mHero:Lcom/airbnb/android/models/groups/Image;

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

.method public getCard()Lcom/airbnb/android/models/groups/Image;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCard:Lcom/airbnb/android/models/groups/Image;

    return-object v0
.end method

.method public getCardAndroid()Lcom/airbnb/android/models/groups/Image;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCardAndroid:Lcom/airbnb/android/models/groups/Image;

    return-object v0
.end method

.method public getHero()Lcom/airbnb/android/models/groups/Image;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mHero:Lcom/airbnb/android/models/groups/Image;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    const-class v0, Lcom/airbnb/android/models/groups/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Image;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCard:Lcom/airbnb/android/models/groups/Image;

    .line 73
    const-class v0, Lcom/airbnb/android/models/groups/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Image;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCardAndroid:Lcom/airbnb/android/models/groups/Image;

    .line 74
    const-class v0, Lcom/airbnb/android/models/groups/Image;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Image;

    iput-object v0, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mHero:Lcom/airbnb/android/models/groups/Image;

    .line 75
    return-void
.end method

.method public setCard(Lcom/airbnb/android/models/groups/Image;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Image;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "card"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCard:Lcom/airbnb/android/models/groups/Image;

    .line 36
    return-void
.end method

.method public setCardAndroid(Lcom/airbnb/android/models/groups/Image;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Image;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "card_android"
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCardAndroid:Lcom/airbnb/android/models/groups/Image;

    .line 47
    return-void
.end method

.method public setHero(Lcom/airbnb/android/models/groups/Image;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Image;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "hero"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mHero:Lcom/airbnb/android/models/groups/Image;

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 66
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCard:Lcom/airbnb/android/models/groups/Image;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mCardAndroid:Lcom/airbnb/android/models/groups/Image;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_HeroImage;->mHero:Lcom/airbnb/android/models/groups/Image;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    return-void
.end method
