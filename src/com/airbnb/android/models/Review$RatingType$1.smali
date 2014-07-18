.class final Lcom/airbnb/android/models/Review$RatingType$1;
.super Ljava/lang/Object;
.source "Review.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/Review$RatingType;
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
        "Lcom/airbnb/android/models/Review$RatingType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/Review$RatingType;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-static {}, Lcom/airbnb/android/models/Review$RatingType;->values()[Lcom/airbnb/android/models/Review$RatingType;

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
    .line 40
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/Review$RatingType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/airbnb/android/models/Review$RatingType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/airbnb/android/models/Review$RatingType;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lcom/airbnb/android/models/Review$RatingType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/Review$RatingType$1;->newArray(I)[Lcom/airbnb/android/models/Review$RatingType;

    move-result-object v0

    return-object v0
.end method
