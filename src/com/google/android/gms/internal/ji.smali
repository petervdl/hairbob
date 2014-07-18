.class public Lcom/google/android/gms/internal/ji;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/location/Geofence;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jj;


# instance fields
.field private final Oy:Ljava/lang/String;

.field private final UX:I

.field private final UZ:S

.field private final VW:J

.field private final Va:D

.field private final Vb:D

.field private final Vc:F

.field private final Vd:I

.field private final Ve:I

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/jj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ji;->CREATOR:Lcom/google/android/gms/internal/jj;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ISDDFJII)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/ji;->bq(Ljava/lang/String;)V

    invoke-static {p9}, Lcom/google/android/gms/internal/ji;->b(F)V

    invoke-static {p5, p6, p7, p8}, Lcom/google/android/gms/internal/ji;->a(DD)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ji;->cM(I)I

    move-result v0

    iput p1, p0, Lcom/google/android/gms/internal/ji;->xJ:I

    iput-short p4, p0, Lcom/google/android/gms/internal/ji;->UZ:S

    iput-object p2, p0, Lcom/google/android/gms/internal/ji;->Oy:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ji;->Va:D

    iput-wide p7, p0, Lcom/google/android/gms/internal/ji;->Vb:D

    iput p9, p0, Lcom/google/android/gms/internal/ji;->Vc:F

    iput-wide p10, p0, Lcom/google/android/gms/internal/ji;->VW:J

    iput v0, p0, Lcom/google/android/gms/internal/ji;->UX:I

    iput p12, p0, Lcom/google/android/gms/internal/ji;->Vd:I

    iput p13, p0, Lcom/google/android/gms/internal/ji;->Ve:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ISDDFJII)V
    .registers 27

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    move-wide/from16 v10, p9

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ji;-><init>(ILjava/lang/String;ISDDFJII)V

    return-void
.end method

.method private static a(DD)V
    .registers 7

    const-wide v0, 0x4056800000000000L

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_12

    const-wide v0, -0x3fa9800000000000L

    cmpg-double v0, p0, v0

    if-gez v0, :cond_2c

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const-wide v0, 0x4066800000000000L

    cmpl-double v0, p2, v0

    if-gtz v0, :cond_3e

    const-wide v0, -0x3f99800000000000L

    cmpg-double v0, p2, v0

    if-gez v0, :cond_58

    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    return-void
.end method

.method private static b(F)V
    .registers 4

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid radius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    return-void
.end method

.method private static bq(Ljava/lang/String;)V
    .registers 4

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_24

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestId is null or too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return-void
.end method

.method private static cM(I)I
    .registers 4

    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No supported transition specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    return v0
.end method

.method private static cN(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_a

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    const-string/jumbo v0, "CIRCLE"

    goto :goto_4

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/ji;->CREATOR:Lcom/google/android/gms/internal/jj;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    instance-of v2, p1, Lcom/google/android/gms/internal/ji;

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_4

    :cond_f
    check-cast p1, Lcom/google/android/gms/internal/ji;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/internal/ji;->Vc:F

    iget v3, p1, Lcom/google/android/gms/internal/ji;->Vc:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1b

    move v0, v1

    goto :goto_4

    :cond_1b
    iget-wide v2, p0, Lcom/google/android/gms/internal/ji;->Va:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/ji;->Va:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget-wide v2, p0, Lcom/google/android/gms/internal/ji;->Vb:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/ji;->Vb:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2f

    move v0, v1

    goto :goto_4

    :cond_2f
    iget-short v2, p0, Lcom/google/android/gms/internal/ji;->UZ:S

    iget-short v3, p1, Lcom/google/android/gms/internal/ji;->UZ:S

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getExpirationTime()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ji;->VW:J

    return-wide v0
.end method

.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ji;->Va:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ji;->Vb:D

    return-wide v0
.end method

.method public getNotificationResponsiveness()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ji;->Vd:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ji;->Oy:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ji;->xJ:I

    return v0
.end method

.method public hashCode()I
    .registers 6

    const/16 v4, 0x20

    iget-wide v0, p0, Lcom/google/android/gms/internal/ji;->Va:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    ushr-long v2, v0, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ji;->Vb:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v3, v1, v4

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ji;->Vc:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-short v1, p0, Lcom/google/android/gms/internal/ji;->UZ:S

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ji;->UX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public iV()S
    .registers 2

    iget-short v0, p0, Lcom/google/android/gms/internal/ji;->UZ:S

    return v0
.end method

.method public iW()F
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ji;->Vc:F

    return v0
.end method

.method public iX()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ji;->UX:I

    return v0
.end method

.method public iY()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ji;->Ve:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-short v4, p0, Lcom/google/android/gms/internal/ji;->UZ:S

    invoke-static {v4}, Lcom/google/android/gms/internal/ji;->cN(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ji;->Oy:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/google/android/gms/internal/ji;->UX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/google/android/gms/internal/ji;->Va:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/google/android/gms/internal/ji;->Vb:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/google/android/gms/internal/ji;->Vc:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/google/android/gms/internal/ji;->Vd:I

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget v4, p0, Lcom/google/android/gms/internal/ji;->Ve:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-wide v4, p0, Lcom/google/android/gms/internal/ji;->VW:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/ji;->CREATOR:Lcom/google/android/gms/internal/jj;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/internal/ji;Landroid/os/Parcel;I)V

    return-void
.end method
