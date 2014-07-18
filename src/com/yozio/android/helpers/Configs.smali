.class public Lcom/yozio/android/helpers/Configs;
.super Ljava/lang/Object;
.source "Configs.java"


# static fields
.field private static _instance:Lcom/yozio/android/helpers/Configs;


# instance fields
.field private _configs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/yozio/android/helpers/Configs;

    invoke-direct {v0}, Lcom/yozio/android/helpers/Configs;-><init>()V

    sput-object v0, Lcom/yozio/android/helpers/Configs;->_instance:Lcom/yozio/android/helpers/Configs;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yozio/android/helpers/Configs;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/yozio/android/helpers/Configs;->_instance:Lcom/yozio/android/helpers/Configs;

    return-object v0
.end method


# virtual methods
.method protected getLastFetchedConfigs()J
    .registers 5

    .prologue
    .line 133
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "come.yozio.android.PREFERENCES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    .local v0, "_sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "lastFetchedConfigs"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public handleRemoteConfigs(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "remoteConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_b

    .line 147
    sget-object v0, Lcom/yozio/android/Constants$LOG_LEVEL;->WARN:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v1, "Configs - remote config was NULL."

    invoke-static {v0, v1}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 157
    :cond_a
    :goto_a
    return-void

    .line 151
    :cond_b
    sget-object v0, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Configs - updating values from remote: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0, p1}, Lcom/yozio/android/helpers/Configs;->persistConfigs(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 155
    invoke-static {}, Lcom/yozio/android/helpers/SystemInfo;->getInstance()Lcom/yozio/android/helpers/SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yozio/android/helpers/SystemInfo;->getCurrentTimeLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yozio/android/helpers/Configs;->setLastFetchedConfigs(Ljava/lang/Long;)V

    goto :goto_a
.end method

.method public initConfigs(Z)V
    .registers 10
    .param p1, "forceFetch"    # Z

    .prologue
    .line 116
    invoke-static {}, Lcom/yozio/android/helpers/SystemInfo;->getInstance()Lcom/yozio/android/helpers/SystemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yozio/android/helpers/SystemInfo;->getStartTimeLong()J

    move-result-wide v2

    .line 117
    .local v2, "lastStart":J
    invoke-virtual {p0}, Lcom/yozio/android/helpers/Configs;->getLastFetchedConfigs()J

    move-result-wide v0

    .line 122
    .local v0, "lastFetchedConfigs":J
    if-nez p1, :cond_26

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_26

    sub-long v4, v2, v0

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-gez v4, :cond_26

    .line 124
    sget-object v4, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v5, "Configs - configs still fresh, skip updating"

    invoke-static {v4, v5}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 130
    :goto_25
    return-void

    .line 129
    :cond_26
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v4

    new-instance v5, Lcom/yozio/android/async/GetConfigsTask;

    invoke-direct {v5}, Lcom/yozio/android/async/GetConfigsTask;-><init>()V

    invoke-virtual {v4, v5}, Lcom/yozio/android/YozioService;->runTask(Ljava/lang/Runnable;)V

    goto :goto_25
.end method

.method public persistConfigs(Ljava/util/HashMap;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 92
    if-nez p1, :cond_4

    .line 109
    :goto_3
    return v4

    .line 96
    :cond_4
    iput-object p1, p0, Lcom/yozio/android/helpers/Configs;->_configs:Ljava/util/HashMap;

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Yozio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Configs.data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "configPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "configFile":Ljava/io/File;
    :try_start_3e
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 103
    .local v3, "os":Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 104
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4e} :catch_50

    .line 105
    const/4 v4, 0x1

    goto :goto_3

    .line 106
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :catch_50
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v6, "Configs - failed to persist configs locally."

    invoke-static {v5, v6}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method protected setLastFetchedConfigs(Ljava/lang/Long;)V
    .registers 7
    .param p1, "timestamp"    # Ljava/lang/Long;

    .prologue
    .line 138
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "come.yozio.android.PREFERENCES"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, "_sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 140
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "lastFetchedConfigs"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    return-void
.end method
