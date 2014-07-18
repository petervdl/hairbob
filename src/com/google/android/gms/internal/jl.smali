.class public final Lcom/google/android/gms/internal/jl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/jm;


# instance fields
.field private final UX:I

.field private final VX:I

.field private final VY:Lcom/google/android/gms/internal/jn;

.field private final xJ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/jm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/jl;->CREATOR:Lcom/google/android/gms/internal/jm;

    return-void
.end method

.method constructor <init>(IIILcom/google/android/gms/internal/jn;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/jl;->xJ:I

    iput p2, p0, Lcom/google/android/gms/internal/jl;->UX:I

    iput p3, p0, Lcom/google/android/gms/internal/jl;->VX:I

    iput-object p4, p0, Lcom/google/android/gms/internal/jl;->VY:Lcom/google/android/gms/internal/jn;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/jl;->CREATOR:Lcom/google/android/gms/internal/jm;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    .end local p1    # "object":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/jl;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/jl;

    .end local p1    # "object":Ljava/lang/Object;
    iget v2, p0, Lcom/google/android/gms/internal/jl;->UX:I

    iget v3, p1, Lcom/google/android/gms/internal/jl;->UX:I

    if-ne v2, v3, :cond_23

    iget v2, p0, Lcom/google/android/gms/internal/jl;->VX:I

    iget v3, p1, Lcom/google/android/gms/internal/jl;->VX:I

    if-ne v2, v3, :cond_23

    iget-object v2, p0, Lcom/google/android/gms/internal/jl;->VY:Lcom/google/android/gms/internal/jn;

    iget-object v3, p1, Lcom/google/android/gms/internal/jl;->VY:Lcom/google/android/gms/internal/jn;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/jn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_23
    move v0, v1

    goto :goto_4
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jl;->xJ:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/jl;->UX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/jl;->VX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iX()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jl;->UX:I

    return v0
.end method

.method public iZ()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/jl;->VX:I

    return v0
.end method

.method public ja()Lcom/google/android/gms/internal/jn;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jl;->VY:Lcom/google/android/gms/internal/jn;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/internal/hl;->e(Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "transitionTypes"

    iget v2, p0, Lcom/google/android/gms/internal/jl;->UX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "loiteringTimeMillis"

    iget v2, p0, Lcom/google/android/gms/internal/jl;->VX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    const-string/jumbo v1, "placeFilter"

    iget-object v2, p0, Lcom/google/android/gms/internal/jl;->VY:Lcom/google/android/gms/internal/jn;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/hl$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/hl$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/hl$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/jl;->CREATOR:Lcom/google/android/gms/internal/jm;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/jm;->a(Lcom/google/android/gms/internal/jl;Landroid/os/Parcel;I)V

    return-void
.end method
