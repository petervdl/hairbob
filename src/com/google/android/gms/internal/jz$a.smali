.class public abstract Lcom/google/android/gms/internal/jz$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/jz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jz$a$a;
    }
.end annotation


# direct methods
.method public static au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/jz;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/jz;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/jz$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jz$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_58

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_12
    const-string/jumbo v2, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz$a;->V(Lcom/google/android/gms/common/data/DataHolder;)V

    move v0, v1

    goto :goto_9

    :sswitch_29
    const-string/jumbo v2, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_3b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz$a;->W(Lcom/google/android/gms/common/data/DataHolder;)V

    move v0, v1

    goto :goto_9

    :sswitch_40
    const-string/jumbo v2, "com.google.android.gms.location.places.internal.IPlacesCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_52

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_52
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jz$a;->X(Lcom/google/android/gms/common/data/DataHolder;)V

    move v0, v1

    goto :goto_9

    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_29
        0x3 -> :sswitch_40
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
