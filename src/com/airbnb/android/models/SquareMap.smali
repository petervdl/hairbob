.class public Lcom/airbnb/android/models/SquareMap;
.super Ljava/lang/Object;
.source "SquareMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/SquareMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCalendarData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/CalendarSquare;",
            ">;"
        }
    .end annotation
.end field

.field public mReservationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/airbnb/android/models/Reservation;",
            ">;"
        }
    .end annotation
.end field

.field private mUnavailableDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/CalendarSquare;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    new-instance v0, Lcom/airbnb/android/models/SquareMap$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/SquareMap$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/SquareMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mUnavailableDates:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x16d

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mCalendarData:Ljava/util/HashMap;

    .line 25
    return-void
.end method


# virtual methods
.method public countAvailabilities(I)I
    .registers 8
    .param p1, "daysToLook"    # I

    .prologue
    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 74
    .local v1, "cal":Ljava/util/Calendar;
    move v0, p1

    .line 75
    .local v0, "availabilities":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, p1, :cond_26

    .line 76
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/models/SquareMap;->get(J)Lcom/airbnb/android/models/CalendarSquare;

    move-result-object v3

    .line 77
    .local v3, "square":Lcom/airbnb/android/models/CalendarSquare;
    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/airbnb/android/models/CalendarSquare;->getAvailability()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 78
    add-int/lit8 v0, v0, -0x1

    .line 80
    :cond_1e
    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 82
    .end local v3    # "square":Lcom/airbnb/android/models/CalendarSquare;
    :cond_26
    return v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/CalendarSquare;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mCalendarData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(J)Lcom/airbnb/android/models/CalendarSquare;
    .registers 5
    .param p1, "date"    # J

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mCalendarData:Ljava/util/HashMap;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/airbnb/android/utils/DateHelper;->getStringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/CalendarSquare;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/airbnb/android/models/CalendarSquare;
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mCalendarData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/CalendarSquare;

    return-object v0
.end method

.method public getUnavailableDates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/CalendarSquare;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mUnavailableDates:Ljava/util/List;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/airbnb/android/models/CalendarSquare;)Lcom/airbnb/android/models/CalendarSquare;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/airbnb/android/models/CalendarSquare;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mCalendarData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/CalendarSquare;

    return-object v0
.end method

.method public reservationForId(J)Lcom/airbnb/android/models/Reservation;
    .registers 5
    .param p1, "resId"    # J

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mReservationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Reservation;

    return-object v0
.end method

.method public resetAvailability()V
    .registers 4

    .prologue
    .line 28
    iget-object v2, p0, Lcom/airbnb/android/models/SquareMap;->mCalendarData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/CalendarSquare;

    .line 29
    .local v1, "square":Lcom/airbnb/android/models/CalendarSquare;
    invoke-virtual {v1}, Lcom/airbnb/android/models/CalendarSquare;->resetAvailability()V

    goto :goto_a

    .line 31
    .end local v1    # "square":Lcom/airbnb/android/models/CalendarSquare;
    :cond_1a
    return-void
.end method

.method public setCalendarMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/CalendarSquare;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "calendarMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/airbnb/android/models/CalendarSquare;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/SquareMap;->mCalendarData:Ljava/util/HashMap;

    .line 66
    return-void
.end method

.method public setReservationMap(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/airbnb/android/models/Reservation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "reservationMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/airbnb/android/models/Reservation;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/SquareMap;->mReservationMap:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public setUnavailableDates(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/CalendarSquare;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "unavailableDatePositions":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/CalendarSquare;>;"
    iput-object p1, p0, Lcom/airbnb/android/models/SquareMap;->mUnavailableDates:Ljava/util/List;

    .line 39
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mCalendarData:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/airbnb/android/utils/MiscUtils;->writeParcelableMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mReservationMap:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/airbnb/android/utils/MiscUtils;->writeParcelableMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 95
    iget-object v0, p0, Lcom/airbnb/android/models/SquareMap;->mUnavailableDates:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 96
    return-void
.end method
