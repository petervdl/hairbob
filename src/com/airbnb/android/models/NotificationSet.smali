.class public Lcom/airbnb/android/models/NotificationSet;
.super Lcom/airbnb/android/models/_NotificationSet;
.source "NotificationSet.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/NotificationSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    new-instance v0, Lcom/airbnb/android/models/NotificationSet$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/NotificationSet$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/NotificationSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/airbnb/android/models/_NotificationSet;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_NotificationSet;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAndroidDevice()Lcom/airbnb/android/models/Device;
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_NotificationSet;->getAndroidDevice()Lcom/airbnb/android/models/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_NotificationSet;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setAndroidDevice(Lcom/airbnb/android/models/Device;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/Device;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_NotificationSet;->setAndroidDevice(Lcom/airbnb/android/models/Device;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_NotificationSet;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
