.class public final Lcom/google/android/gms/internal/gx$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final FP:I

.field public final FQ:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gx$a;->FP:I

    iput p2, p0, Lcom/google/android/gms/internal/gx$a;->FQ:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/internal/gx$a;

    if-nez v2, :cond_8

    move v0, v1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_7
    :goto_7
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_8
    if-eq p0, p1, :cond_7

    check-cast p1, Lcom/google/android/gms/internal/gx$a;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v2, p1, Lcom/google/android/gms/internal/gx$a;->FP:I

    iget v3, p0, Lcom/google/android/gms/internal/gx$a;->FP:I

    if-ne v2, v3, :cond_18

    iget v2, p1, Lcom/google/android/gms/internal/gx$a;->FQ:I

    iget v3, p0, Lcom/google/android/gms/internal/gx$a;->FQ:I

    if-eq v2, v3, :cond_7

    :cond_18
    move v0, v1

    goto :goto_7
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/gx$a;->FP:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/gx$a;->FQ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/hl;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
