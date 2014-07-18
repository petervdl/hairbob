.class public Lcom/airbnb/android/models/ReservationObjectBundle;
.super Lcom/airbnb/android/models/_ReservationObjectBundle;
.source "ReservationObjectBundle.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/ReservationObjectBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    new-instance v0, Lcom/airbnb/android/models/ReservationObjectBundle$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/ReservationObjectBundle$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/ReservationObjectBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/airbnb/android/models/_ReservationObjectBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ReservationObjectBundle;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ReservationObjectBundle;->getReservation()Lcom/airbnb/android/models/Reservation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getThread()Lcom/airbnb/android/models/MessageThread;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ReservationObjectBundle;->getThread()Lcom/airbnb/android/models/MessageThread;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 7
    invoke-super {p0}, Lcom/airbnb/android/models/_ReservationObjectBundle;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ReservationObjectBundle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setReservation(Lcom/airbnb/android/models/Reservation;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/Reservation;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ReservationObjectBundle;->setReservation(Lcom/airbnb/android/models/Reservation;)V

    return-void
.end method

.method public bridge synthetic setThread(Lcom/airbnb/android/models/MessageThread;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/MessageThread;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ReservationObjectBundle;->setThread(Lcom/airbnb/android/models/MessageThread;)V

    return-void
.end method

.method public bridge synthetic setUser(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 7
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_ReservationObjectBundle;->setUser(Lcom/airbnb/android/models/User;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 7
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_ReservationObjectBundle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
