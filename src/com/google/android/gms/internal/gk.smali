.class public Lcom/google/android/gms/internal/gk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/gk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AM:D

.field private AN:Z

.field private BO:I

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/gl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gk;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    const/4 v1, 0x1

    const-wide/high16 v2, 0x7ff8000000000000L

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gk;-><init>(IDZI)V

    return-void
.end method

.method constructor <init>(IDZI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gk;->xJ:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/gk;->AM:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/gk;->AN:Z

    iput p5, p0, Lcom/google/android/gms/internal/gk;->BO:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public ec()D
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/gk;->AM:D

    return-wide v0
.end method

.method public ei()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gk;->AN:Z

    return v0
.end method

.method public ej()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gk;->BO:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/gk;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/gk;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/google/android/gms/internal/gk;->AM:D

    iget-wide v4, p1, Lcom/google/android/gms/internal/gk;->AM:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_21

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gk;->AN:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/gk;->AN:Z

    if-ne v2, v3, :cond_21

    iget v2, p0, Lcom/google/android/gms/internal/gk;->BO:I

    iget v3, p1, Lcom/google/android/gms/internal/gk;->BO:I

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/gk;->xJ:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/gk;->AM:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/gk;->AN:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/internal/gk;->BO:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gl;->a(Lcom/google/android/gms/internal/gk;Landroid/os/Parcel;I)V

    return-void
.end method
