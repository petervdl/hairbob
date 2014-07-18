.class public Lcom/google/android/gms/analytics/aa;
.super Ljava/lang/Object;


# static fields
.field private static wH:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method public static A(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->error(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static B(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->info(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static C(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->verbose(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->warn(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static dk()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/google/android/gms/analytics/aa;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/Logger;->getLogLevel()I

    move-result v1

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private static getLogger()Lcom/google/android/gms/analytics/Logger;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/aa;->wH:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dd()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/aa;->wH:Lcom/google/android/gms/analytics/GoogleAnalytics;

    :cond_a
    sget-object v0, Lcom/google/android/gms/analytics/aa;->wH:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/analytics/aa;->wH:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method
