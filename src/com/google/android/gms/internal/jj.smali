.class public Lcom/google/android/gms/internal/jj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/internal/ji;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ji;Landroid/os/Parcel;I)V
    .registers 7

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->C(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->getRequestId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x3e8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->getVersionCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->getExpirationTime()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->iV()S

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IS)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->getLatitude()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->getLongitude()D

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->iW()F

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IF)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->iX()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->getNotificationResponsiveness()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ji;->iY()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->c(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->G(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public bt(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ji;
    .registers 19

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->B(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-ge v15, v1, :cond_6e

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/safeparcel/a;->A(Landroid/os/Parcel;)I

    move-result v15

    invoke-static {v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->ar(I)I

    move-result v16

    sparse-switch v16, :sswitch_data_96

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    goto :goto_11

    :sswitch_28
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :sswitch_2f
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_11

    :sswitch_36
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->i(Landroid/os/Parcel;I)J

    move-result-wide v11

    goto :goto_11

    :sswitch_3d
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->f(Landroid/os/Parcel;I)S

    move-result v5

    goto :goto_11

    :sswitch_44
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    move-result-wide v6

    goto :goto_11

    :sswitch_4b
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->m(Landroid/os/Parcel;I)D

    move-result-wide v8

    goto :goto_11

    :sswitch_52
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->l(Landroid/os/Parcel;I)F

    move-result v10

    goto :goto_11

    :sswitch_59
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_11

    :sswitch_60
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v13

    goto :goto_11

    :sswitch_67
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/gms/common/internal/safeparcel/a;->g(Landroid/os/Parcel;I)I

    move-result v14

    goto :goto_11

    :cond_6e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v15

    if-eq v15, v1, :cond_90

    new-instance v2, Lcom/google/android/gms/common/internal/safeparcel/a$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Overread allowed size end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a$a;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    throw v2

    :cond_90
    new-instance v1, Lcom/google/android/gms/internal/ji;

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/ji;-><init>(ILjava/lang/String;ISDDFJII)V

    return-object v1

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_28
        0x2 -> :sswitch_36
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_44
        0x5 -> :sswitch_4b
        0x6 -> :sswitch_52
        0x7 -> :sswitch_59
        0x8 -> :sswitch_60
        0x9 -> :sswitch_67
        0x3e8 -> :sswitch_2f
    .end sparse-switch
.end method

.method public cO(I)[Lcom/google/android/gms/internal/ji;
    .registers 3

    new-array v0, p1, [Lcom/google/android/gms/internal/ji;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jj;->bt(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ji;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jj;->cO(I)[Lcom/google/android/gms/internal/ji;

    move-result-object v0

    return-object v0
.end method