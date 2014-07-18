.class public abstract Lcom/google/android/gms/internal/jf$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/jf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jf$a$a;
    }
.end annotation


# direct methods
.method public static as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jf;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/internal/jf;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/internal/jf;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/internal/jf$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jf$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
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

    const/4 v7, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_53e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_a
    return v7

    :sswitch_b
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_12
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ji;->CREATOR:Lcom/google/android/gms/internal/jj;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/je$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/jf$a;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_3f
    move-object v0, v5

    goto :goto_2c

    :sswitch_41
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_68

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/je$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/jf$a;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_68
    move-object v0, v5

    goto :goto_55

    :sswitch_6a
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/je$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/jf$a;->a([Ljava/lang/String;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_87
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/je$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_a1
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c8

    move v1, v7

    :goto_b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ca

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_c0
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/android/gms/internal/jf$a;->a(JZLandroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_c8
    move v1, v0

    goto :goto_b2

    :cond_ca
    move-object v0, v5

    goto :goto_c0

    :sswitch_cc
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e8

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_e0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_e8
    move-object v0, v5

    goto :goto_e0

    :sswitch_ea
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jf$a;->iR()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_101

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_106
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_118

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    :cond_118
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_128
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_151

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    move-object v1, v0

    :goto_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_153

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_149
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_151
    move-object v1, v5

    goto :goto_13b

    :cond_153
    move-object v0, v5

    goto :goto_149

    :sswitch_155
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/location/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_16b
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_187

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_17f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->a(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_187
    move-object v0, v5

    goto :goto_17f

    :sswitch_189
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_196

    move v0, v7

    :cond_196
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->setMockMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_19e
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ba

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_1b2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->setMockLocation(Landroid/location/Location;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_1ba
    move-object v0, v5

    goto :goto_1b2

    :sswitch_1bc
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1fb

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    :goto_1ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1fd

    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v3

    :goto_1de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ff

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v4

    :goto_1ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_1fb
    move-object v1, v5

    goto :goto_1ce

    :cond_1fd
    move-object v3, v5

    goto :goto_1de

    :cond_1ff
    move-object v4, v5

    goto :goto_1ea

    :sswitch_201
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_244

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    :goto_213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_246

    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v4

    :goto_227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_233

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_244
    move-object v1, v5

    goto :goto_213

    :cond_246
    move-object v4, v5

    goto :goto_227

    :sswitch_248
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_25e

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_25e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/jf$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_26e
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2a8

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    :goto_280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2aa

    sget-object v1, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v1

    :goto_28c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_298

    sget-object v2, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_298
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_2a8
    move-object v0, v5

    goto :goto_280

    :cond_2aa
    move-object v1, v5

    goto :goto_28c

    :sswitch_2ac
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2da

    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v0

    :goto_2be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2ca

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_2ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_2da
    move-object v0, v5

    goto :goto_2be

    :sswitch_2dc
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2f2

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_2f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/jf$a;->b(Ljava/lang/String;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_302
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/jx;->CREATOR:Lcom/google/android/gms/internal/jy;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_333

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v4

    :goto_322
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jf$a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_333
    move-object v4, v5

    goto :goto_322

    :sswitch_335
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36b

    sget-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/js;->bx(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jr;

    move-result-object v0

    move-object v1, v0

    :goto_348
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36d

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v0

    move-object v2, v0

    :goto_355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_36f

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_363
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jr;Lcom/google/android/gms/internal/kb;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_36b
    move-object v1, v5

    goto :goto_348

    :cond_36d
    move-object v2, v5

    goto :goto_355

    :cond_36f
    move-object v0, v5

    goto :goto_363

    :sswitch_371
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39a

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v0

    move-object v1, v0

    :goto_384
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_39c

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_392
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/kb;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_39a
    move-object v1, v5

    goto :goto_384

    :cond_39c
    move-object v0, v5

    goto :goto_392

    :sswitch_39e
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d4

    sget-object v0, Lcom/google/android/gms/internal/jl;->CREATOR:Lcom/google/android/gms/internal/jm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jm;->bu(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jl;

    move-result-object v0

    move-object v1, v0

    :goto_3b1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d6

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v0

    move-object v2, v0

    :goto_3be
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d8

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_3cc
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jl;Lcom/google/android/gms/internal/kb;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_3d4
    move-object v1, v5

    goto :goto_3b1

    :cond_3d6
    move-object v2, v5

    goto :goto_3be

    :cond_3d8
    move-object v0, v5

    goto :goto_3cc

    :sswitch_3da
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_403

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v0

    move-object v1, v0

    :goto_3ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_405

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_3fb
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/jf$a;->b(Lcom/google/android/gms/internal/kb;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_403
    move-object v1, v5

    goto :goto_3ed

    :cond_405
    move-object v0, v5

    goto :goto_3fb

    :sswitch_407
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_446

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    :goto_41d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_448

    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v3

    :goto_429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_44a

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v4

    :goto_435
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jf$a;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_446
    move-object v2, v5

    goto :goto_41d

    :cond_448
    move-object v3, v5

    goto :goto_429

    :cond_44a
    move-object v4, v5

    goto :goto_435

    :sswitch_44c
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_47c

    sget-object v0, Lcom/google/android/gms/internal/jv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jv;

    :goto_460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_46c

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_46c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jv;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_47c
    move-object v0, v5

    goto :goto_460

    :sswitch_47e
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_490

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    :cond_490
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_4a4
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jf$a;->bo(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4bf

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_4bf
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_4c4
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4e7

    sget-object v0, Lcom/google/android/gms/internal/jp;->CREATOR:Lcom/google/android/gms/internal/jq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jq;->bw(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jp;

    move-result-object v0

    :goto_4d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4e2

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_4e2
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/internal/kb;)V

    goto/16 :goto_a

    :cond_4e7
    move-object v0, v5

    goto :goto_4d6

    :sswitch_4e9
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_509

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_4fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/jf$a;->a(Landroid/location/Location;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_509
    move-object v0, v5

    goto :goto_4fd

    :sswitch_50b
    const-string/jumbo v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jf$a;->bp(Ljava/lang/String;)Lcom/google/android/gms/location/b;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_526

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Lcom/google/android/gms/location/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_526
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_52b
    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jf$a;->iS()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    nop

    :sswitch_data_53e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_41
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_87
        0x5 -> :sswitch_a1
        0x6 -> :sswitch_cc
        0x7 -> :sswitch_ea
        0x8 -> :sswitch_106
        0x9 -> :sswitch_128
        0xa -> :sswitch_155
        0xb -> :sswitch_16b
        0xc -> :sswitch_189
        0xd -> :sswitch_19e
        0xe -> :sswitch_1bc
        0xf -> :sswitch_248
        0x10 -> :sswitch_26e
        0x11 -> :sswitch_2ac
        0x12 -> :sswitch_335
        0x13 -> :sswitch_371
        0x14 -> :sswitch_47e
        0x15 -> :sswitch_4a4
        0x19 -> :sswitch_4c4
        0x1a -> :sswitch_4e9
        0x22 -> :sswitch_50b
        0x2a -> :sswitch_2dc
        0x2d -> :sswitch_407
        0x2e -> :sswitch_44c
        0x2f -> :sswitch_201
        0x30 -> :sswitch_39e
        0x31 -> :sswitch_3da
        0x32 -> :sswitch_302
        0x33 -> :sswitch_52b
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
