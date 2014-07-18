.class final Lcom/google/android/gms/common/api/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/c$b;,
        Lcom/google/android/gms/common/api/c$c;,
        Lcom/google/android/gms/common/api/c$a;
    }
.end annotation


# instance fields
.field private final DC:Landroid/os/Looper;

.field private final DN:Ljava/util/concurrent/locks/Lock;

.field private final DO:Ljava/util/concurrent/locks/Condition;

.field private final DP:Lcom/google/android/gms/internal/hd;

.field private final DQ:Landroid/support/v4/app/Fragment;

.field final DR:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/common/api/c$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field private DS:Lcom/google/android/gms/common/ConnectionResult;

.field private DT:I

.field private DU:I

.field private DV:I

.field private DW:Z

.field private DX:I

.field private DY:J

.field final DZ:Landroid/os/Handler;

.field private final Dv:Lcom/google/android/gms/common/api/c$a;

.field private final Ea:Landroid/os/Bundle;

.field private final Eb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api$c",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">;"
        }
    .end annotation
.end field

.field private final Ec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ed:Z

.field final Ee:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/c$c",
            "<*>;>;"
        }
    .end annotation
.end field

.field final Ef:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final Eg:Lcom/google/android/gms/internal/hd$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Ljava/util/Map;Landroid/support/v4/app/Fragment;Ljava/util/Set;Ljava/util/Set;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/gz;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Landroid/support/v4/app/Fragment;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DO:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DV:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/google/android/gms/common/api/c;->DY:J

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/api/c$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/c$1;-><init>(Lcom/google/android/gms/common/api/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Dv:Lcom/google/android/gms/common/api/c$a;

    new-instance v0, Lcom/google/android/gms/common/api/c$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/c$2;-><init>(Lcom/google/android/gms/common/api/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ef:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v0, Lcom/google/android/gms/common/api/c$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/c$3;-><init>(Lcom/google/android/gms/common/api/c;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Eg:Lcom/google/android/gms/internal/hd$b;

    new-instance v0, Lcom/google/android/gms/internal/hd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->Eg:Lcom/google/android/gms/internal/hd$b;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/hd;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/hd$b;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    iput-object p5, p0, Lcom/google/android/gms/common/api/c;->DQ:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/google/android/gms/common/api/c;->DC:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/common/api/c$b;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/common/api/c$b;-><init>(Lcom/google/android/gms/common/api/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Landroid/os/Handler;

    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/hd;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_6c

    :cond_7e
    invoke-interface/range {p7 .. p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/hd;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    goto :goto_82

    :cond_94
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->eu()Lcom/google/android/gms/common/api/Api$b;

    move-result-object v0

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v8, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->ew()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v9

    iget-object v5, p0, Lcom/google/android/gms/common/api/c;->Ef:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v6, Lcom/google/android/gms/common/api/c$4;

    invoke-direct {v6, p0, v0}, Lcom/google/android/gms/common/api/c$4;-><init>(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/Api$b;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    :cond_c9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/gz;->fg()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->Ec:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    return-object p1
.end method

.method private static a(Lcom/google/android/gms/common/api/Api$b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$b",
            "<TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/gz;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$b;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/gz;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/c;)Ljava/util/concurrent/locks/Lock;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private a(Lcom/google/android/gms/common/api/c$c;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/c$c",
            "<TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v2

    if-eqz v2, :cond_46

    :cond_13
    move v2, v0

    :goto_14
    const-string/jumbo v3, "GoogleApiClient is not connected yet."

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    invoke-interface {p1}, Lcom/google/android/gms/common/api/c$c;->ew()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v2

    if-eqz v2, :cond_48

    :goto_20
    const-string/jumbo v1, "This task can not be executed or enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Dv:Lcom/google/android/gms/common/api/c$a;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/c$c;->a(Lcom/google/android/gms/common/api/c$a;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/c$c;->m(Lcom/google/android/gms/common/api/Status;)V
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_5b

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_45
    return-void

    :cond_46
    move v2, v1

    goto :goto_14

    :cond_48
    move v0, v1

    goto :goto_20

    :cond_4a
    :try_start_4a
    invoke-interface {p1}, Lcom/google/android/gms/common/api/c$c;->ew()Lcom/google/android/gms/common/api/Api$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/c$c;->b(Lcom/google/android/gms/common/api/Api$a;)V
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_5b

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_45

    :catchall_5b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/c;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/c;->aa(I)V

    return-void
.end method

.method private aa(I)V
    .registers 7

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_8
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    if-eq v0, v1, :cond_bb

    if-ne p1, v4, :cond_6f

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/c$c;->eB()I

    move-result v2

    if-eq v2, v3, :cond_1a

    invoke-interface {v0}, Lcom/google/android/gms/common/api/c$c;->cancel()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_33

    goto :goto_1a

    :catchall_33
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c$c;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/c$c;->cancel()V

    goto :goto_45

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ee:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_33

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_6e
    return-void

    :cond_6f
    :try_start_6f
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v1

    const/4 v2, 0x3

    iput v2, p0, Lcom/google/android/gms/common/api/c;->DU:I

    if-eqz v0, :cond_86

    if-ne p1, v4, :cond_81

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    :cond_81
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DO:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_93
    :goto_93
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->disconnect()V

    goto :goto_93

    :cond_a9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    if-eqz v1, :cond_bb

    if-eq p1, v4, :cond_b8

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->ao(I)V

    :cond_b8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z
    :try_end_bb
    .catchall {:try_start_6f .. :try_end_bb} :catchall_33

    :cond_bb
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_6e
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/c;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/api/c;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/api/c;->DV:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/c;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/api/c;->DT:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/gms/common/api/c;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/common/api/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eF()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/gms/common/api/c;)Z
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    return v0
.end method

.method private eF()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    iget v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->aa(I)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/google/android/gms/common/api/c;->DV:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DV:I

    :cond_26
    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DZ:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/common/api/c;->DY:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_3a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_4b

    :cond_3d
    :goto_3d
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :cond_43
    :try_start_43
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/hd;->a(Lcom/google/android/gms/common/ConnectionResult;)V
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_4b

    goto :goto_3a

    :catchall_4b
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_52
    const/4 v0, 0x2

    :try_start_53
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eI()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DO:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eG()V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    if-eqz v0, :cond_6c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->aa(I)V

    goto :goto_3d

    :cond_6c
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v0, 0x0

    :goto_75
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/hd;->c(Landroid/os/Bundle;)V

    goto :goto_3d

    :cond_7b
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;
    :try_end_7d
    .catchall {:try_start_53 .. :try_end_7d} :catchall_4b

    goto :goto_75
.end method

.method private eG()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    const-string/jumbo v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_18
    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_37

    move-result v0

    if-nez v0, :cond_40

    :try_start_20
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/c$c;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c$c;)V
    :try_end_2b
    .catch Landroid/os/DeadObjectException; {:try_start_20 .. :try_end_2b} :catch_2c
    .catchall {:try_start_20 .. :try_end_2b} :catchall_37

    goto :goto_18

    :catch_2c
    move-exception v0

    :try_start_2d
    const-string/jumbo v1, "GoogleApiClientImpl"

    const-string/jumbo v2, "Service died while flushing queue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_37

    goto :goto_18

    :catchall_37
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_3e
    const/4 v0, 0x0

    goto :goto_d

    :cond_40
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method private eH()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DV:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_12

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private eI()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_6
    iput v0, p0, Lcom/google/android/gms/common/api/c;->DV:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DZ:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_14

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_14
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic f(Lcom/google/android/gms/common/api/c;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/common/api/c;->DY:J

    return-wide v0
.end method

.method static synthetic g(Lcom/google/android/gms/common/api/c;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/ConnectionResult;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/gms/common/api/c;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/api/c;->DT:I

    return v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Api$c;)Lcom/google/android/gms/common/api/Api$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$a;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$c",
            "<TC;>;)TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    const-string/jumbo v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "T:",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_1a

    :goto_e
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DR:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_e

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$a;",
            "T:",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eH()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_d
    move v0, v1

    :goto_e
    const-string/jumbo v2, "GoogleApiClient is not connected yet."

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/hn;->a(ZLjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eG()V

    :try_start_17
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/c;->a(Lcom/google/android/gms/common/api/c$c;)V
    :try_end_1a
    .catch Landroid/os/DeadObjectException; {:try_start_17 .. :try_end_1a} :catch_1d

    :goto_1a
    return-object p1

    :cond_1b
    const/4 v0, 0x0

    goto :goto_e

    :catch_1d
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/c;->aa(I)V

    goto :goto_1a
.end method

.method public connect()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    :try_start_6
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->DW:Z

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnected()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->isConnecting()Z
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_4a

    move-result v0

    if-eqz v0, :cond_1a

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x1

    :try_start_1b
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/c;->Ed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/c;->DS:Lcom/google/android/gms/common/ConnectionResult;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DU:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Ea:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/c;->DX:I

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->Eb:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$a;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$a;->connect()V
    :try_end_49
    .catchall {:try_start_1b .. :try_end_49} :catchall_4a

    goto :goto_3a

    :catchall_4a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_19
.end method

.method public disconnect()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/api/c;->eI()V

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/c;->aa(I)V

    return-void
.end method

.method public isConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/google/android/gms/common/api/c;->DU:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_b
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_b

    :catchall_13
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public isConnecting()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_6
    iget v1, p0, Lcom/google/android/gms/common/api/c;->DU:I
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_12

    if-ne v1, v0, :cond_10

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    :catchall_12
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/c;->DN:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/c;->DP:Lcom/google/android/gms/internal/hd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/hd;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
