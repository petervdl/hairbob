.class public Lcom/google/android/gms/location/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/c;


# instance fields
.field Vn:I

.field Vo:I

.field Vp:J

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/location/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/b;->CREATOR:Lcom/google/android/gms/location/c;

    return-void
.end method

.method constructor <init>(IIIJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/b;->xJ:I

    iput p2, p0, Lcom/google/android/gms/location/b;->Vn:I

    iput p3, p0, Lcom/google/android/gms/location/b;->Vo:I

    iput-wide p4, p0, Lcom/google/android/gms/location/b;->Vp:J

    return-void
.end method

.method private cI(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_28

    :pswitch_3
    const-string/jumbo v0, "STATUS_UNKNOWN"

    :goto_6
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "STATUS_SUCCESSFUL"

    goto :goto_6

    :pswitch_b
    const-string/jumbo v0, "STATUS_TIMED_OUT_ON_SCAN"

    goto :goto_6

    :pswitch_f
    const-string/jumbo v0, "STATUS_NO_INFO_IN_DATABASE"

    goto :goto_6

    :pswitch_13
    const-string/jumbo v0, "STATUS_INVALID_SCAN"

    goto :goto_6

    :pswitch_17
    const-string/jumbo v0, "STATUS_UNABLE_TO_QUERY_DATABASE"

    goto :goto_6

    :pswitch_1b
    const-string/jumbo v0, "STATUS_SCANS_DISABLED_IN_SETTINGS"

    goto :goto_6

    :pswitch_1f
    const-string/jumbo v0, "STATUS_LOCATION_DISABLED_IN_SETTINGS"

    goto :goto_6

    :pswitch_23
    const-string/jumbo v0, "STATUS_IN_PROGRESS"

    goto :goto_6

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_7
        :pswitch_3
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/b;

    if-nez v1, :cond_6

    .end local p1    # "other":Ljava/lang/Object;
    :cond_5
    :goto_5
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_6
    check-cast p1, Lcom/google/android/gms/location/b;

    .end local p1    # "other":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/location/b;->Vn:I

    iget v2, p1, Lcom/google/android/gms/location/b;->Vn:I

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/google/android/gms/location/b;->Vo:I

    iget v2, p1, Lcom/google/android/gms/location/b;->Vo:I

    if-ne v1, v2, :cond_5

    iget-wide v1, p0, Lcom/google/android/gms/location/b;->Vp:J

    iget-wide v3, p1, Lcom/google/android/gms/location/b;->Vp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/location/b;->xJ:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/b;->Vn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/location/b;->Vo:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/location/b;->Vp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LocationStatus[cell status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/b;->Vn:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/location/b;->cI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", wifi status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/location/b;->Vo:I

    invoke-direct {p0, v2}, Lcom/google/android/gms/location/b;->cI(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", elapsed realtime ns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/location/b;->Vp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/c;->a(Lcom/google/android/gms/location/b;Landroid/os/Parcel;I)V

    return-void
.end method
