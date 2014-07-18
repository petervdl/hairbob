.class abstract Lcom/airbnb/android/models/_SparseCalendarReservation;
.super Ljava/lang/Object;
.source "_SparseCalendarReservation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCheckin:Ljava/lang/String;

.field protected mCheckout:Ljava/lang/String;

.field protected mId:J

.field protected mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/ReservationStatus;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p1, "reservationStatus"    # Lcom/airbnb/android/models/ReservationStatus;
    .param p2, "checkin"    # Ljava/lang/String;
    .param p3, "checkout"    # Ljava/lang/String;
    .param p4, "id"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/airbnb/android/models/_SparseCalendarReservation;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 21
    iput-object p2, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckin:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckout:Ljava/lang/String;

    .line 23
    iput-wide p4, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mId:J

    .line 24
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getCheckin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckin:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckout()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckout:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mId:J

    return-wide v0
.end method

.method public getReservationStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 86
    const-class v0, Lcom/airbnb/android/models/ReservationStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/ReservationStatus;

    iput-object v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckin:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckout:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mId:J

    .line 90
    return-void
.end method

.method public setCheckin(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "checkin"
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckin:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCheckout(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "checkout"
    .end annotation

    .prologue
    .line 59
    iput-object p1, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckout:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setId(J)V
    .registers 3
    .param p1, "value"    # J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mId:J

    .line 71
    return-void
.end method

.method public setReservationStatus(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/ReservationStatus;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 37
    iput-object p1, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mReservationStatus:Lcom/airbnb/android/models/ReservationStatus;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mCheckout:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-wide v0, p0, Lcom/airbnb/android/models/_SparseCalendarReservation;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    return-void
.end method
