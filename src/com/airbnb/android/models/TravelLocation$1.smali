.class final Lcom/airbnb/android/models/TravelLocation$1;
.super Ljava/lang/Object;
.source "TravelLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/TravelLocation;
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
        "Lcom/airbnb/android/models/TravelLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/TravelLocation;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 19
    new-instance v0, Lcom/airbnb/android/models/TravelLocation;

    invoke-direct {v0}, Lcom/airbnb/android/models/TravelLocation;-><init>()V

    .line 20
    .local v0, "object":Lcom/airbnb/android/models/TravelLocation;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/TravelLocation;->readFromParcel(Landroid/os/Parcel;)V

    .line 21
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/TravelLocation$1;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/TravelLocation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/airbnb/android/models/TravelLocation;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 15
    new-array v0, p1, [Lcom/airbnb/android/models/TravelLocation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/TravelLocation$1;->newArray(I)[Lcom/airbnb/android/models/TravelLocation;

    move-result-object v0

    return-object v0
.end method
