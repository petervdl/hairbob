.class public final Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    }
.end annotation


# direct methods
.method static a(Landroid/content/Context;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->er()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/t$a;->b(Landroid/os/IBinder;)Lcom/google/android/gms/internal/t;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-interface {v0}, Lcom/google/android/gms/internal/t;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/t;->a(Z)Z

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_3d
    .catchall {:try_start_0 .. :try_end_16} :catchall_38

    :try_start_16
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_19} :catch_1a

    :goto_19
    return-object v1

    :catch_1a
    move-exception v0

    const-string/jumbo v2, "AdvertisingIdClient"

    const-string/jumbo v3, "getAdvertisingIdInfo unbindService failed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    :catch_25
    move-exception v0

    :try_start_26
    const-string/jumbo v1, "AdvertisingIdClient"

    const-string/jumbo v2, "GMS remote exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Remote exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    :try_start_39
    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_3c} :catch_47

    :goto_3c
    throw v0

    :catch_3d
    move-exception v0

    :try_start_3e
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Interrupted exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_38

    :catch_47
    move-exception v1

    const-string/jumbo v2, "AdvertisingIdClient"

    const-string/jumbo v3, "getAdvertisingIdInfo unbindService failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method static g(Landroid/content/Context;)Lcom/google/android/gms/common/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_29

    :try_start_b
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->w(Landroid/content/Context;)V
    :try_end_e
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_b .. :try_end_e} :catch_32

    new-instance v0, Lcom/google/android/gms/common/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/a;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.google.android.gms"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_39

    return-object v0

    :catch_29
    move-exception v0

    new-instance v0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw v0

    :catch_32
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_39
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Connection failure"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, Lcom/google/android/gms/internal/hn;->az(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->g(Landroid/content/Context;)Lcom/google/android/gms/common/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    return-object v0
.end method
