.class abstract Lcom/airbnb/android/models/_ReservationObjectBundle;
.super Ljava/lang/Object;
.source "_ReservationObjectBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mReservation:Lcom/airbnb/android/models/Reservation;

.field protected mThread:Lcom/airbnb/android/models/MessageThread;

.field protected mUser:Lcom/airbnb/android/models/User;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/MessageThread;Lcom/airbnb/android/models/Reservation;Lcom/airbnb/android/models/User;)V
    .registers 4
    .param p1, "thread"    # Lcom/airbnb/android/models/MessageThread;
    .param p2, "reservation"    # Lcom/airbnb/android/models/Reservation;
    .param p3, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/models/_ReservationObjectBundle;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mThread:Lcom/airbnb/android/models/MessageThread;

    .line 20
    iput-object p2, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 21
    iput-object p3, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mUser:Lcom/airbnb/android/models/User;

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

.method public getReservation()Lcom/airbnb/android/models/Reservation;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mReservation:Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method public getThread()Lcom/airbnb/android/models/MessageThread;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mThread:Lcom/airbnb/android/models/MessageThread;

    return-object v0
.end method

.method public getUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 72
    const-class v0, Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/MessageThread;

    iput-object v0, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mThread:Lcom/airbnb/android/models/MessageThread;

    .line 73
    const-class v0, Lcom/airbnb/android/models/Reservation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    iput-object v0, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 74
    const-class v0, Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/User;

    iput-object v0, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mUser:Lcom/airbnb/android/models/User;

    .line 75
    return-void
.end method

.method public setReservation(Lcom/airbnb/android/models/Reservation;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/Reservation;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation

    .prologue
    .line 46
    iput-object p1, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mReservation:Lcom/airbnb/android/models/Reservation;

    .line 47
    return-void
.end method

.method public setThread(Lcom/airbnb/android/models/MessageThread;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/MessageThread;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thread"
    .end annotation

    .prologue
    .line 35
    iput-object p1, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mThread:Lcom/airbnb/android/models/MessageThread;

    .line 36
    return-void
.end method

.method public setUser(Lcom/airbnb/android/models/User;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation

    .prologue
    .line 57
    iput-object p1, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mUser:Lcom/airbnb/android/models/User;

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
    iget-object v0, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mThread:Lcom/airbnb/android/models/MessageThread;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mReservation:Lcom/airbnb/android/models/Reservation;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/_ReservationObjectBundle;->mUser:Lcom/airbnb/android/models/User;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    return-void
.end method
