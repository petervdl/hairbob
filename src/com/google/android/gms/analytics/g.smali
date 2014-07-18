.class Lcom/google/android/gms/analytics/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/m;


# static fields
.field private static tD:Lcom/google/android/gms/analytics/g;

.field private static tn:Ljava/lang/Object;


# instance fields
.field protected tA:Ljava/lang/String;

.field protected tB:Ljava/lang/String;

.field protected tC:Ljava/lang/String;

.field protected tz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/g;->tn:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/g;->tB:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tB:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/g;->tC:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/analytics/g;->tB:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_2f

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_2f} :catch_34

    :cond_2f
    :goto_2f
    iput-object v1, p0, Lcom/google/android/gms/analytics/g;->tz:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/analytics/g;->tA:Ljava/lang/String;

    return-void

    :catch_34
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error retrieving package info: appName set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method public static cp()Lcom/google/android/gms/analytics/g;
    .registers 1

    sget-object v0, Lcom/google/android/gms/analytics/g;->tD:Lcom/google/android/gms/analytics/g;

    return-object v0
.end method

.method public static r(Landroid/content/Context;)V
    .registers 3

    sget-object v1, Lcom/google/android/gms/analytics/g;->tn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/analytics/g;->tD:Lcom/google/android/gms/analytics/g;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/analytics/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/g;->tD:Lcom/google/android/gms/analytics/g;

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v1, "&an"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tz:Ljava/lang/String;

    goto :goto_3

    :cond_10
    const-string/jumbo v1, "&av"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tA:Ljava/lang/String;

    goto :goto_3

    :cond_1c
    const-string/jumbo v1, "&aid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tB:Ljava/lang/String;

    goto :goto_3

    :cond_28
    const-string/jumbo v1, "&aiid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/g;->tC:Ljava/lang/String;

    goto :goto_3
.end method
