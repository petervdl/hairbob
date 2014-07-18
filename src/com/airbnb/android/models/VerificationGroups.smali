.class public Lcom/airbnb/android/models/VerificationGroups;
.super Lcom/airbnb/android/models/_VerificationGroups;
.source "VerificationGroups.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/VerificationGroups;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/VerificationGroups$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/VerificationGroups$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/VerificationGroups;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_VerificationGroups;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_VerificationGroups;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBasic()Lcom/airbnb/android/models/VerificationGroup;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_VerificationGroups;->getBasic()Lcom/airbnb/android/models/VerificationGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOffline()Lcom/airbnb/android/models/VerificationGroup;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_VerificationGroups;->getOffline()Lcom/airbnb/android/models/VerificationGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOnline()Lcom/airbnb/android/models/VerificationGroup;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_VerificationGroups;->getOnline()Lcom/airbnb/android/models/VerificationGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_VerificationGroups;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setBasic(Lcom/airbnb/android/models/VerificationGroup;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/VerificationGroup;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_VerificationGroups;->setBasic(Lcom/airbnb/android/models/VerificationGroup;)V

    return-void
.end method

.method public bridge synthetic setOffline(Lcom/airbnb/android/models/VerificationGroup;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/VerificationGroup;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_VerificationGroups;->setOffline(Lcom/airbnb/android/models/VerificationGroup;)V

    return-void
.end method

.method public bridge synthetic setOnline(Lcom/airbnb/android/models/VerificationGroup;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/VerificationGroup;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_VerificationGroups;->setOnline(Lcom/airbnb/android/models/VerificationGroup;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_VerificationGroups;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
