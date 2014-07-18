.class final Lcom/airbnb/android/models/SquareMap$1;
.super Ljava/lang/Object;
.source "SquareMap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/SquareMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/airbnb/android/models/SquareMap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/SquareMap;
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 101
    new-instance v2, Lcom/airbnb/android/models/SquareMap;

    invoke-direct {v2}, Lcom/airbnb/android/models/SquareMap;-><init>()V

    .line 103
    .local v2, "result":Lcom/airbnb/android/models/SquareMap;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v0, "calMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/airbnb/android/models/CalendarSquare;>;"
    const-class v4, Ljava/lang/String;

    const-class v5, Lcom/airbnb/android/models/CalendarSquare;

    invoke-static {p1, v0, v4, v5}, Lcom/airbnb/android/utils/MiscUtils;->readParcelableIntoMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 105
    invoke-virtual {v2, v0}, Lcom/airbnb/android/models/SquareMap;->setCalendarMap(Ljava/util/HashMap;)V

    .line 107
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 108
    .local v1, "resMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/airbnb/android/models/Reservation;>;"
    const-class v4, Ljava/lang/Long;

    const-class v5, Lcom/airbnb/android/models/Reservation;

    invoke-static {p1, v1, v4, v5}, Lcom/airbnb/android/utils/MiscUtils;->readParcelableIntoMap(Landroid/os/Parcel;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/SquareMap;->setReservationMap(Ljava/util/HashMap;)V

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, "squares":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/CalendarSquare;>;"
    const-class v4, Lcom/airbnb/android/models/CalendarSquare;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 113
    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/SquareMap;->setUnavailableDates(Ljava/util/List;)V

    .line 115
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/SquareMap$1;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/SquareMap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/airbnb/android/models/SquareMap;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 120
    new-array v0, p1, [Lcom/airbnb/android/models/SquareMap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/SquareMap$1;->newArray(I)[Lcom/airbnb/android/models/SquareMap;

    move-result-object v0

    return-object v0
.end method
