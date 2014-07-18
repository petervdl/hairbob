.class abstract Lcom/airbnb/android/models/_CalendarSquare;
.super Ljava/lang/Object;
.source "_CalendarSquare.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAvailable:Z

.field protected mCurrency:Ljava/lang/String;

.field protected mDailyPricing:I

.field protected mDateString:Ljava/lang/String;

.field protected mNote:Ljava/lang/String;

.field protected mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

.field protected mSelected:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/SparseCalendarReservation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .registers 8
    .param p1, "reservation"    # Lcom/airbnb/android/models/SparseCalendarReservation;
    .param p2, "note"    # Ljava/lang/String;
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "dateString"    # Ljava/lang/String;
    .param p5, "available"    # Z
    .param p6, "selected"    # Z
    .param p7, "dailyPricing"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/models/_CalendarSquare;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    .line 24
    iput-object p2, p0, Lcom/airbnb/android/models/_CalendarSquare;->mNote:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/airbnb/android/models/_CalendarSquare;->mCurrency:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDateString:Ljava/lang/String;

    .line 27
    iput-boolean p5, p0, Lcom/airbnb/android/models/_CalendarSquare;->mAvailable:Z

    .line 28
    iput-boolean p6, p0, Lcom/airbnb/android/models/_CalendarSquare;->mSelected:Z

    .line 29
    iput p7, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDailyPricing:I

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mCurrency:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyPricing()I
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDailyPricing:I

    return v0
.end method

.method public getDateString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDateString:Ljava/lang/String;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mNote:Ljava/lang/String;

    return-object v0
.end method

.method public getReservation()Lcom/airbnb/android/models/SparseCalendarReservation;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mAvailable:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mSelected:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 127
    const-class v1, Lcom/airbnb/android/models/SparseCalendarReservation;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/SparseCalendarReservation;

    iput-object v1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mNote:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mCurrency:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDateString:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 132
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mAvailable:Z

    .line 133
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mSelected:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDailyPricing:I

    .line 135
    return-void
.end method

.method public setAvailable(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "available"
    .end annotation

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mAvailable:Z

    .line 88
    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "currency"
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mCurrency:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setDailyPricing(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "daily_pricing"
    .end annotation

    .prologue
    .line 109
    iput p1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDailyPricing:I

    .line 110
    return-void
.end method

.method public setDateString(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "date"
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDateString:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "note"
    .end annotation

    .prologue
    .line 54
    iput-object p1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mNote:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setReservation(Lcom/airbnb/android/models/SparseCalendarReservation;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/SparseCalendarReservation;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reservation"
    .end annotation

    .prologue
    .line 43
    iput-object p1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    .line 44
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "selected"
    .end annotation

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mSelected:Z

    .line 99
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mReservation:Lcom/airbnb/android/models/SparseCalendarReservation;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    iget-object v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mNote:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mCurrency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDateString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/_CalendarSquare;->mAvailable:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/_CalendarSquare;->mSelected:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 123
    iget v0, p0, Lcom/airbnb/android/models/_CalendarSquare;->mDailyPricing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return-void
.end method
