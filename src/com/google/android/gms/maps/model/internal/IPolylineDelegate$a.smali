.class public abstract Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a$a;
    }
.end annotation


# direct methods
.method public static be(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a$a;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_140

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->remove()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_1e
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_2f
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setPoints(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_42
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    :sswitch_53
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setWidth(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_64
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getWidth()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_9

    :sswitch_75
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setColor(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_86
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getColor()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_98
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setZIndex(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_aa
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->getZIndex()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    :sswitch_bc
    const-string/jumbo v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c9

    move v0, v1

    :cond_c9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setVisible(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_d1
    const-string/jumbo v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->isVisible()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_e1

    move v0, v1

    :cond_e1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_e6
    const-string/jumbo v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_f3

    move v0, v1

    :cond_f3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->setGeodesic(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_fb
    const-string/jumbo v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->isGeodesic()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_10b

    move v0, v1

    :cond_10b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_110
    const-string/jumbo v2, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->be(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->equalsRemote(Lcom/google/android/gms/maps/model/internal/IPolylineDelegate;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_128

    move v0, v1

    :cond_128
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_12d
    const-string/jumbo v0, "com.google.android.gms.maps.model.internal.IPolylineDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/IPolylineDelegate$a;->hashCodeRemote()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    nop

    :sswitch_data_140
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_42
        0x5 -> :sswitch_53
        0x6 -> :sswitch_64
        0x7 -> :sswitch_75
        0x8 -> :sswitch_86
        0x9 -> :sswitch_98
        0xa -> :sswitch_aa
        0xb -> :sswitch_bc
        0xc -> :sswitch_d1
        0xd -> :sswitch_e6
        0xe -> :sswitch_fb
        0xf -> :sswitch_110
        0x10 -> :sswitch_12d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
