.class public final Lcom/google/android/gms/internal/ci;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/ch;


# instance fields
.field public final kO:Lcom/google/android/gms/internal/ew;

.field public final nZ:Ljava/lang/String;

.field public final oA:Ljava/lang/String;

.field public final oB:Lcom/google/android/gms/internal/cm;

.field public final oC:I

.field public final oD:Lcom/google/android/gms/internal/be;

.field public final oE:Ljava/lang/String;

.field public final oF:Lcom/google/android/gms/internal/w;

.field public final orientation:I

.field public final ot:Lcom/google/android/gms/internal/cf;

.field public final ou:Lcom/google/android/gms/internal/u;

.field public final ov:Lcom/google/android/gms/internal/cj;

.field public final ow:Lcom/google/android/gms/internal/ey;

.field public final ox:Lcom/google/android/gms/internal/bb;

.field public final oy:Ljava/lang/String;

.field public final oz:Z

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ch;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ch;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ci;->CREATOR:Lcom/google/android/gms/internal/ch;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/cf;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/ew;Landroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/internal/w;)V
    .registers 20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ci;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ci;->ot:Lcom/google/android/gms/internal/cf;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/u;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->ou:Lcom/google/android/gms/internal/u;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->ov:Lcom/google/android/gms/internal/cj;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ey;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->ow:Lcom/google/android/gms/internal/ey;

    invoke-static {p6}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/bb;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->ox:Lcom/google/android/gms/internal/bb;

    iput-object p7, p0, Lcom/google/android/gms/internal/ci;->oy:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/internal/ci;->oz:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ci;->oA:Ljava/lang/String;

    invoke-static {p10}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/cm;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->oB:Lcom/google/android/gms/internal/cm;

    iput p11, p0, Lcom/google/android/gms/internal/ci;->orientation:I

    iput p12, p0, Lcom/google/android/gms/internal/ci;->oC:I

    iput-object p13, p0, Lcom/google/android/gms/internal/ci;->nZ:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/ci;->kO:Lcom/google/android/gms/internal/ew;

    invoke-static/range {p15 .. p15}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/e;->e(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/be;

    iput-object v1, p0, Lcom/google/android/gms/internal/ci;->oD:Lcom/google/android/gms/internal/be;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/ci;->oE:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/ci;->oF:Lcom/google/android/gms/internal/w;

    return-void
.end method


# virtual methods
.method aP()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->ou:Lcom/google/android/gms/internal/u;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method aQ()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->ov:Lcom/google/android/gms/internal/cj;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method aR()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->ow:Lcom/google/android/gms/internal/ey;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method aS()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->ox:Lcom/google/android/gms/internal/bb;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method aT()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->oD:Lcom/google/android/gms/internal/be;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method aU()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ci;->oB:Lcom/google/android/gms/internal/cm;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ch;->a(Lcom/google/android/gms/internal/ci;Landroid/os/Parcel;I)V

    return-void
.end method
