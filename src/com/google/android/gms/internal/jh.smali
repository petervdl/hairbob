.class public Lcom/google/android/gms/internal/jh;
.super Lcom/google/android/gms/internal/hc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jh$1;,
        Lcom/google/android/gms/internal/jh$d;,
        Lcom/google/android/gms/internal/jh$a;,
        Lcom/google/android/gms/internal/jh$b;,
        Lcom/google/android/gms/internal/jh$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/hc",
        "<",
        "Lcom/google/android/gms/internal/jf;",
        ">;"
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

.field private final VM:Lcom/google/android/gms/internal/jg;

.field private final VN:Lcom/google/android/gms/internal/ka;

.field private final VO:Lcom/google/android/gms/internal/ja;

.field private final VP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/hc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/jh$c;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/internal/jh$c;-><init>(Lcom/google/android/gms/internal/jh;Lcom/google/android/gms/internal/jh$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    new-instance v0, Lcom/google/android/gms/internal/jg;

    iget-object v1, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/jg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    iput-object p4, p0, Lcom/google/android/gms/internal/jh;->VP:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ka;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ka;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/jk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VN:Lcom/google/android/gms/internal/ka;

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VG:Lcom/google/android/gms/internal/jk;

    invoke-static {p1, v3, v0}, Lcom/google/android/gms/internal/ja;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/jk;)Lcom/google/android/gms/internal/ja;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/jh;->VO:Lcom/google/android/gms/internal/ja;

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/jh;)V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->ci()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/internal/hj;Lcom/google/android/gms/internal/hc$e;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "client_name"

    iget-object v2, p0, Lcom/google/android/gms/internal/jh;->VP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x4d7808

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/internal/hj;->e(Lcom/google/android/gms/internal/hi;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .registers 7
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "listener"    # Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ji;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, "geofences":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/internal/ji;>;"
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->ci()V

    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_34

    const/4 v0, 0x1

    :goto_c
    const-string/jumbo v1, "At least one geofence must be specified."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hn;->b(ZLjava/lang/Object;)V

    const-string/jumbo v0, "PendingIntent must be specified."

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "OnAddGeofencesResultListener not provided."

    invoke-static {p3, v0}, Lcom/google/android/gms/internal/hn;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_36

    const/4 v0, 0x0

    move-object v1, v0

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->fo()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/jf;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    return-void

    :cond_34
    const/4 v0, 0x0

    goto :goto_c

    :cond_36
    new-instance v0, Lcom/google/android/gms/internal/jh$b;

    invoke-direct {v0, p3, p0}, Lcom/google/android/gms/internal/jh$b;-><init>(Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;Lcom/google/android/gms/internal/jh;)V

    move-object v1, v0

    goto :goto_22
.end method

.method protected at(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jf;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/jf$a;->as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jf;

    move-result-object v0

    return-object v0
.end method

.method protected bp()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.location.internal.GoogleLocationManagerService.START"

    return-object v0
.end method

.method protected bq()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    return-object v0
.end method

.method public disconnect()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/jh;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->removeAllListeners()V

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->iT()V

    :cond_13
    invoke-super {p0}, Lcom/google/android/gms/internal/hc;->disconnect()V

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/jg;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/jg;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .registers 4
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/jh;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .registers 6
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p2, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->VM:Lcom/google/android/gms/internal/jg;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/jg;->requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jh;->at(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jf;

    move-result-object v0

    return-object v0
.end method
