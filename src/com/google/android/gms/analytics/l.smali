.class Lcom/google/android/gms/analytics/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/Logger;


# instance fields
.field private tK:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/analytics/l;->tK:I

    return-void
.end method

.method private L(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tK:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_f

    const-string/jumbo v0, "GAV4"

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/l;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public getLogLevel()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/l;->tK:I

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tK:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_f

    const-string/jumbo v0, "GAV4"

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/l;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public setLogLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/analytics/l;->tK:I

    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tK:I

    if-gtz v0, :cond_e

    const-string/jumbo v0, "GAV4"

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/l;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    iget v0, p0, Lcom/google/android/gms/analytics/l;->tK:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_f

    const-string/jumbo v0, "GAV4"

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/l;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method
