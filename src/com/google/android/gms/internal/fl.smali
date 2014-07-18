.class public Lcom/google/android/gms/internal/fl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/fm;

.field public static final xQ:I


# instance fields
.field final xJ:I

.field public final xR:Ljava/lang/String;

.field final xS:Lcom/google/android/gms/internal/fq;

.field public final xT:I

.field public final xU:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "-1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/fl;->xQ:I

    new-instance v0, Lcom/google/android/gms/internal/fm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fm;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fl;->CREATOR:Lcom/google/android/gms/internal/fm;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/fq;I[B)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/fl;->xQ:I

    if-eq p4, v0, :cond_d

    invoke-static {p4}, Lcom/google/android/gms/internal/fp;->H(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3b

    :cond_d
    const/4 v0, 0x1

    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid section type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/internal/fl;->xJ:I

    iput-object p2, p0, Lcom/google/android/gms/internal/fl;->xR:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fl;->xS:Lcom/google/android/gms/internal/fq;

    iput p4, p0, Lcom/google/android/gms/internal/fl;->xT:I

    iput-object p5, p0, Lcom/google/android/gms/internal/fl;->xU:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fl;->dJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    const/4 v0, 0x0

    goto :goto_e

    :cond_3d
    return-void
.end method


# virtual methods
.method public dJ()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/fl;->xT:I

    sget v1, Lcom/google/android/gms/internal/fl;->xQ:I

    if-eq v0, v1, :cond_25

    iget v0, p0, Lcom/google/android/gms/internal/fl;->xT:I

    invoke-static {v0}, Lcom/google/android/gms/internal/fp;->H(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Invalid section type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/fl;->xT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->xR:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/fl;->xU:[B

    if-eqz v0, :cond_31

    const-string/jumbo v0, "Both content and blobContent set"

    goto :goto_24

    :cond_31
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public describeContents()I
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/fl;->CREATOR:Lcom/google/android/gms/internal/fm;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/fl;->CREATOR:Lcom/google/android/gms/internal/fm;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/fm;->a(Lcom/google/android/gms/internal/fl;Landroid/os/Parcel;I)V

    return-void
.end method
