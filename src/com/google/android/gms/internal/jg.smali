.class public Lcom/google/android/gms/internal/jg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jg$a;,
        Lcom/google/android/gms/internal/jg$b;
    }
.end annotation


# instance fields
.field private final VG:Lcom/google/android/gms/internal/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/jk",
            "<",
            "Lcom/google/android/gms/internal/jf;",
            ">;"
        }
    .end annotation
.end field

.field private VH:Landroid/content/ContentProviderClient;

.field private VI:Z

.field private VJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/location/LocationListener;",
            "Lcom/google/android/gms/internal/jg$b;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/jk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/jk",
            "<",
            "Lcom/google/android/gms/internal/jf;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VH:Landroid/content/ContentProviderClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jg;->VI:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/jg;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    return-void
.end method


# virtual methods
.method public getLastLocation()Landroid/location/Location;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jk;->ci()V

    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jk;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/jf;->bo(Ljava/lang/String;)Landroid/location/Location;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_16} :catch_18

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public iT()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jg;->VI:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jg;->setMockMode(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    :cond_8
    return-void

    :catch_9
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeAllListeners()V
    .registers 5

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2a

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jg$b;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/jk;->fo()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/jf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/jf;->a(Lcom/google/android/gms/location/a;)V

    goto :goto_d

    :catchall_27
    move-exception v0

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    :try_start_29
    throw v0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_31
    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_27

    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jk;->ci()V

    const-string/jumbo v0, "Invalid null listener"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_e
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jg$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VH:Landroid/content/ContentProviderClient;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VH:Landroid/content/ContentProviderClient;

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/jg;->VH:Landroid/content/ContentProviderClient;

    :cond_2a
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg$b;->release()V

    iget-object v1, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    invoke-interface {v1}, Lcom/google/android/gms/internal/jk;->fo()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/jf;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/jf;->a(Lcom/google/android/gms/location/a;)V

    :cond_3a
    monitor-exit v2

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_e .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 8
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jk;->ci()V

    if-nez p3, :cond_11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const-string/jumbo v1, "Can\'t create handler inside thread that has not called Looper.prepare()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_14
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jg$b;

    if-nez v0, :cond_3f

    new-instance v0, Lcom/google/android/gms/internal/jg$b;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/jg$b;-><init>(Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    move-object v1, v0

    :goto_24
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VJ:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jk;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    iget-object v3, p0, Lcom/google/android/gms/internal/jg;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v3}, Lcom/google/android/gms/internal/jf;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit v2
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3c

    throw v0

    :cond_3f
    move-object v1, v0

    goto :goto_24
.end method

.method public setMockMode(Z)V
    .registers 3
    .param p1, "isMockMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jk;->ci()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jg;->VG:Lcom/google/android/gms/internal/jk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/jk;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/jf;->setMockMode(Z)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/jg;->VI:Z

    return-void
.end method
