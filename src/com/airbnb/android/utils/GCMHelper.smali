.class public Lcom/airbnb/android/utils/GCMHelper;
.super Ljava/lang/Object;
.source "GCMHelper.java"


# static fields
.field private static final PROPERTY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final PROPERTY_ON_SERVER_EXPIRATION_TIME:Ljava/lang/String; = "onServerExpirationTimeMs"

.field public static final PROPERTY_REG_ID:Ljava/lang/String; = "registration_id"

.field public static final REGISTRATION_EXPIRY_TIME_MS:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/airbnb/android/utils/GCMHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/GCMHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/airbnb/android/utils/GCMHelper;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/utils/GCMHelper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/GCMHelper;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/airbnb/android/utils/GCMHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/utils/GCMHelper;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/utils/GCMHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/utils/GCMHelper;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/airbnb/android/utils/GCMHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 98
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return v2

    .line 99
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_10
    move-exception v0

    .line 101
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not get package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-class v0, Lcom/airbnb/android/utils/GCMHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    new-instance v0, Lcom/airbnb/android/utils/GCMHelper;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/GCMHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private registerBackground()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lcom/airbnb/android/utils/GCMHelper$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/GCMHelper$1;-><init>(Lcom/airbnb/android/utils/GCMHelper;)V

    .line 141
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_12

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    :goto_11
    return-void

    .line 141
    .restart local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    :cond_12
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method

.method private setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "regId"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/airbnb/android/utils/GCMHelper;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 185
    .local v4, "prefs":Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/airbnb/android/utils/GCMHelper;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 186
    .local v0, "appVersion":I
    sget-object v5, Lcom/airbnb/android/utils/GCMHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Saving regId on app version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 188
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "registration_id"

    invoke-interface {v1, v5, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string/jumbo v5, "appVersion"

    invoke-interface {v1, v5, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x240c8400

    add-long v2, v5, v7

    .line 192
    .local v2, "expirationTime":J
    sget-object v5, Lcom/airbnb/android/utils/GCMHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting registration expiry time to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/sql/Timestamp;

    invoke-direct {v7, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string/jumbo v5, "onServerExpirationTimeMs"

    invoke-interface {v1, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 195
    return-void
.end method

.method private unRegisterBackground()V
    .registers 5

    .prologue
    .line 150
    new-instance v0, Lcom/airbnb/android/utils/GCMHelper$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/GCMHelper$2;-><init>(Lcom/airbnb/android/utils/GCMHelper;)V

    .line 164
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_12

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 165
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    :goto_11
    return-void

    .line 164
    .restart local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    :cond_12
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method


# virtual methods
.method public deleteRegistrationId()V
    .registers 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/airbnb/android/utils/GCMHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/airbnb/android/utils/GCMHelper;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 169
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "registration_id"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 172
    return-void
.end method

.method public forceUpdateOnNextLaunch()V
    .registers 6

    .prologue
    .line 198
    iget-object v2, p0, Lcom/airbnb/android/utils/GCMHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/airbnb/android/utils/GCMHelper;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "onServerExpirationTimeMs"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    return-void
.end method

.method public getCachedRegistrationId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 79
    iget-object v1, p0, Lcom/airbnb/android/utils/GCMHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/airbnb/android/utils/GCMHelper;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "registration_id"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRegistrationId()Ljava/lang/String;
    .registers 7

    .prologue
    .line 61
    iget-object v4, p0, Lcom/airbnb/android/utils/GCMHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/airbnb/android/utils/GCMHelper;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "registration_id"

    const-string/jumbo v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "registrationId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_22

    .line 64
    sget-object v4, Lcom/airbnb/android/utils/GCMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Registration not found."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string/jumbo v3, ""

    .line 75
    .end local v3    # "registrationId":Ljava/lang/String;
    :cond_21
    :goto_21
    return-object v3

    .line 69
    .restart local v3    # "registrationId":Ljava/lang/String;
    :cond_22
    const-string/jumbo v4, "appVersion"

    const/high16 v5, -0x80000000

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, "registeredVersion":I
    iget-object v4, p0, Lcom/airbnb/android/utils/GCMHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/airbnb/android/utils/GCMHelper;->getAppVersion(Landroid/content/Context;)I

    move-result v0

    .line 71
    .local v0, "currentVersion":I
    if-eq v2, v0, :cond_21

    .line 72
    sget-object v4, Lcom/airbnb/android/utils/GCMHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "App version changed."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string/jumbo v3, ""

    goto :goto_21
.end method

.method public setupGCM()V
    .registers 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/airbnb/android/utils/GCMHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/airbnb/android/utils/MiscUtils;->hasGooglePlayServices(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 45
    invoke-virtual {p0}, Lcom/airbnb/android/utils/GCMHelper;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "regid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15

    .line 48
    invoke-direct {p0}, Lcom/airbnb/android/utils/GCMHelper;->registerBackground()V

    .line 51
    .end local v0    # "regid":Ljava/lang/String;
    :cond_15
    return-void
.end method

.method public unRegister()V
    .registers 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/airbnb/android/utils/GCMHelper;->unRegisterBackground()V

    .line 147
    return-void
.end method
