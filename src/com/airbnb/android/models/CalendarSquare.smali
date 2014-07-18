.class public Lcom/airbnb/android/models/CalendarSquare;
.super Lcom/airbnb/android/models/_CalendarSquare;
.source "CalendarSquare.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/CalendarSquare;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDateCached:Ljava/util/Date;

.field private mMarkForSpecialOffer:Z

.field private mModifiedAvailability:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/airbnb/android/models/CalendarSquare;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/models/CalendarSquare;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/airbnb/android/models/CalendarSquare$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/CalendarSquare$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/CalendarSquare;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/airbnb/android/models/_CalendarSquare;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/android/models/_CalendarSquare;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAvailability()Z
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 61
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 63
    :goto_a
    return v0

    :cond_b
    iget-boolean v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mAvailable:Z

    goto :goto_a
.end method

.method public bridge synthetic getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/android/models/_CalendarSquare;->getCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDailyPricing()I
    .registers 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/android/models/_CalendarSquare;->getDailyPricing()I

    move-result v0

    return v0
.end method

.method public getDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mDateString:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 36
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mDateCached:Ljava/util/Date;

    if-nez v0, :cond_10

    .line 37
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mDateString:Ljava/lang/String;

    invoke-static {v0}, Lcom/airbnb/android/utils/DateHelper;->getDateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mDateCached:Ljava/util/Date;

    .line 39
    :cond_10
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mDateCached:Ljava/util/Date;

    .line 41
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public bridge synthetic getDateString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/android/models/_CalendarSquare;->getDateString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/android/models/_CalendarSquare;->getNote()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReservation()Lcom/airbnb/android/models/SparseCalendarReservation;
    .registers 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/android/models/_CalendarSquare;->getReservation()Lcom/airbnb/android/models/SparseCalendarReservation;

    move-result-object v0

    return-object v0
.end method

.method public getReservationId()Ljava/lang/Long;
    .registers 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SparseCalendarReservation;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    .line 73
    :cond_10
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 75
    :goto_16
    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SparseCalendarReservation;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_16
.end method

.method public getStatus()Lcom/airbnb/android/models/ReservationStatus;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    if-nez v0, :cond_7

    .line 80
    sget-object v0, Lcom/airbnb/android/models/ReservationStatus;->Unknown:Lcom/airbnb/android/models/ReservationStatus;

    .line 82
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SparseCalendarReservation;->getStatus()Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v0

    goto :goto_6
.end method

.method public bridge synthetic isAvailable()Z
    .registers 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/android/models/_CalendarSquare;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isMarkForSpecialOffer()Z
    .registers 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mMarkForSpecialOffer:Z

    return v0
.end method

.method public isModified()Z
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic isSelected()Z
    .registers 2

    .prologue
    .line 14
    invoke-super {p0}, Lcom/airbnb/android/models/_CalendarSquare;->isSelected()Z

    move-result v0

    return v0
.end method

.method public markForSpecialOffer()V
    .registers 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mMarkForSpecialOffer:Z

    .line 98
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CalendarSquare;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public resetAvailability()V
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mMarkForSpecialOffer:Z

    .line 88
    return-void
.end method

.method public resetState()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 106
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mAvailable:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    .line 109
    :cond_f
    return-void
.end method

.method public setAvailability(Z)V
    .registers 3
    .param p1, "available"    # Z

    .prologue
    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    .line 57
    return-void
.end method

.method public bridge synthetic setAvailable(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CalendarSquare;->setAvailable(Z)V

    return-void
.end method

.method public bridge synthetic setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CalendarSquare;->setCurrency(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDailyPricing(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CalendarSquare;->setDailyPricing(I)V

    return-void
.end method

.method public bridge synthetic setDateString(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CalendarSquare;->setDateString(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setNote(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CalendarSquare;->setNote(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setReservation(Lcom/airbnb/android/models/SparseCalendarReservation;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/SparseCalendarReservation;

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CalendarSquare;->setReservation(Lcom/airbnb/android/models/SparseCalendarReservation;)V

    return-void
.end method

.method public bridge synthetic setSelected(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/airbnb/android/models/_CalendarSquare;->setSelected(Z)V

    return-void
.end method

.method public setUnavailable()V
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    .line 92
    return-void
.end method

.method public toggleAvailability()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 47
    iget-object v2, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    if-eqz v2, :cond_1d

    .line 48
    iget-object v2, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1b

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    .line 52
    :goto_14
    iget-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1b
    move v0, v1

    .line 48
    goto :goto_e

    .line 50
    :cond_1d
    iget-boolean v2, p0, Lcom/airbnb/android/models/CalendarSquare;->mAvailable:Z

    if-nez v2, :cond_28

    :goto_21
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/CalendarSquare;->mModifiedAvailability:Ljava/lang/Boolean;

    goto :goto_14

    :cond_28
    move v0, v1

    goto :goto_21
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/_CalendarSquare;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
