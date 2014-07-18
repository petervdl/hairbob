.class public abstract Lcom/google/android/gms/plus/internal/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/plus/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/internal/d$a$a;
    }
.end annotation


# direct methods
.method public static bm(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/gms/plus/internal/d;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/google/android/gms/plus/internal/d;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/google/android/gms/plus/internal/d$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/internal/d$a$a;-><init>(Landroid/os/IBinder;)V

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
    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_26a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    :sswitch_a
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_11
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_2a
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_47
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->b(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_60
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_79

    sget-object v0, Lcom/google/android/gms/internal/if;->CREATOR:Lcom/google/android/gms/internal/ig;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ig;->L(Landroid/os/Parcel;)Lcom/google/android/gms/internal/if;

    move-result-object v0

    :goto_72
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/internal/if;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :cond_79
    move-object v0, v6

    goto :goto_72

    :sswitch_7b
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->getAccountName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_8d
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->clearDefaultAccount()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_9b
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_b1
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e4

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    :goto_ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e6

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_dc
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :cond_e4
    move-object v1, v6

    goto :goto_ce

    :cond_e6
    move-object v0, v6

    goto :goto_dc

    :sswitch_e8
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11e

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v4, v0

    :goto_10d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :cond_11e
    move-object v4, v6

    goto :goto_10d

    :sswitch_120
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)Lcom/google/android/gms/internal/hh;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_14c

    invoke-interface {v0}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :cond_14c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_9

    :sswitch_151
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->removeMoment(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_163
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->c(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_17d
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->b(Lcom/google/android/gms/plus/internal/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_193
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_1ad
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->d(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_1c7
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->jP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1d9
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->jQ()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1ee

    move v0, v7

    :goto_1e9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :cond_1ee
    const/4 v0, 0x0

    goto :goto_1e9

    :sswitch_1f0
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->jR()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_202
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->e(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_21c
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_236

    sget-object v1, Lcom/google/android/gms/internal/if;->CREATOR:Lcom/google/android/gms/internal/ig;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ig;->L(Landroid/os/Parcel;)Lcom/google/android/gms/internal/if;

    move-result-object v6

    :cond_236
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Lcom/google/android/gms/internal/if;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_23e
    const-string/jumbo v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_268

    sget-object v0, Lcom/google/android/gms/internal/hs;->CREATOR:Lcom/google/android/gms/internal/ht;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ht;->D(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hs;

    move-result-object v0

    :goto_254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_260

    sget-object v2, Lcom/google/android/gms/internal/hs;->CREATOR:Lcom/google/android/gms/internal/ht;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ht;->D(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hs;

    move-result-object v6

    :cond_260
    invoke-virtual {p0, v1, v0, v6}, Lcom/google/android/gms/plus/internal/d$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/hs;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :cond_268
    move-object v0, v6

    goto :goto_254

    :sswitch_data_26a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_47
        0x4 -> :sswitch_60
        0x5 -> :sswitch_7b
        0x6 -> :sswitch_8d
        0x8 -> :sswitch_9b
        0x9 -> :sswitch_b1
        0xe -> :sswitch_e8
        0x10 -> :sswitch_120
        0x11 -> :sswitch_151
        0x12 -> :sswitch_163
        0x13 -> :sswitch_17d
        0x22 -> :sswitch_193
        0x28 -> :sswitch_1ad
        0x29 -> :sswitch_1c7
        0x2a -> :sswitch_1d9
        0x2b -> :sswitch_1f0
        0x2c -> :sswitch_202
        0x2d -> :sswitch_21c
        0x2e -> :sswitch_23e
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
