.class public Lcom/google/android/gms/internal/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/aj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/aj;Landroid/os/Parcel;I)V
    .registers 8

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/aj;->versionCode:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/aj;->lQ:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->extras:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/internal/aj;->lR:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->lS:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/internal/aj;->lT:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/android/gms/internal/aj;->lU:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/aj;->lV:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->lW:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->lX:Lcom/google/android/gms/internal/ax;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->lY:Landroid/location/Location;

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->lZ:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/aj;->ma:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/aj;
    .registers 20

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    move-result v16

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    move/from16 v0, v16

    if-ge v1, v0, :cond_90

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    move-result v17

    packed-switch v17, :pswitch_data_bc

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_12

    :pswitch_2b
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_12

    :pswitch_32
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v3

    goto :goto_12

    :pswitch_39
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_12

    :pswitch_40
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v6

    goto :goto_12

    :pswitch_47
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;I)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_12

    :pswitch_4e
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v8

    goto :goto_12

    :pswitch_55
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v9

    goto :goto_12

    :pswitch_5c
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->c(Landroid/os/Parcel;I)Z

    move-result v10

    goto :goto_12

    :pswitch_63
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v11

    goto :goto_12

    :pswitch_6a
    sget-object v12, Lcom/google/android/gms/internal/ax;->CREATOR:Lcom/google/android/gms/internal/ay;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v12}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ax;

    move-object v12, v1

    goto :goto_12

    :pswitch_76
    sget-object v13, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-static {v0, v1, v13}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    move-object v13, v1

    goto :goto_12

    :pswitch_82
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v14

    goto :goto_12

    :pswitch_89
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/a;->q(Landroid/os/Parcel;I)Landroid/os/Bundle;

    move-result-object v15

    goto :goto_12

    :cond_90
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    move/from16 v0, v16

    if-eq v1, v0, :cond_b6

    new-instance v1, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Overread allowed size end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v1

    :cond_b6
    new-instance v1, Lcom/google/android/gms/internal/aj;

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/aj;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/ax;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_32
        :pswitch_39
        :pswitch_40
        :pswitch_47
        :pswitch_4e
        :pswitch_55
        :pswitch_5c
        :pswitch_63
        :pswitch_6a
        :pswitch_76
        :pswitch_82
        :pswitch_89
    .end packed-switch
.end method

.method public c(I)[Lcom/google/android/gms/internal/aj;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/internal/aj;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ak;->b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/aj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ak;->c(I)[Lcom/google/android/gms/internal/aj;

    move-result-object v0

    return-object v0
.end method
