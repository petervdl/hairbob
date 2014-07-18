.class public Lcom/airbnb/android/models/SparseCalendarReservation;
.super Lcom/airbnb/android/models/_SparseCalendarReservation;
.source "SparseCalendarReservation.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Reservationable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/SparseCalendarReservation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCheckin:Ljava/util/Date;

.field private mCheckout:Ljava/util/Date;

.field protected mStatus:Lcom/airbnb/android/models/ReservationStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lcom/airbnb/android/models/SparseCalendarReservation$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/SparseCalendarReservation$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/SparseCalendarReservation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/models/_SparseCalendarReservation;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_SparseCalendarReservation;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCheckin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_SparseCalendarReservation;->getCheckin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckinDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/models/SparseCalendarReservation;->mCheckin:Ljava/util/Date;

    if-nez v0, :cond_e

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/models/SparseCalendarReservation;->getCheckin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/SparseCalendarReservation;->mCheckin:Ljava/util/Date;

    .line 50
    :cond_e
    iget-object v0, p0, Lcom/airbnb/android/models/SparseCalendarReservation;->mCheckin:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getCheckout()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_SparseCalendarReservation;->getCheckout()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCheckoutDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/models/SparseCalendarReservation;->mCheckout:Ljava/util/Date;

    if-nez v0, :cond_e

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/models/SparseCalendarReservation;->getCheckout()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/SparseCalendarReservation;->mCheckout:Ljava/util/Date;

    .line 58
    :cond_e
    iget-object v0, p0, Lcom/airbnb/android/models/SparseCalendarReservation;->mCheckout:Ljava/util/Date;

    return-object v0
.end method

.method public bridge synthetic getId()J
    .registers 3

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_SparseCalendarReservation;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getReservationStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/_SparseCalendarReservation;->getReservationStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/models/SparseCalendarReservation;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    return-object v0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SparseCalendarReservation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setCheckin(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SparseCalendarReservation;->setCheckin(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCheckout(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SparseCalendarReservation;->setCheckout(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setId(J)V
    .registers 3
    .param p1, "x0"    # J

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SparseCalendarReservation;->setId(J)V

    return-void
.end method

.method public bridge synthetic setReservationStatus(Lcom/airbnb/android/models/ReservationStatus;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/ReservationStatus;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_SparseCalendarReservation;->setReservationStatus(Lcom/airbnb/android/models/ReservationStatus;)V

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "status"
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Lcom/airbnb/android/models/ReservationStatus;->findStatus(Ljava/lang/String;)Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/SparseCalendarReservation;->mStatus:Lcom/airbnb/android/models/ReservationStatus;

    .line 28
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_SparseCalendarReservation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
