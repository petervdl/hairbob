.class public Lcom/yozio/android/helpers/EventStore;
.super Ljava/lang/Object;
.source "EventStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yozio/android/helpers/EventStore$AddEventTask;,
        Lcom/yozio/android/helpers/EventStore$FlushEventsTask;
    }
.end annotation


# static fields
.field private static _instance:Lcom/yozio/android/helpers/EventStore;


# instance fields
.field private final _executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/yozio/android/helpers/EventStore;

    invoke-direct {v0}, Lcom/yozio/android/helpers/EventStore;-><init>()V

    sput-object v0, Lcom/yozio/android/helpers/EventStore;->_instance:Lcom/yozio/android/helpers/EventStore;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/yozio/android/helpers/EventStore;->_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/yozio/android/helpers/EventStore;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/yozio/android/helpers/EventStore;->_instance:Lcom/yozio/android/helpers/EventStore;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 13
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
    .line 45
    .local p3, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/yozio/android/helpers/EventStore;->_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/yozio/android/helpers/EventStore$AddEventTask;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/yozio/android/helpers/EventStore$AddEventTask;-><init>(Lcom/yozio/android/helpers/EventStore;Lcom/yozio/android/helpers/EventStore;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 46
    return-void
.end method

.method protected addEventToQueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 13
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p3, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Yozio"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "EventQueue.data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "eventQueuePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "eventFile":Ljava/io/File;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v1, "event":Lorg/json/JSONObject;
    const/4 v4, 0x0

    .line 141
    .local v4, "writer":Ljava/io/BufferedWriter;
    if-eqz p1, :cond_46

    :try_start_40
    const-string/jumbo v6, "name"

    invoke-virtual {v1, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    :cond_46
    if-eqz p2, :cond_4e

    const-string/jumbo v6, "value"

    invoke-virtual {v1, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    :cond_4e
    if-eqz p3, :cond_5b

    const-string/jumbo v6, "properties"

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_5b
    const-string/jumbo v6, "timestamp"

    invoke-static {}, Lcom/yozio/android/helpers/SystemInfo;->getInstance()Lcom/yozio/android/helpers/SystemInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/yozio/android/helpers/SystemInfo;->getCurrentTimeLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    const/4 v7, 0x1

    invoke-direct {v6, v2, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_78} :catch_a6

    .line 148
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .local v5, "writer":Ljava/io/BufferedWriter;
    :try_start_78
    new-instance v7, Ljava/lang/StringBuilder;

    instance-of v6, v1, Lorg/json/JSONObject;

    if-nez v6, :cond_9f

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v1    # "event":Lorg/json/JSONObject;
    :goto_82
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "\n"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 152
    invoke-virtual {p0}, Lcom/yozio/android/helpers/EventStore;->increment()V

    move-object v4, v5

    .line 162
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :goto_9e
    return-void

    .line 148
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "event":Lorg/json/JSONObject;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_9f
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "event":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_a4} :catch_b8

    move-result-object v6

    goto :goto_82

    .line 154
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "event":Lorg/json/JSONObject;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    :catch_a6
    move-exception v0

    .line 155
    .end local v1    # "event":Lorg/json/JSONObject;
    .local v0, "e":Ljava/lang/Exception;
    :goto_a7
    sget-object v6, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v7, "failed to add to EventQueue!"

    invoke-static {v6, v7}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    :try_start_b2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    goto :goto_9e

    .line 160
    :catch_b6
    move-exception v6

    goto :goto_9e

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_b8
    move-exception v0

    move-object v4, v5

    .end local v5    # "writer":Ljava/io/BufferedWriter;
    .restart local v4    # "writer":Ljava/io/BufferedWriter;
    goto :goto_a7
.end method

.method protected count()I
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 165
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "come.yozio.android.PREFERENCES"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, "_sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "eventsCount"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 167
    .local v1, "eventsCount":I
    return v1
.end method

.method protected doAdd(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Z)V
    .registers 8
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
    .line 50
    .local p3, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/yozio/android/helpers/EventStore;->count()I

    move-result v0

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_c

    .line 51
    invoke-virtual {p0}, Lcom/yozio/android/helpers/EventStore;->flush()V

    .line 73
    :cond_b
    :goto_b
    return-void

    .line 56
    :cond_c
    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "track event name:["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6b

    move-object v0, p1

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    const-string/jumbo v2, "], value:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_6f

    move-object v0, p2

    :goto_27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    const-string/jumbo v2, "], properties:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_73

    invoke-virtual {p3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    const-string/jumbo v2, "], forceFlush:["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/yozio/android/helpers/EventStore;->addEventToQueue(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 65
    invoke-virtual {p0}, Lcom/yozio/android/helpers/EventStore;->count()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_65

    .line 66
    const/4 p4, 0x1

    .line 70
    :cond_65
    if-eqz p4, :cond_b

    .line 71
    invoke-virtual {p0}, Lcom/yozio/android/helpers/EventStore;->flush()V

    goto :goto_b

    .line 56
    :cond_6b
    const-string/jumbo v0, ""

    goto :goto_19

    .line 57
    :cond_6f
    const-string/jumbo v0, ""

    goto :goto_27

    .line 58
    :cond_73
    const-string/jumbo v0, ""

    goto :goto_38
.end method

.method protected doFlush()V
    .registers 12

    .prologue
    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "Yozio"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "EventQueue.data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "eventQueuePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, "eventQueueFile":Ljava/io/File;
    sget-object v8, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v9, "flushing EventQueue..."

    invoke-static {v8, v9}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 87
    sget-object v8, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v9, "no EventQueue file, start with fresh EventQueue."

    invoke-static {v8, v9}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 131
    :goto_4e
    return-void

    .line 93
    :cond_4f
    const/4 v6, 0x0

    .line 96
    .local v6, "r":Ljava/io/BufferedReader;
    :try_start_50
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5f} :catch_fb

    .line 97
    .end local v6    # "r":Ljava/io/BufferedReader;
    .local v7, "r":Ljava/io/BufferedReader;
    :try_start_5f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "["

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "content":Ljava/lang/StringBuilder;
    :goto_67
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_ad

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v8, Lorg/json/JSONArray;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 105
    .local v4, "events":Lorg/json/JSONArray;
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_89} :catch_c5

    .line 119
    invoke-static {}, Lcom/yozio/android/helpers/Api;->getInstance()Lcom/yozio/android/helpers/Api;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/yozio/android/helpers/Api;->flushEvents(Lorg/json/JSONArray;)Z

    move-result v8

    if-nez v8, :cond_da

    .line 120
    sget-object v8, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "failed to flush EventQueue: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yozio/android/helpers/EventStore;->count()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    goto :goto_4e

    .line 100
    .end local v4    # "events":Lorg/json/JSONArray;
    :cond_ad
    :try_start_ad
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c4} :catch_c5

    goto :goto_67

    .line 107
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "line":Ljava/lang/String;
    :catch_c5
    move-exception v1

    move-object v6, v7

    .line 108
    .end local v7    # "r":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v6    # "r":Ljava/io/BufferedReader;
    :goto_c7
    sget-object v8, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v9, "failed to read data from EventQueue file!"

    invoke-static {v8, v9}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :try_start_d2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_d5} :catch_d7

    goto/16 :goto_4e

    .line 113
    :catch_d7
    move-exception v8

    goto/16 :goto_4e

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v6    # "r":Ljava/io/BufferedReader;
    .restart local v0    # "content":Ljava/lang/StringBuilder;
    .restart local v4    # "events":Lorg/json/JSONArray;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "r":Ljava/io/BufferedReader;
    :cond_da
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 128
    invoke-virtual {p0}, Lcom/yozio/android/helpers/EventStore;->reset()V

    .line 130
    sget-object v8, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "EventQueue flushed: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/yozio/android/helpers/EventStore;->count()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    goto/16 :goto_4e

    .line 107
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v4    # "events":Lorg/json/JSONArray;
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "r":Ljava/io/BufferedReader;
    .restart local v6    # "r":Ljava/io/BufferedReader;
    :catch_fb
    move-exception v1

    goto :goto_c7
.end method

.method public flush()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yozio/android/helpers/EventStore;->_executor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/yozio/android/helpers/EventStore$FlushEventsTask;

    invoke-direct {v1, p0, p0}, Lcom/yozio/android/helpers/EventStore$FlushEventsTask;-><init>(Lcom/yozio/android/helpers/EventStore;Lcom/yozio/android/helpers/EventStore;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 77
    return-void
.end method

.method protected increment()V
    .registers 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/yozio/android/helpers/EventStore;->count()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yozio/android/helpers/EventStore;->setCount(I)V

    .line 172
    return-void
.end method

.method protected reset()V
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yozio/android/helpers/EventStore;->setCount(I)V

    .line 176
    return-void
.end method

.method protected setCount(I)V
    .registers 7
    .param p1, "count"    # I

    .prologue
    .line 179
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "come.yozio.android.PREFERENCES"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 180
    .local v0, "_sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 181
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "eventsCount"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    return-void
.end method
