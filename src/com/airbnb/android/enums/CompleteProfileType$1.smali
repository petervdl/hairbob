.class final Lcom/airbnb/android/enums/CompleteProfileType$1;
.super Ljava/lang/Object;
.source "CompleteProfileType.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/enums/CompleteProfileType;
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
        "Lcom/airbnb/android/enums/CompleteProfileType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/enums/CompleteProfileType;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 25
    invoke-static {}, Lcom/airbnb/android/enums/CompleteProfileType;->values()[Lcom/airbnb/android/enums/CompleteProfileType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/airbnb/android/enums/CompleteProfileType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/enums/CompleteProfileType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/airbnb/android/enums/CompleteProfileType;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 30
    new-array v0, p1, [Lcom/airbnb/android/enums/CompleteProfileType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/airbnb/android/enums/CompleteProfileType$1;->newArray(I)[Lcom/airbnb/android/enums/CompleteProfileType;

    move-result-object v0

    return-object v0
.end method