.class public Lcom/airbnb/android/models/Settings;
.super Lcom/airbnb/android/models/_Settings;
.source "Settings.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Settings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    new-instance v0, Lcom/airbnb/android/models/Settings$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Settings$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Settings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/airbnb/android/models/_Settings;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Settings;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isGuestReservation()Z
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Settings;->isGuestReservation()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isHostReservation()Z
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Settings;->isHostReservation()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMessaging()Z
    .registers 2

    .prologue
    .line 6
    invoke-super {p0}, Lcom/airbnb/android/models/_Settings;->isMessaging()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Settings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setGuestReservation(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Settings;->setGuestReservation(Z)V

    return-void
.end method

.method public bridge synthetic setHostReservation(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Settings;->setHostReservation(Z)V

    return-void
.end method

.method public bridge synthetic setMessaging(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 6
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_Settings;->setMessaging(Z)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 6
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_Settings;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
