.class final Lcom/google/android/gms/internal/fe$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/fe;
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
        "Lcom/google/android/gms/internal/fe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(I)[Lcom/google/android/gms/internal/fe;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-array v0, p1, [Lcom/google/android/gms/internal/fe;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fe$1;->k(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fe;

    move-result-object v0

    return-object v0
.end method

.method public k(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fe;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/fe;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/fe;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fe$1;->C(I)[Lcom/google/android/gms/internal/fe;

    move-result-object v0

    return-object v0
.end method