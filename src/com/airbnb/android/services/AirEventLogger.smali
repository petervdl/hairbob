.class public Lcom/airbnb/android/services/AirEventLogger;
.super Landroid/app/IntentService;
.source "AirEventLogger.java"


# static fields
.field private static final ANDROID_ID:Ljava/lang/String; = "android_id"

.field private static final APP_VERSION:Ljava/lang/String; = "version"

.field private static final EVENT_DATA_EXTRA:Ljava/lang/String; = "event_data"

.field public static final EVENT_ENGINEERING_LOG:Ljava/lang/String; = "android_eng"

.field private static final EVENT_NAME_EXTRA:Ljava/lang/String; = "event_name"

.field private static final EVENT_NAME_REGEX:Ljava/lang/String; = "^[A-Za-z_][A-Za-z_0-9]*$"

.field private static final LANGUAGE:Ljava/lang/String; = "language"

.field private static final LOGGED_IN:Ljava/lang/String; = "is_logged_in"

.field private static final LOGGED_IN_USER_ID:Ljava/lang/String; = "user_id"

.field private static final LOG_FILES_DIRECTORY:Ljava/lang/String; = "analytics_logs"

.field private static final MAX_NUMBER_ARCHIVE_FILES:I = 0xfa

.field private static final MAX_REQUEST_QUEUE_SIZE:I = 0x32

.field private static final MIXPANEL_EXTRA:Ljava/lang/String; = "mixpanel"

.field private static final OS:Ljava/lang/String; = "source"

.field private static final OS_VERSION:Ljava/lang/String; = "operating_system_version"

.field public static final TAG:Ljava/lang/String;

.field private static final TIMER_FLUSH_INTERVAL:I = 0xea60

.field private static final TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static mContext:Landroid/content/Context;

.field private static mMixpanelJson:Lorg/json/JSONObject;

.field private static mRequestJsons:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimer:Ljava/util/Timer;

