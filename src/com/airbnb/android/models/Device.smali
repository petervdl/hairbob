.class public Lcom/airbnb/android/models/Device;
.super Lcom/airbnb/android/models/_Device;
.source "Device.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    new-instance v0, Lcom/airbnb/android/models/Device$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Device$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Device;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/airbnb/android/models/_Device;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Device;->describeContents()I

    move-result v0

    return v0
.end method

.method public getApid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/airbnb/android/models/Device;->mApid:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string/jumbo v0, " "

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/airbnb/android/models/Device;->mApid:Ljava/lang/String;

    goto :goto_7
.end method

.method public bridge synthetic isEnabled()Z
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Device;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Device;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setApid(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Device;->setApid(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setEnabled(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Device;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Device;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
