.class public Lcom/airbnb/android/models/SecurityCheckRequirements;
.super Lcom/airbnb/android/models/_SecurityCheckRequirements;
.source "SecurityCheckRequirements.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/SecurityCheckRequirements;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/SecurityCheckRequirements$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/SecurityCheckRequirements$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/SecurityCheckRequirements;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_SecurityCheckRequirements;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheckRequirements;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isAddPayout()Z
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheckRequirements;->isAddPayout()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isManageListing()Z
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_SecurityCheckRequirements;->isManageListing()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheckRequirements;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAddPayout(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheckRequirements;->setAddPayout(Z)V

    return-void
.end method

.method public bridge synthetic setManageListing(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SecurityCheckRequirements;->setManageListing(Z)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SecurityCheckRequirements;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
