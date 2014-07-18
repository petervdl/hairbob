.class Lcom/google/android/gms/analytics/r;
.super Lcom/google/android/gms/analytics/af;


# static fields
.field private static final tQ:Ljava/lang/Object;

.field private static uc:Lcom/google/android/gms/analytics/r;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private tR:Lcom/google/android/gms/analytics/d;

.field private volatile tS:Lcom/google/android/gms/analytics/f;

.field private tT:I

.field private tU:Z

.field private tV:Z

.field private tW:Ljava/lang/String;

.field private tX:Z

.field private tY:Z

.field private tZ:Lcom/google/android/gms/analytics/e;

.field private ua:Lcom/google/android/gms/analytics/q;

.field private ub:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/r;->tQ:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/af;-><init>()V

    const/16 v0, 0x708

    iput v0, p0, Lcom/google/android/gms/analytics/r;->tT:I

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/r;->tU:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/r;->tX:Z

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/r;->tY:Z

    new-instance v0, Lcom/google/android/gms/analytics/r$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/r$1;-><init>(Lcom/google/android/gms/analytics/r;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->tZ:Lcom/google/android/gms/analytics/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/analytics/r;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tX:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/r;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/analytics/r;->tT:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/r;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    return v0
.end method

.method private cA()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/analytics/q;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/q;-><init>(Lcom/google/android/gms/analytics/af;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->ua:Lcom/google/android/gms/analytics/q;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ua:Lcom/google/android/gms/analytics/q;

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/q;->s(Landroid/content/Context;)V

    return-void
.end method

.method private cB()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/analytics/r$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/analytics/r$2;-><init>(Lcom/google/android/gms/analytics/r;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    iget v0, p0, Lcom/google/android/gms/analytics/r;->tT:I

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/r;->tQ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/r;->tT:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_29
    return-void
.end method

.method static synthetic cE()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/r;->tQ:Ljava/lang/Object;

    return-object v0
.end method

.method public static cz()Lcom/google/android/gms/analytics/r;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/r;->uc:Lcom/google/android/gms/analytics/r;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/analytics/r;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/r;->uc:Lcom/google/android/gms/analytics/r;

    :cond_b
    sget-object v0, Lcom/google/android/gms/analytics/r;->uc:Lcom/google/android/gms/analytics/r;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/analytics/r;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method declared-synchronized a(Landroid/content/Context;Lcom/google/android/gms/analytics/f;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    if-eqz v0, :cond_7

    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tS:Lcom/google/android/gms/analytics/f;

    if-nez v0, :cond_5

    iput-object p2, p0, Lcom/google/android/gms/analytics/r;->tS:Lcom/google/android/gms/analytics/f;

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tU:Z

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/r;->dispatchLocalHits()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tU:Z

    :cond_1d
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tV:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/r;->cn()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tV:Z
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_28

    goto :goto_5

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(ZZ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    if-ne v0, p1, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tX:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_59

    if-ne v0, p2, :cond_b

    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    if-nez p1, :cond_f

    if-nez p2, :cond_1b

    :cond_f
    :try_start_f
    iget v0, p0, Lcom/google/android/gms/analytics/r;->tT:I

    if-lez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/r;->tQ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1b
    if-nez p1, :cond_36

    if-eqz p2, :cond_36

    iget v0, p0, Lcom/google/android/gms/analytics/r;->tT:I

    if-lez v0, :cond_36

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/r;->tQ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/analytics/r;->tT:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PowerSaveMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_46

    if-nez p2, :cond_5c

    :cond_46
    const-string/jumbo v0, "initiated."

    :goto_49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    iput-boolean p2, p0, Lcom/google/android/gms/analytics/r;->tX:Z
    :try_end_58
    .catchall {:try_start_f .. :try_end_58} :catchall_59

    goto :goto_9

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5c
    :try_start_5c
    const-string/jumbo v0, "terminated."
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    goto :goto_49
.end method

.method declared-synchronized cC()Lcom/google/android/gms/analytics/d;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tR:Lcom/google/android/gms/analytics/d;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cant get a store unless we have a context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_15
    :try_start_15
    new-instance v0, Lcom/google/android/gms/analytics/ac;

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->tZ:Lcom/google/android/gms/analytics/e;

    iget-object v2, p0, Lcom/google/android/gms/analytics/r;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/analytics/ac;-><init>(Lcom/google/android/gms/analytics/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->tR:Lcom/google/android/gms/analytics/d;

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tW:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tR:Lcom/google/android/gms/analytics/d;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/d;->cm()Lcom/google/android/gms/analytics/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->tW:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/analytics/n;->M(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/analytics/r;->tW:Ljava/lang/String;

    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_39

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->cB()V

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->ua:Lcom/google/android/gms/analytics/q;

    if-nez v0, :cond_44

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tY:Z

    if-eqz v0, :cond_44

    invoke-direct {p0}, Lcom/google/android/gms/analytics/r;->cA()V

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tR:Lcom/google/android/gms/analytics/d;
    :try_end_46
    .catchall {:try_start_15 .. :try_end_46} :catchall_12

    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized cD()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tX:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lcom/google/android/gms/analytics/r;->tT:I

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/r;->tQ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/r;->tQ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method cn()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tS:Lcom/google/android/gms/analytics/f;

    if-nez v0, :cond_e

    const-string/jumbo v0, "setForceLocalDispatch() queued. It will be called once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tV:Z

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vY:Lcom/google/android/gms/analytics/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tS:Lcom/google/android/gms/analytics/f;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->cn()V

    goto :goto_d
.end method

.method declared-synchronized dispatchLocalHits()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tS:Lcom/google/android/gms/analytics/f;

    if-nez v0, :cond_10

    const-string/jumbo v0, "Dispatch call queued. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tU:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1f

    :goto_e
    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vL:Lcom/google/android/gms/analytics/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->tS:Lcom/google/android/gms/analytics/f;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/f;->cl()V
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_1f

    goto :goto_e

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLocalDispatchPeriod(I)V
    .registers 6
    .param p1, "dispatchPeriodInSeconds"    # I

    .prologue
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    const-string/jumbo v0, "Dispatch period set with null handler. Dispatch will run once initialization is complete."

    invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/android/gms/analytics/r;->tT:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_4a

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/google/android/gms/analytics/u;->cP()Lcom/google/android/gms/analytics/u;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/u$a;->vM:Lcom/google/android/gms/analytics/u$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/u;->a(Lcom/google/android/gms/analytics/u$a;)V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    if-nez v0, :cond_2c

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tX:Z

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/google/android/gms/analytics/r;->tT:I

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/gms/analytics/r;->tQ:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_2c
    iput p1, p0, Lcom/google/android/gms/analytics/r;->tT:I

    if-lez p1, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->tX:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/analytics/r;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gms/analytics/r;->tQ:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_49
    .catchall {:try_start_f .. :try_end_49} :catchall_4a

    goto :goto_d

    :catchall_4a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized t(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/r;->ub:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/r;->a(ZZ)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
