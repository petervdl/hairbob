.class public Lcom/airbnb/android/models/SpokenLanguage;
.super Lcom/airbnb/android/models/_SpokenLanguage;
.source "SpokenLanguage.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/SpokenLanguage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/SpokenLanguage$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/SpokenLanguage$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/SpokenLanguage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_SpokenLanguage;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SpokenLanguage;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SpokenLanguage;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SpokenLanguage;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isSpoken()Z
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SpokenLanguage;->isSpoken()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpokenLanguage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpokenLanguage;->setId(I)V

    return-void
.end method

.method public bridge synthetic setLanguage(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpokenLanguage;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setSpoken(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SpokenLanguage;->setSpoken(Z)V

    return-void
.end method

.method public toggleSpoken()V
    .registers 2

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/airbnb/android/models/SpokenLanguage;->mSpoken:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/airbnb/android/models/SpokenLanguage;->mSpoken:Z

    .line 24
    return-void

    .line 23
    :cond_8
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SpokenLanguage;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
