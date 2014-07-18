.class public abstract Lcom/google/android/gms/internal/mf;
.super Ljava/lang/Object;


# instance fields
.field protected volatile amY:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mf;->amY:I

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/mf;[BII)V
    .registers 7

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ma;->b([BII)Lcom/google/android/gms/internal/ma;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mf;->a(Lcom/google/android/gms/internal/ma;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ma;->nM()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final d(Lcom/google/android/gms/internal/mf;)[B
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mf;->nV()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/mf;->a(Lcom/google/android/gms/internal/mf;[BII)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/ma;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public nV()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mf;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/mf;->amY:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/mg;->e(Lcom/google/android/gms/internal/mf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
