.class final Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod$1;
.super Ljava/lang/Object;
.source "SecondaryArrivalMethod.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;
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
        "Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 32
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    invoke-direct {v0}, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;-><init>()V

    .line 33
    .local v0, "object":Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod$1;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 28
    new-array v0, p1, [Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod$1;->newArray(I)[Lcom/airbnb/android/models/arrivalAssistant/SecondaryArrivalMethod;

    move-result-object v0

    return-object v0
.end method
