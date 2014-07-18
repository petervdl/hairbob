.class public Lcom/yozio/android/YozioService;
.super Ljava/lang/Object;
.source "YozioService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$yozio$android$Constants$LOG_LEVEL:[I

.field private static _instance:Lcom/yozio/android/YozioService;


# instance fields
.field private _appKey:Ljava/lang/String;

.field private _context:Landroid/content/Context;

.field private _deviceId:Ljava/lang/String;

.field private _metadataCallback:Lcom/yozio/android/interfaces/GetMetaDataCallback;

.field private _secretKey:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static synthetic $SWITCH_TABLE$com$yozio$android$Constants$LOG_LEVEL()[I
    .registers 3

    .prologue
    .line 31
    sget-object v0, Lcom/yozio/android/YozioService;->$SWITCH_TABLE$com$yozio$android$Constants$LOG_LEVEL:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/yozio/android/Constants$LOG_LEVEL;->values()[Lcom/yozio/android/Constants$LOG_LEVEL;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->DEBUG:Lcom/yozio/android/Constants$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/yozio/android/Constants$LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/yozio/android/Constants$LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/yozio/android/Constants$LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->VERBOSE:Lcom/yozio/android/Constants$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/yozio/android/Constants$LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->WARN:Lcom/yozio/android/Constants$LOG_LEVEL;

    invoke-virtual {v1}, Lcom/yozio/android/Constants$LOG_LEVEL;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/yozio/android/YozioService;->$SWITCH_TABLE$com$yozio$android$Constants$LOG_LEVEL:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/yozio/android/YozioService;

    invoke-direct {v0}, Lcom/yozio/android/YozioService;-><init>()V

    sput-object v0, Lcom/yozio/android/YozioService;->_instance:Lcom/yozio/android/YozioService;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yozio/android/YozioService;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/yozio/android/YozioService;->_instance:Lcom/yozio/android/YozioService;

    return-object v0
.end method

.method public static log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V
    .registers 3
    .param p0, "level"    # Lcom/yozio/android/Constants$LOG_LEVEL;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yozio/android/YozioService;->logToConsole(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/yozio/android/YozioService;->_appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/yozio/android/YozioService;->_context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yozio/android/YozioService;->_deviceId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 183
    iget-object v0, p0, Lcom/yozio/android/YozioService;->_deviceId:Ljava/lang/String;

    .line 186
    :goto_6
    return-object v0

    .line 185
    :cond_7
    invoke-static {}, Lcom/yozio/android/helpers/SystemInfo;->getInstance()Lcom/yozio/android/helpers/SystemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yozio/android/helpers/SystemInfo;->getYozioUDID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yozio/android/YozioService;->_deviceId:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/yozio/android/YozioService;->_deviceId:Ljava/lang/String;

    goto :goto_6
.end method

.method protected initYozioDirectory()V
    .registers 5

    .prologue
    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yozio/android/YozioService;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Yozio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2e

    .line 137
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 139
    :cond_2e
    return-void
.end method

.method protected logToConsole(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V
    .registers 5
    .param p1, "level"    # Lcom/yozio/android/Constants$LOG_LEVEL;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-boolean v0, Lcom/yozio/android/Yozio;->YOZIO_ENABLE_LOGGING:Z

    if-nez v0, :cond_5

    .line 111
    :goto_4
    return-void

    .line 92
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 94
    invoke-static {}, Lcom/yozio/android/YozioService;->$SWITCH_TABLE$com$yozio$android$Constants$LOG_LEVEL()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/yozio/android/Constants$LOG_LEVEL;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    goto :goto_4

    .line 96
    :pswitch_20
    const-string/jumbo v0, "YOZIO"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 99
    :pswitch_27
    const-string/jumbo v0, "YOZIO"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 102
    :pswitch_2e
    const-string/jumbo v0, "YOZIO"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 105
    :pswitch_35
    const-string/jumbo v0, "YOZIO"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 108
    :pswitch_3c
    const-string/jumbo v0, "YOZIO"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 94
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_20
        :pswitch_27
        :pswitch_2e
        :pswitch_35
        :pswitch_3c
    .end packed-switch
.end method

.method public runTask(Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    .line 206
    iget-object v0, p0, Lcom/yozio/android/YozioService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_16

    .line 209
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/yozio/android/YozioService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 212
    :cond_16
    iget-object v0, p0, Lcom/yozio/android/YozioService;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 213
    return-void
.end method

.method public setAppKeyAndSecretKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yozio/android/interfaces/GetMetaDataCallback;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "secretKey"    # Ljava/lang/String;
    .param p4, "metadataCallback"    # Lcom/yozio/android/interfaces/GetMetaDataCallback;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 59
    iput-object p1, p0, Lcom/yozio/android/YozioService;->_context:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/yozio/android/YozioService;->_appKey:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/yozio/android/YozioService;->_secretKey:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/yozio/android/YozioService;->_metadataCallback:Lcom/yozio/android/interfaces/GetMetaDataCallback;

    .line 64
    invoke-virtual {p0}, Lcom/yozio/android/YozioService;->validateKeys()V

    .line 65
    invoke-virtual {p0}, Lcom/yozio/android/YozioService;->initYozioDirectory()V

    .line 66
    invoke-virtual {p0}, Lcom/yozio/android/YozioService;->trackInstall()V

    .line 69
    const-string/jumbo v0, "app_on_create"

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/yozio/android/YozioService;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 71
    invoke-static {}, Lcom/yozio/android/helpers/Configs;->getInstance()Lcom/yozio/android/helpers/Configs;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yozio/android/helpers/Configs;->initConfigs(Z)V

    .line 73
    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p4, "forceFlush"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p3, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/yozio/android/helpers/EventStore;->getInstance()Lcom/yozio/android/helpers/EventStore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/yozio/android/helpers/EventStore;->add(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 171
    return-void
.end method

.method protected trackInstall()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 143
    iget-object v3, p0, Lcom/yozio/android/YozioService;->_context:Landroid/content/Context;

    const-string/jumbo v4, "come.yozio.android.PREFERENCES"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    .local v0, "_sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "installTracked"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 145
    .local v2, "installTracked":Z
    if-eqz v2, :cond_2c

    .line 146
    sget-object v3, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v4, "installTracked already exists."

    invoke-static {v3, v4}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/yozio/android/YozioService;->_metadataCallback:Lcom/yozio/android/interfaces/GetMetaDataCallback;

    if-eqz v3, :cond_2b

    .line 148
    iget-object v3, p0, Lcom/yozio/android/YozioService;->_metadataCallback:Lcom/yozio/android/interfaces/GetMetaDataCallback;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3, v4}, Lcom/yozio/android/interfaces/GetMetaDataCallback;->handleMetaData(Ljava/util/HashMap;)V

    .line 166
    :cond_2b
    :goto_2b
    return-void

    .line 154
    :cond_2c
    iget-object v3, p0, Lcom/yozio/android/YozioService;->_metadataCallback:Lcom/yozio/android/interfaces/GetMetaDataCallback;

    if-eqz v3, :cond_3e

    .line 155
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v3

    new-instance v4, Lcom/yozio/android/async/GetMetaDataTask;

    iget-object v5, p0, Lcom/yozio/android/YozioService;->_metadataCallback:Lcom/yozio/android/interfaces/GetMetaDataCallback;

    invoke-direct {v4, v5}, Lcom/yozio/android/async/GetMetaDataTask;-><init>(Lcom/yozio/android/interfaces/GetMetaDataCallback;)V

    invoke-virtual {v3, v4}, Lcom/yozio/android/YozioService;->runTask(Ljava/lang/Runnable;)V

    .line 159
    :cond_3e
    sget-object v3, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v4, "tracking new app install."

    invoke-static {v3, v4}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 160
    const-string/jumbo v3, "app_install"

    invoke-virtual {p0, v3, v7, v7, v6}, Lcom/yozio/android/YozioService;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 163
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 164
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "installTracked"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2b
.end method

.method protected validateKeys()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/yozio/android/YozioService;->_appKey:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "!!!!!!!!!!!!!!!!!! Yozio APP_KEY cannot be nil. You can find your APP_KEY on the app overview page (Your App > Overview) on Yozio website."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_d
    iget-object v0, p0, Lcom/yozio/android/YozioService;->_appKey:Ljava/lang/String;

    const-string/jumbo v1, "APP_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "!!!!!!!!!!!!!!!!!! Please replace the APP_KEY with your own APP_KEY. You can find your APP_KEY on the app overview page (Your App > Overview) on Yozio website."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_21
    iget-object v0, p0, Lcom/yozio/android/YozioService;->_secretKey:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "!!!!!!!!!!!!!!!!!! Yozio SECRET_KEY cannot be nil. You can find your SECRET_KEY on the app overview page (Your App > Overview) on Yozio website."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2e
    iget-object v0, p0, Lcom/yozio/android/YozioService;->_secretKey:Ljava/lang/String;

    const-string/jumbo v1, "SECRET_KEY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "!!!!!!!!!!!!!!!!!! Please replace the SECRET_KEY with your own SECRET_KEY. You can find your SECRET_KEY on the app overview page (Your App > Overview) on Yozio website."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_42
    return-void
.end method
