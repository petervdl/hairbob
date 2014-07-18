.class final Lcom/airbnb/android/utils/ParcelStrap$1;
.super Ljava/lang/Object;
.source "ParcelStrap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/ParcelStrap;
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
        "Lcom/airbnb/android/utils/ParcelStrap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/utils/ParcelStrap;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-static {}, Lcom/airbnb/android/utils/ParcelStrap;->make()Lcom/airbnb/android/utils/ParcelStrap;

    move-result-object v2

    .line 57
    .local v2, "strap":Lcom/airbnb/android/utils/ParcelStrap;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_19

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/ParcelStrap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/ParcelStrap;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 62
    :cond_19
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/ParcelStrap$1;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/utils/ParcelStrap;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/airbnb/android/utils/ParcelStrap;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 67
    new-array v0, p1, [Lcom/airbnb/android/utils/ParcelStrap;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/ParcelStrap$1;->newArray(I)[Lcom/airbnb/android/utils/ParcelStrap;

    move-result-object v0

    return-object v0
.end method
