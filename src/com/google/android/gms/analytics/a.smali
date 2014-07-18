.class Lcom/google/android/gms/analytics/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/m;


# static fields
.field private static tn:Ljava/lang/Object;

.field private static to:Lcom/google/android/gms/analytics/a;


# instance fields
.field private mContext:Landroid/content/Context;

.field private tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private tq:J

.field private tr:Ljava/lang/String;

.field private ts:Z

.field private tt:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/a;->tn:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/a;->ts:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/a;->tt:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    return-void
.end method

.method static H(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v7, 0x1

    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Lcom/google/android/gms/analytics/ak;->W(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%032X"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v5, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private I(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/analytics/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Storing hashed adid."

    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "gaClientIdData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iput-object v1, p0, Lcom/google/android/gms/analytics/a;->tr:Ljava/lang/String;
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_21} :catch_23
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_21} :catch_2b

    const/4 v0, 0x1

    :goto_22
    return v0

    :catch_23
    move-exception v1

    const-string/jumbo v1, "Error creating hash file."

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    goto :goto_22

    :catch_2b
    move-exception v1

    const-string/jumbo v1, "Error writing to hash file."

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_d

    move-object v0, v1

    :goto_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    move v0, v2

    :goto_c
    return v0

    :cond_d
    invoke-virtual {p2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_12
    iget-object v3, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/analytics/h;->r(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/analytics/h;->cq()Lcom/google/android/gms/analytics/h;

    move-result-object v4

    const-string/jumbo v3, "&cid"

    invoke-virtual {v4, v3}, Lcom/google/android/gms/analytics/h;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/gms/analytics/a;->tt:Ljava/lang/Object;

    monitor-enter v5

    :try_start_25
    iget-boolean v6, p0, Lcom/google/android/gms/analytics/a;->ts:Z

    if-nez v6, :cond_55

    iget-object v1, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/analytics/a;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/a;->tr:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/a;->ts:Z

    :cond_34
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_95

    const/4 v0, 0x0

    monitor-exit v5

    goto :goto_c

    :catchall_52
    move-exception v0

    monitor-exit v5
    :try_end_54
    .catchall {:try_start_25 .. :try_end_54} :catchall_52

    throw v0

    :cond_55
    :try_start_55
    iget-object v6, p0, Lcom/google/android/gms/analytics/a;->tr:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_34

    if-nez p1, :cond_78

    :goto_5f
    if-nez v1, :cond_7d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/a;->I(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v5

    goto :goto_c

    :cond_78
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_5f

    :cond_7d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/a;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/a;->tr:Ljava/lang/String;

    goto :goto_34

    :cond_95
    iget-object v6, p0, Lcom/google/android/gms/analytics/a;->tr:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a1

    monitor-exit v5

    move v0, v2

    goto/16 :goto_c

    :cond_a1
    iget-object v1, p0, Lcom/google/android/gms/analytics/a;->tr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e2

    const-string/jumbo v1, "Resetting the client id because Advertising Id changed."

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/h;->cr()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New client Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V

    :goto_ca
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/a;->I(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v5
    :try_end_e0
    .catchall {:try_start_55 .. :try_end_e0} :catchall_52

    goto/16 :goto_c

    :cond_e2
    move-object v1, v3

    goto :goto_ca
.end method

.method public static p(Landroid/content/Context;)Lcom/google/android/gms/analytics/m;
    .registers 3

    sget-object v0, Lcom/google/android/gms/analytics/a;->to:Lcom/google/android/gms/analytics/a;

    if-nez v0, :cond_13

    sget-object v1, Lcom/google/android/gms/analytics/a;->tn:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/analytics/a;->to:Lcom/google/android/gms/analytics/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/analytics/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/a;->to:Lcom/google/android/gms/analytics/a;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/google/android/gms/analytics/a;->to:Lcom/google/android/gms/analytics/a;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static q(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "gaClientIdData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    const/16 v1, 0x80

    new-array v3, v1, [B

    const/4 v1, 0x0

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_29

    const-string/jumbo v1, "Hash file seems corrupted, deleting it."

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const-string/jumbo v1, "gaClientIdData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :goto_28
    return-object v0

    :cond_29
    if-gtz v4, :cond_37

    const-string/jumbo v1, "Hash file is empty."

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->B(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_28

    :catch_35
    move-exception v1

    goto :goto_28

    :cond_37
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_3d} :catch_35
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3d} :catch_42

    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_40} :catch_53
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_50

    move-object v0, v1

    goto :goto_28

    :catch_42
    move-exception v1

    :goto_43
    const-string/jumbo v1, "Error reading Hash file, deleting it."

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    const-string/jumbo v1, "gaClientIdData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_28

    :catch_50
    move-exception v0

    move-object v0, v1

    goto :goto_43

    :catch_53
    move-exception v0

    move-object v0, v1

    goto :goto_28
.end method


# virtual methods
.method cf()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_18
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_6} :catch_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_28

    move-result-object v0

    :goto_7
    return-object v0

    :catch_8
    move-exception v1

    const-string/jumbo v1, "IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added \'<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />\' to your application manifest file. See http://goo.gl/naFqQk for details."

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    goto :goto_7

    :catch_10
    move-exception v1

    const-string/jumbo v1, "GooglePlayServicesRepairableException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    goto :goto_7

    :catch_18
    move-exception v1

    const-string/jumbo v1, "IOException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    goto :goto_7

    :catch_20
    move-exception v1

    const-string/jumbo v1, "GooglePlayServicesNotAvailableException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    goto :goto_7

    :catch_28
    move-exception v1

    const-string/jumbo v1, "Unknown exception. Could not get the ad Id."

    invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->D(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "field"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/analytics/a;->tq:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/a;->cf()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/analytics/a;->a(Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;)Z

    move-result v3

    if-eqz v3, :cond_32

    iput-object v2, p0, Lcom/google/android/gms/analytics/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :goto_1c
    iput-wide v0, p0, Lcom/google/android/gms/analytics/a;->tq:J

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/analytics/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-eqz v0, :cond_57

    const-string/jumbo v0, "&adid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/analytics/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    new-instance v2, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/android/gms/analytics/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    goto :goto_1c

    :cond_3e
    const-string/jumbo v0, "&ate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/google/android/gms/analytics/a;->tp:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_53

    const-string/jumbo v0, "0"

    goto :goto_31

    :cond_53
    const-string/jumbo v0, "1"

    goto :goto_31

    :cond_57
    const/4 v0, 0x0

    goto :goto_31
.end method
