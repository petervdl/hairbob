.class public Lcom/airbnb/android/models/VerificationGroup;
.super Lcom/airbnb/android/models/_VerificationGroup;
.source "VerificationGroup.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/VerificationGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/VerificationGroup$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/VerificationGroup$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/VerificationGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_VerificationGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_VerificationGroup;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItems()Ljava/util/List;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_VerificationGroup;->getItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_VerificationGroup;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_VerificationGroup;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setItems(Ljava/util/List;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_VerificationGroup;->setItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_VerificationGroup;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_VerificationGroup;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method