.field private static mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/airbnb/android/services/AirEventLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 86
    sget-object v0, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/services/AirEventLogger;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/AirEventLogger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/airbnb/android/services/AirEventLogger;->deleteArchiveFile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/concurrent/ArrayBlockingQueue;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/airbnb/android/services/AirEventLogger;->mRequestJsons:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Timer;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/airbnb/android/services/AirEventLogger;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/Timer;)Ljava/util/Timer;
    .registers 1
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 49
    sput-object p0, Lcom/airbnb/android/services/AirEventLogger;->mTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$300()Ljava/util/TimerTask;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/airbnb/android/services/AirEventLogger;->mTimerTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .registers 1
    .param p0, "x0"    # Ljava/util/TimerTask;

    .prologue
    .line 49
    sput-object p0, Lcom/airbnb/android/services/AirEventLogger;->mTimerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method private createResponseJsonFromData(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)Lorg/json/JSONObject;
    .registers 19
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "mixpanel"    # Z
    .param p3, "eventData"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 351
    const-string/jumbo v12, "^[A-Za-z_][A-Za-z_0-9]*$"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 352
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "Invalid event name.  Event name must fit regular expression: ^[A-Za-z_][A-Za-z_0-9]*$"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 355
    :cond_14
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 357
    .local v10, "propertiesJson":Lorg/json/JSONObject;
    :try_start_19
    const-string/jumbo v12, "source"

    const-string/jumbo v13, "android"

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string/jumbo v12, "operating_system_version"

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 360
    const-string/jumbo v13, "is_logged_in"

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v12

    invoke-virtual {v12}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v12

    if-eqz v12, :cond_f7

    const/4 v12, 0x1

    :goto_38
    invoke-virtual {v10, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 361
    const-string/jumbo v12, "is_logged_in"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_56

    .line 362
    const-string/jumbo v12, "user_id"

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v13

    invoke-virtual {v13}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v13

    invoke-virtual {v10, v12, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 365
    :cond_56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 366
    .local v7, "locale":Ljava/util/Locale;
    const-string/jumbo v12, "language"

    invoke-virtual {v7}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    sget-object v12, Lcom/airbnb/android/services/AirEventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    sget-object v13, Lcom/airbnb/android/services/AirEventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v2, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 370
    .local v2, "appVersion":Ljava/lang/String;
    const-string/jumbo v12, "version"

    invoke-virtual {v10, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    sget-object v12, Lcom/airbnb/android/services/AirEventLogger;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "android_id"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "androidID":Ljava/lang/String;
    const-string/jumbo v12, "android_id"

    invoke-virtual {v10, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 375
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 376
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 377
    .local v8, "now":J
    const-string/jumbo v12, "timestamp"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 379
    if-eqz p3, :cond_cb

    .line 380
    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/android/utils/Strap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_ac
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_cb

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 381
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v6, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c1
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_c1} :catch_c2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_c1} :catch_fa

    goto :goto_ac

    .line 384
    .end local v1    # "androidID":Ljava/lang/String;
    .end local v2    # "appVersion":Ljava/lang/String;
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v8    # "now":J
    :catch_c2
    move-exception v4

    .line 385
    .local v4, "e":Lorg/json/JSONException;
    sget-object v12, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Unable to create json from event_data"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_cb
    :goto_cb
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 392
    .local v11, "requestJson":Lorg/json/JSONObject;
    :try_start_d0
    const-string/jumbo v12, "event_name"

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string/jumbo v12, "event_data"

    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 394
    const-string/jumbo v12, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    if-eqz p2, :cond_f6

    .line 397
    const-string/jumbo v12, "mixpanel"

    sget-object v13, Lcom/airbnb/android/services/AirEventLogger;->mMixpanelJson:Lorg/json/JSONObject;

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_f6
    .catch Lorg/json/JSONException; {:try_start_d0 .. :try_end_f6} :catch_104

    .line 403
    :cond_f6
    :goto_f6
    return-object v11

    .line 360
    .end local v11    # "requestJson":Lorg/json/JSONObject;
    :cond_f7
    const/4 v12, 0x0

    goto/16 :goto_38

    .line 386
    :catch_fa
    move-exception v4

    .line 387
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v12, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Unable to find app version"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cb

    .line 399
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v11    # "requestJson":Lorg/json/JSONObject;
    :catch_104
    move-exception v4

    .line 400
    .local v4, "e":Lorg/json/JSONException;
    sget-object v12, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v13, "Unable to create request json object"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f6
.end method

.method private deleteArchiveFile(Ljava/lang/String;)V
    .registers 7
    .param p1, "logName"    # Ljava/lang/String;

    .prologue
    .line 332
    sget-object v2, Lcom/airbnb/android/services/AirEventLogger;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "analytics_logs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 334
    .local v0, "archiveDirectory":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    .local v1, "archiveFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 336
    return-void
.end method

.method private generateArchiveLogName()Ljava/lang/String;
    .registers 7

    .prologue
    .line 412
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 413
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 414
    .local v2, "now":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "logName":Ljava/lang/String;
    return-object v1
.end method

.method private initializeTimer()V
    .registers 7

    .prologue
    const-wide/32 v2, 0xea60

    .line 422
    sget-object v0, Lcom/airbnb/android/services/AirEventLogger;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1d

    .line 423
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/airbnb/android/services/AirEventLogger;->mTimer:Ljava/util/Timer;

    .line 424
    new-instance v0, Lcom/airbnb/android/services/AirEventLogger$4;

    invoke-direct {v0, p0}, Lcom/airbnb/android/services/AirEventLogger$4;-><init>(Lcom/airbnb/android/services/AirEventLogger;)V

    sput-object v0, Lcom/airbnb/android/services/AirEventLogger;->mTimerTask:Ljava/util/TimerTask;

    .line 442
    sget-object v0, Lcom/airbnb/android/services/AirEventLogger;->mTimer:Ljava/util/Timer;

    sget-object v1, Lcom/airbnb/android/services/AirEventLogger;->mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 444
    :cond_1d
    return-void
.end method

.method private makeBatchNetworkRequest(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 8
    .param p1, "requestJsons"    # Lorg/json/JSONArray;
    .param p2, "logName"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v1, Lcom/airbnb/android/services/AirEventLogger$1;

    invoke-direct {v1, p0, p2}, Lcom/airbnb/android/services/AirEventLogger$1;-><init>(Lcom/airbnb/android/services/AirEventLogger;Ljava/lang/String;)V

    .line 264
    .local v1, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;>;"
    new-instance v0, Lcom/airbnb/android/services/AirEventLogger$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/services/AirEventLogger$2;-><init>(Lcom/airbnb/android/services/AirEventLogger;)V

    .line 272
    .local v0, "errorListener":Lcom/android/volley/Response$ErrorListener;
    sget-object v4, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    instance-of v3, p1, Lorg/json/JSONArray;

    if-nez v3, :cond_20

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_14
    invoke-static {v4, v3}, Lcom/airbnb/android/utils/BuildHelper;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v2, Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;

    invoke-direct {v2, p1, v1, v0}, Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;-><init>(Lorg/json/JSONArray;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 275
    .local v2, "request":Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;
    invoke-virtual {v2}, Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;->execute()V

    .line 276
    return-void

    .end local v2    # "request":Lcom/airbnb/android/requests/AirAnalyticsBatchRequest;
    :cond_20
    move-object v3, p1

    .line 272
    check-cast v3, Lorg/json/JSONArray;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    goto :goto_14
.end method

.method public static makeStrap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 9
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 145
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "page"

    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "section"

    invoke-virtual {v3, v4, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "operation"

    invoke-virtual {v3, v4, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    .line 147
    .local v2, "params":Lcom/airbnb/android/utils/Strap;
    if-eqz p3, :cond_3f

    .line 148
    invoke-virtual {p3}, Lcom/airbnb/android/utils/Strap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p3, v1}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 150
    invoke-virtual {p3, v1}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    goto :goto_23

    .line 155
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_3f
    return-object v2
.end method

.method public static track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V
    .registers 7
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "mixpanel"    # Z
    .param p2, "eventData"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 117
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {}, Lcom/airbnb/android/utils/Trebuchet;->isBeta()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 118
    :cond_c
    sget-object v1, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "I\'m going to track the event \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" with data: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/airbnb/android/utils/Strap;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_3b
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/services/AirEventLogger;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "event_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "mixpanel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    if-eqz p2, :cond_62

    .line 125
    const-string/jumbo v1, "event_data"

    invoke-static {p2}, Lcom/airbnb/android/utils/ParcelStrap;->make(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/ParcelStrap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    :cond_62
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/AirbnbApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 129
    return-void
.end method

.method public static varargs track([Ljava/lang/String;)V
    .registers 6
    .param p0, "path"    # [Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    .line 133
    .local v2, "strap":Lcom/airbnb/android/utils/Strap;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_30

    .line 134
    add-int/lit8 v3, v1, 0x1

    aget-object v0, p0, v3

    .line 135
    .local v0, "currentPath":Ljava/lang/String;
    if-nez v0, :cond_13

    .line 136
    const-string/jumbo v0, ""

    .line 138
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 141
    .end local v0    # "currentPath":Ljava/lang/String;
    :cond_30
    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v4, 0x1

    invoke-static {v3, v4, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 142
    return-void
.end method

.method private writeRequestsToArchiveFile(Lorg/json/JSONArray;Ljava/lang/String;)V
    .registers 13
    .param p1, "requestJsons"    # Lorg/json/JSONArray;
    .param p2, "logName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 287
    sget-object v6, Lcom/airbnb/android/services/AirEventLogger;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "analytics_logs"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 289
    .local v0, "archiveDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 292
    .local v5, "unsentArchiveFiles":[Ljava/io/File;
    array-length v6, v5

    const/16 v7, 0xfa

    if-le v6, v7, :cond_28

    .line 293
    sget-object v6, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Max number of analytics archive files exceeded!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v6, Lcom/airbnb/android/services/AirEventLogger$3;

    invoke-direct {v6, p0}, Lcom/airbnb/android/services/AirEventLogger$3;-><init>(Lcom/airbnb/android/services/AirEventLogger;)V

    invoke-static {v5, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 303
    aget-object v6, v5, v8

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 306
    :cond_28
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    .local v1, "archiveFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 309
    .local v3, "fileWriter":Ljava/io/FileWriter;
    :try_start_2e
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_33} :catch_6b
    .catchall {:try_start_2e .. :try_end_33} :catchall_a6

    .line 310
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .local v4, "fileWriter":Ljava/io/FileWriter;
    :try_start_33
    instance-of v6, p1, Lorg/json/JSONArray;

    if-nez v6, :cond_48

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    .end local p1    # "requestJsons":Lorg/json/JSONArray;
    :goto_3b
    invoke-virtual {v4, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_41} :catch_cb
    .catchall {:try_start_33 .. :try_end_41} :catchall_c8

    .line 316
    if-eqz v4, :cond_46

    .line 317
    :try_start_43
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_4f

    :cond_46
    move-object v3, v4

    .line 323
    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    :cond_47
    :goto_47
    return-void

    .line 310
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local p1    # "requestJsons":Lorg/json/JSONArray;
    :cond_48
    :try_start_48
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "requestJsons":Lorg/json/JSONArray;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_cb
    .catchall {:try_start_48 .. :try_end_4d} :catchall_c8

    move-result-object v6

    goto :goto_3b

    .line 319
    :catch_4f
    move-exception v2

    .line 320
    .local v2, "e":Ljava/io/IOException;
    sget-object v6, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 322
    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_47

    .line 312
    .end local v2    # "e":Ljava/io/IOException;
    .restart local p1    # "requestJsons":Lorg/json/JSONArray;
    :catch_6b
    move-exception v2

    .line 313
    .end local p1    # "requestJsons":Lorg/json/JSONArray;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_6c
    :try_start_6c
    sget-object v6, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error writing archive file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_6c .. :try_end_85} :catchall_a6

    .line 316
    if-eqz v3, :cond_47

    .line 317
    :try_start_87
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_47

    .line 319
    :catch_8b
    move-exception v2

    .line 320
    sget-object v6, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error trying to close file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 315
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_a6
    move-exception v6

    .line 316
    :goto_a7
    if-eqz v3, :cond_ac

    .line 317
    :try_start_a9
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    .line 321
    :cond_ac
    :goto_ac
    throw v6

    .line 319
    :catch_ad
    move-exception v2

    .line 320
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error trying to close file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 315
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catchall_c8
    move-exception v6

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_a7

    .line 312
    .end local v3    # "fileWriter":Ljava/io/FileWriter;
    .restart local v4    # "fileWriter":Ljava/io/FileWriter;
    :catch_cb
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileWriter":Ljava/io/FileWriter;
    .restart local v3    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_6c
.end method


# virtual methods
.method public flushRequestsAndUpload()V
    .registers 4

    .prologue
    .line 216
    sget-object v2, Lcom/airbnb/android/services/AirEventLogger;->mRequestJsons:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    if-lez v2, :cond_1e

    .line 217
    new-instance v0, Lorg/json/JSONArray;

    sget-object v2, Lcom/airbnb/android/services/AirEventLogger;->mRequestJsons:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 218
    .local v0, "jsonArrayOfRequests":Lorg/json/JSONArray;
    invoke-direct {p0}, Lcom/airbnb/android/services/AirEventLogger;->generateArchiveLogName()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "logName":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/services/AirEventLogger;->writeRequestsToArchiveFile(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/services/AirEventLogger;->makeBatchNetworkRequest(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 223
    sget-object v2, Lcom/airbnb/android/services/AirEventLogger;->mRequestJsons:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 225
    .end local v0    # "jsonArrayOfRequests":Lorg/json/JSONArray;
    .end local v1    # "logName":Ljava/lang/String;
    :cond_1e
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 93
    sget-object v1, Lcom/airbnb/android/services/AirEventLogger;->mContext:Landroid/content/Context;

    if-nez v1, :cond_2c

    .line 94
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/airbnb/android/services/AirEventLogger;->mContext:Landroid/content/Context;

    .line 95
    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sput-object v1, Lcom/airbnb/android/services/AirEventLogger;->mRequestJsons:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 97
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    sput-object v1, Lcom/airbnb/android/services/AirEventLogger;->mMixpanelJson:Lorg/json/JSONObject;

    .line 99
    :try_start_21
    sget-object v1, Lcom/airbnb/android/services/AirEventLogger;->mMixpanelJson:Lorg/json/JSONObject;

    const-string/jumbo v2, "token"

    const-string/jumbo v3, "6b70977603f761bd58debd45d23e2744"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_2c} :catch_2d

    .line 104
    :cond_2c
    :goto_2c
    return-void

    .line 100
    :catch_2d
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error initializing MixPanel JSON dictionary."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 234
    .local v2, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "event_name"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "eventName":Ljava/lang/String;
    const-string/jumbo v4, "mixpanel"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 236
    .local v3, "mixpanel":Z
    const-string/jumbo v4, "event_data"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/utils/ParcelStrap;

    .line 238
    .local v0, "eventData":Lcom/airbnb/android/utils/ParcelStrap;
    invoke-direct {p0}, Lcom/airbnb/android/services/AirEventLogger;->initializeTimer()V

    .line 240
    sget-object v5, Lcom/airbnb/android/services/AirEventLogger;->mRequestJsons:Ljava/util/concurrent/ArrayBlockingQueue;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/airbnb/android/utils/ParcelStrap;->internal()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    :goto_26
    invoke-direct {p0, v1, v3, v4}, Lcom/airbnb/android/services/AirEventLogger;->createResponseJsonFromData(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v4, Lcom/airbnb/android/services/AirEventLogger;->mRequestJsons:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_3a

    .line 243
    invoke-virtual {p0}, Lcom/airbnb/android/services/AirEventLogger;->flushRequestsAndUpload()V

    .line 245
    :cond_3a
    return-void

    .line 240
    :cond_3b
    const/4 v4, 0x0

    goto :goto_26
.end method

.method public uploadPendingArchiveFiles()V
    .registers 20

    .prologue
    .line 164
    sget-object v15, Lcom/airbnb/android/services/AirEventLogger;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "analytics_logs"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 166
    .local v1, "archiveDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 168
    .local v14, "unsentArchiveFiles":[Ljava/io/File;
    move-object v3, v14

    .local v3, "arr$":[Ljava/io/File;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_12
    if-ge v7, v9, :cond_18c

    aget-object v2, v3, v7

    .line 169
    .local v2, "archiveFile":Ljava/io/File;
    const/4 v5, 0x0

    .line 170
    .local v5, "fin":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 172
    .local v11, "reader":Ljava/io/BufferedReader;
    :try_start_18
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_ca
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_1d} :catch_114
    .catchall {:try_start_18 .. :try_end_1d} :catchall_161

    .line 173
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .local v6, "fin":Ljava/io/FileInputStream;
    :try_start_1d
    new-instance v12, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_27} :catch_1a9
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_27} :catch_19d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_27} :catch_194
    .catchall {:try_start_1d .. :try_end_27} :catchall_18d

    .line 174
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .local v12, "reader":Ljava/io/BufferedReader;
    :try_start_27
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v13, "sb":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 176
    .local v10, "line":Ljava/lang/String;
    :goto_2d
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_64

    .line 177
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_36} :catch_37
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_36} :catch_1a1
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_36} :catch_198
    .catchall {:try_start_27 .. :try_end_36} :catchall_190

    goto :goto_2d

    .line 185
    .end local v10    # "line":Ljava/lang/String;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    :catch_37
    move-exception v4

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 186
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    :goto_3a
    :try_start_3a
    sget-object v15, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to find archive file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3a .. :try_end_57} :catchall_161

    .line 195
    if-eqz v5, :cond_5c

    .line 196
    :try_start_59
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 199
    :cond_5c
    if-eqz v11, :cond_61

    .line 200
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_61} :catch_ab

    .line 168
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_61
    :goto_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 180
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "sb":Ljava/lang/StringBuilder;
    :cond_64
    :try_start_64
    new-instance v15, Lorg/json/JSONArray;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 181
    .local v8, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v15}, Lcom/airbnb/android/services/AirEventLogger;->makeBatchNetworkRequest(Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V

    .line 184
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_64 .. :try_end_7d} :catch_37
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_7d} :catch_1a1
    .catch Lorg/json/JSONException; {:try_start_64 .. :try_end_7d} :catch_198
    .catchall {:try_start_64 .. :try_end_7d} :catchall_190

    .line 195
    if-eqz v6, :cond_82

    .line 196
    :try_start_7f
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 199
    :cond_82
    if-eqz v12, :cond_87

    .line 200
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_87} :catch_8a

    :cond_87
    move-object v11, v12

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 204
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_61

    .line 202
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_8a
    move-exception v4

    .line 203
    .local v4, "e":Ljava/io/IOException;
    sget-object v15, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Could not close file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 206
    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_61

    .line 202
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v10    # "line":Ljava/lang/String;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_ab
    move-exception v4

    .line 203
    .local v4, "e":Ljava/io/IOException;
    sget-object v15, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Could not close file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 187
    .end local v4    # "e":Ljava/io/IOException;
    :catch_ca
    move-exception v4

    .line 188
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_cb
    :try_start_cb
    sget-object v15, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error parsing file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catchall {:try_start_cb .. :try_end_e8} :catchall_161

    .line 195
    if-eqz v5, :cond_ed

    .line 196
    :try_start_ea
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 199
    :cond_ed
    if-eqz v11, :cond_61

    .line 200
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f2} :catch_f4

    goto/16 :goto_61

    .line 202
    :catch_f4
    move-exception v4

    .line 203
    sget-object v15, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Could not close file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    .line 189
    .end local v4    # "e":Ljava/io/IOException;
    :catch_114
    move-exception v4

    .line 191
    .local v4, "e":Lorg/json/JSONException;
    :goto_115
    :try_start_115
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 192
    sget-object v15, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Error parsing file to JSON: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catchall {:try_start_115 .. :try_end_135} :catchall_161

    .line 195
    if-eqz v5, :cond_13a

    .line 196
    :try_start_137
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 199
    :cond_13a
    if-eqz v11, :cond_61

    .line 200
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13f} :catch_141

    goto/16 :goto_61

    .line 202
    :catch_141
    move-exception v4

    .line 203
    .local v4, "e":Ljava/io/IOException;
    sget-object v15, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Could not close file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    .line 194
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_161
    move-exception v15

    .line 195
    :goto_162
    if-eqz v5, :cond_167

    .line 196
    :try_start_164
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 199
    :cond_167
    if-eqz v11, :cond_16c

    .line 200
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_16c
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_16c} :catch_16d

    .line 204
    :cond_16c
    :goto_16c
    throw v15

    .line 202
    :catch_16d
    move-exception v4

    .line 203
    .restart local v4    # "e":Ljava/io/IOException;
    sget-object v16, Lcom/airbnb/android/services/AirEventLogger;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Could not close file: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16c

    .line 208
    .end local v2    # "archiveFile":Ljava/io/File;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    :cond_18c
    return-void

    .line 194
    .restart local v2    # "archiveFile":Ljava/io/File;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    :catchall_18d
    move-exception v15

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_162

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catchall_190
    move-exception v15

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto :goto_162

    .line 189
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :catch_194
    move-exception v4

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_115

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_198
    move-exception v4

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_115

    .line 187
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :catch_19d
    move-exception v4

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_cb

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_1a1
    move-exception v4

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v11    # "reader":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_cb

    .line 185
    :catch_1a6
    move-exception v4

    goto/16 :goto_3a

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fin":Ljava/io/FileInputStream;
    :catch_1a9
    move-exception v4

    move-object v5, v6

    .end local v6    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_3a
.end method
