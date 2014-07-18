.class public Lcom/airbnb/android/services/GCMIntentService;
.super Landroid/app/IntentService;
.source "GCMIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/services/GCMIntentService$2;,
        Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;
    }
.end annotation


# static fields
.field public static final EXTRA_VOICE_REPLY:Ljava/lang/String; = "extra_voice_reply"

.field public static NOTIFICATION_ID:I = 0x0

.field private static final NOTIFICATION_TITLES:Ljava/lang/String; = "titles"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "gcm_prefs"

.field public static final TAG:Ljava/lang/String;

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:J = 0x1d4c0L


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 103
    const-class v0, Lcom/airbnb/android/services/GCMIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/services/GCMIntentService;->TAG:Ljava/lang/String;

    .line 105
    const/16 v0, 0x1d9f

    sput v0, Lcom/airbnb/android/services/GCMIntentService;->NOTIFICATION_ID:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 116
    sget-object v0, Lcom/airbnb/android/services/GCMIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private createPendingIntent(Ljava/util/List;Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 6
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .prologue
    .line 433
    .local p1, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/Intent;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-static {p0, p3, v0, v1}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static dismissPushNotification(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 439
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v2, Lcom/airbnb/android/services/GCMIntentService;->NOTIFICATION_ID:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 440
    const-string/jumbo v2, "gcm_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 441
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    return-void
.end method

.method public static intentForMessage(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/services/GCMIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 112
    return-object v0
.end method

.method private setIntentParams(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pushNotificationId"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;
    .param p4, "pushType"    # Ljava/lang/String;

    .prologue
    .line 427
    const-string/jumbo v0, "push_notification_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string/jumbo v0, "secret"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string/jumbo v0, "push_type"

    invoke-virtual {p1, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 64
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v4

    if-nez v4, :cond_20

    .line 125
    const-string/jumbo v4, "android_eng"

    const/4 v5, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    const-string/jumbo v7, "push_suppressed"

    const-string/jumbo v8, "logged_out"

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 424
    :cond_1f
    :goto_1f
    return-void

    .line 128
    :cond_20
    const-string/jumbo v4, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/airbnb/android/services/GCMIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/os/PowerManager;

    .line 129
    .local v44, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x1

    sget-object v5, Lcom/airbnb/android/services/GCMIntentService;->TAG:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v60

    .line 131
    .local v60, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/32 v4, 0x1d4c0

    move-object/from16 v0, v60

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 133
    const-string/jumbo v4, "title_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v58

    .line 135
    .local v58, "title":Ljava/lang/CharSequence;
    if-nez v58, :cond_4e

    .line 136
    const-string/jumbo v58, ""

    .line 139
    :cond_4e
    const-string/jumbo v4, "body_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    .line 141
    .local v15, "content":Ljava/lang/CharSequence;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 142
    const-string/jumbo v4, "message"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 143
    .local v35, "legacyMessage":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34e

    const-string/jumbo v15, ""

    .line 146
    .end local v35    # "legacyMessage":Ljava/lang/String;
    :cond_73
    :goto_73
    const-string/jumbo v4, "air_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 147
    .local v59, "type":Ljava/lang/String;
    const-string/jumbo v4, "air_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 148
    .local v26, "id":Ljava/lang/String;
    const-string/jumbo v4, "photo_url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 149
    .local v43, "photoUrl":Ljava/lang/String;
    const-string/jumbo v4, "host"

    const-string/jumbo v5, "role"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    .line 150
    .local v31, "isHost":Z
    const-string/jumbo v4, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 151
    .local v55, "status":Ljava/lang/String;
    const-string/jumbo v4, "hidden"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 152
    .local v30, "isHiddenNotification":Z
    const/16 v51, 0x0

    .line 153
    .local v51, "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    if-eqz v55, :cond_b9

    .line 154
    invoke-static/range {v55 .. v55}, Lcom/airbnb/android/models/ReservationStatus;->findStatus(Ljava/lang/String;)Lcom/airbnb/android/models/ReservationStatus;

    move-result-object v51

    .line 156
    :cond_b9
    const-string/jumbo v4, "push_notification_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 157
    .local v46, "pushNotificationId":Ljava/lang/String;
    const-string/jumbo v4, "secret"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 159
    .local v54, "secret":Ljava/lang/String;
    const-string/jumbo v4, "air_dl"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 160
    .local v17, "deepLinkUri":Ljava/lang/String;
    const/16 v19, 0x0

    .line 161
    .local v19, "dispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    if-eqz v17, :cond_dc

    .line 162
    invoke-static/range {v17 .. v17}, Lcom/airbnb/android/utils/DeepLinkDispatch;->newInstance(Ljava/lang/String;)Lcom/airbnb/android/utils/DeepLinkDispatch;

    move-result-object v19

    .line 165
    :cond_dc
    const/16 v36, 0x0

    .line 167
    .local v36, "longID":Ljava/lang/Long;
    :try_start_de
    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_354

    move-result-object v36

    .line 174
    :goto_e2
    if-eqz v19, :cond_359

    const-string/jumbo v4, "reservation/arrival_assistant"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/airbnb/android/utils/DeepLinkDispatch;->isPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_359

    .line 175
    const-string/jumbo v4, "air_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    .line 181
    :cond_f8
    :goto_f8
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v29, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->intentForClearTop(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    const/16 v34, 0x0

    .line 184
    .local v34, "launch":Landroid/content/Intent;
    const/16 v38, 0x0

    .line 185
    .local v38, "messageIntent":Landroid/content/Intent;
    const/4 v10, 0x0

    .line 186
    .local v10, "acceptIntent":Landroid/content/Intent;
    const/16 v32, 0x0

    .line 189
    .local v32, "itineraryIntent":Landroid/content/Intent;
    invoke-static/range {v59 .. v59}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->findType(Ljava/lang/String;)Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    move-result-object v47

    .line 192
    .local v47, "pushType":Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;
    const-string/jumbo v4, "push_notification"

    const/4 v5, 0x1

    new-instance v6, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v6}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v7, "push_type"

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    const-string/jumbo v7, "status"

    const-string/jumbo v8, "push_received"

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 194
    sget-object v4, Lcom/airbnb/android/services/GCMIntentService$2;->$SwitchMap$com$airbnb$android$services$GCMIntentService$GCMMessageType:[I

    invoke-virtual/range {v47 .. v47}, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_60e

    .line 313
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->intentForClearTop(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v34

    .line 317
    :cond_141
    :goto_141
    if-eqz v34, :cond_176

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/services/GCMIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/services/GCMIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 321
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 323
    :cond_16f
    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_176
    if-nez v30, :cond_5eb

    .line 329
    const/4 v4, 0x0

    const/high16 v5, 0x20000000

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v57

    .line 330
    .local v57, "test":Landroid/app/PendingIntent;
    if-eqz v57, :cond_19b

    .line 331
    const-string/jumbo v4, "push_notification"

    const/4 v5, 0x1

    new-instance v6, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v6}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v7, "status"

    const-string/jumbo v8, "push_overridden"

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 334
    :cond_19b
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v46

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/services/GCMIntentService;->setIntentParams(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "prefs_enable_sounds"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 340
    .local v21, "enableSounds":Z
    if-eqz v21, :cond_5e3

    const/4 v4, 0x3

    :goto_1bd
    or-int/lit8 v41, v4, 0x4

    .line 342
    .local v41, "notificationAlerts":I
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f0200f5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v14

    .line 350
    .local v14, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    move-object/from16 v0, v58

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 352
    new-instance v13, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v13}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 353
    .local v13, "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    move-object/from16 v0, v58

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 354
    invoke-virtual {v13, v15}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 356
    if-eqz v38, :cond_23e

    .line 357
    const v4, 0x7f0e0627

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/airbnb/android/services/GCMIntentService;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 359
    .local v49, "replyLabel":Ljava/lang/String;
    new-instance v4, Landroid/support/v4/app/RemoteInput$Builder;

    const-string/jumbo v5, "extra_voice_reply"

    invoke-direct {v4, v5}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v48

    .line 363
    .local v48, "remoteInput":Landroid/support/v4/app/RemoteInput;
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v46

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/services/GCMIntentService;->setIntentParams(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2, v4}, Lcom/airbnb/android/services/GCMIntentService;->createPendingIntent(Ljava/util/List;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v39

    .line 367
    .local v39, "messagePendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v5, 0x7f02014a

    move-object/from16 v0, v49

    move-object/from16 v1, v39

    invoke-direct {v4, v5, v0, v1}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    move-object/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v12

    .line 370
    .local v12, "action":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {v14, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 373
    .end local v12    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v39    # "messagePendingIntent":Landroid/app/PendingIntent;
    .end local v48    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .end local v49    # "replyLabel":Ljava/lang/String;
    :cond_23e
    if-eqz v10, :cond_26d

    .line 374
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v54

    invoke-direct {v0, v10, v1, v2, v4}, Lcom/airbnb/android/services/GCMIntentService;->setIntentParams(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10, v4}, Lcom/airbnb/android/services/GCMIntentService;->createPendingIntent(Ljava/util/List;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 376
    .local v11, "acceptPendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f020174

    if-eqz v51, :cond_5e6

    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    move-object/from16 v0, v51

    if-ne v0, v4, :cond_5e6

    const v4, 0x7f0e069d

    :goto_264
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/airbnb/android/services/GCMIntentService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v5, v4, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 380
    .end local v11    # "acceptPendingIntent":Landroid/app/PendingIntent;
    :cond_26d
    if-eqz v32, :cond_29a

    .line 381
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v46

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/services/GCMIntentService;->setIntentParams(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2, v4}, Lcom/airbnb/android/services/GCMIntentService;->createPendingIntent(Ljava/util/List;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v33

    .line 384
    .local v33, "itineraryPendingIntent":Landroid/app/PendingIntent;
    const v4, 0x7f020160

    const v5, 0x7f0e0803

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/airbnb/android/services/GCMIntentService;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v14, v4, v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 388
    .end local v33    # "itineraryPendingIntent":Landroid/app/PendingIntent;
    :cond_29a
    const/16 v42, 0x0

    .line 390
    .local v42, "photo":Landroid/graphics/Bitmap;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2ae

    .line 391
    sget-object v4, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/android/volley/toolbox/ImageLoader;->getImageBlocking(Ljava/lang/String;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v42

    .line 394
    :cond_2ae
    if-eqz v42, :cond_2dc

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/services/GCMIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v25, v0

    .line 396
    .local v25, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/services/GCMIntentService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v61, v0

    .line 397
    .local v61, "width":I
    const/4 v4, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v61

    move/from16 v2, v25

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v53

    .line 398
    .local v53, "scaled":Landroid/graphics/Bitmap;
    move-object/from16 v0, v53

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 401
    .end local v25    # "height":I
    .end local v53    # "scaled":Landroid/graphics/Bitmap;
    .end local v61    # "width":I
    :cond_2dc
    move-object/from16 v56, v13

    .line 403
    .local v56, "style":Landroid/support/v4/app/NotificationCompat$Style;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2, v4}, Lcom/airbnb/android/services/GCMIntentService;->createPendingIntent(Ljava/util/List;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v52

    .line 405
    .local v52, "resultPendingIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, v52

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 406
    move-object/from16 v0, v56

    invoke-virtual {v14, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 408
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/services/NotificationDeleteIntentService;->intentForNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 409
    .local v18, "dismissIntent":Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v4, v1, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 411
    invoke-virtual {v14}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v40

    .line 413
    .local v40, "notification":Landroid/app/Notification;
    const-string/jumbo v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/airbnb/android/services/GCMIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/app/NotificationManager;

    .line 414
    .local v37, "mNotificationManager":Landroid/app/NotificationManager;
    sget v4, Lcom/airbnb/android/services/GCMIntentService;->NOTIFICATION_ID:I

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 416
    const-string/jumbo v4, "push_notification"

    const/4 v5, 0x1

    new-instance v6, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v6}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v7, "push_type"

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    const-string/jumbo v7, "status"

    const-string/jumbo v8, "push_displayed"

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 421
    .end local v13    # "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .end local v14    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v18    # "dismissIntent":Landroid/content/Intent;
    .end local v21    # "enableSounds":Z
    .end local v37    # "mNotificationManager":Landroid/app/NotificationManager;
    .end local v40    # "notification":Landroid/app/Notification;
    .end local v41    # "notificationAlerts":I
    .end local v42    # "photo":Landroid/graphics/Bitmap;
    .end local v52    # "resultPendingIntent":Landroid/app/PendingIntent;
    .end local v56    # "style":Landroid/support/v4/app/NotificationCompat$Style;
    .end local v57    # "test":Landroid/app/PendingIntent;
    :goto_343
    invoke-virtual/range {v60 .. v60}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 422
    invoke-virtual/range {v60 .. v60}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_1f

    .line 143
    .end local v10    # "acceptIntent":Landroid/content/Intent;
    .end local v17    # "deepLinkUri":Ljava/lang/String;
    .end local v19    # "dispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    .end local v26    # "id":Ljava/lang/String;
    .end local v29    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v30    # "isHiddenNotification":Z
    .end local v31    # "isHost":Z
    .end local v32    # "itineraryIntent":Landroid/content/Intent;
    .end local v34    # "launch":Landroid/content/Intent;
    .end local v36    # "longID":Ljava/lang/Long;
    .end local v38    # "messageIntent":Landroid/content/Intent;
    .end local v43    # "photoUrl":Ljava/lang/String;
    .end local v46    # "pushNotificationId":Ljava/lang/String;
    .end local v47    # "pushType":Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;
    .end local v51    # "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    .end local v54    # "secret":Ljava/lang/String;
    .end local v55    # "status":Ljava/lang/String;
    .end local v59    # "type":Ljava/lang/String;
    .restart local v35    # "legacyMessage":Ljava/lang/String;
    :cond_34e
    invoke-static/range {v35 .. v35}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    goto/16 :goto_73

    .line 168
    .end local v35    # "legacyMessage":Ljava/lang/String;
    .restart local v17    # "deepLinkUri":Ljava/lang/String;
    .restart local v19    # "dispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    .restart local v26    # "id":Ljava/lang/String;
    .restart local v30    # "isHiddenNotification":Z
    .restart local v31    # "isHost":Z
    .restart local v36    # "longID":Ljava/lang/Long;
    .restart local v43    # "photoUrl":Ljava/lang/String;
    .restart local v46    # "pushNotificationId":Ljava/lang/String;
    .restart local v51    # "reservationStatus":Lcom/airbnb/android/models/ReservationStatus;
    .restart local v54    # "secret":Ljava/lang/String;
    .restart local v55    # "status":Ljava/lang/String;
    .restart local v59    # "type":Ljava/lang/String;
    :catch_354
    move-exception v20

    .line 169
    .local v20, "e":Ljava/lang/Exception;
    const/16 v59, 0x0

    goto/16 :goto_e2

    .line 176
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_359
    if-eqz v19, :cond_f8

    const-string/jumbo v4, "trips/companion"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/airbnb/android/utils/DeepLinkDispatch;->isPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f8

    .line 178
    const-string/jumbo v4, "air_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    goto/16 :goto_f8

    .line 196
    .restart local v10    # "acceptIntent":Landroid/content/Intent;
    .restart local v29    # "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v32    # "itineraryIntent":Landroid/content/Intent;
    .restart local v34    # "launch":Landroid/content/Intent;
    .restart local v38    # "messageIntent":Landroid/content/Intent;
    .restart local v47    # "pushType":Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;
    :pswitch_371
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v6, "push_notification"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/airbnb/android/activities/ROActivity;->intentForThreadId(Landroid/content/Context;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v34

    .line 197
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/airbnb/android/requests/ReservationObjectRequest;->forThreadId(JZLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/requests/ReservationObjectRequest;->execute()V

    .line 198
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string/jumbo v7, "push_notification_action_message"

    const/4 v8, 0x0

    sget-object v9, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Message:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/airbnb/android/activities/ROActivity;->intentForThreadId(Landroid/content/Context;JLjava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v38

    .line 199
    if-eqz v31, :cond_3dd

    if-eqz v51, :cond_3dd

    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Inquiry:Lcom/airbnb/android/models/ReservationStatus;

    move-object/from16 v0, v51

    if-eq v0, v4, :cond_3ac

    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Pending:Lcom/airbnb/android/models/ReservationStatus;

    move-object/from16 v0, v51

    if-ne v0, v4, :cond_3dd

    .line 200
    :cond_3ac
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string/jumbo v7, "push_notification_action_accept"

    const/4 v8, 0x0

    sget-object v9, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Respond:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/airbnb/android/activities/ROActivity;->intentForThreadId(Landroid/content/Context;JLjava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v10

    .line 204
    :cond_3bc
    :goto_3bc
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 205
    .local v22, "finalLongId":J
    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    .line 206
    .local v24, "finalMessage":Ljava/lang/String;
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/airbnb/android/services/GCMIntentService$1;

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-object/from16 v3, v24

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/airbnb/android/services/GCMIntentService$1;-><init>(Lcom/airbnb/android/services/GCMIntentService;JLjava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_141

    .line 201
    .end local v22    # "finalLongId":J
    .end local v24    # "finalMessage":Ljava/lang/String;
    :cond_3dd
    if-nez v31, :cond_3bc

    if-eqz v51, :cond_3bc

    sget-object v4, Lcom/airbnb/android/models/ReservationStatus;->Accepted:Lcom/airbnb/android/models/ReservationStatus;

    move-object/from16 v0, v51

    if-ne v0, v4, :cond_3bc

    .line 202
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string/jumbo v7, "push_notification_action_itinerary"

    const/4 v8, 0x0

    sget-object v9, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Itinerary:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v9}, Lcom/airbnb/android/activities/ROActivity;->intentForThreadId(Landroid/content/Context;JLjava/lang/String;ZLcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v32

    goto :goto_3bc

    .line 221
    :pswitch_3f8
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v6, "push_notification"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/airbnb/android/activities/ROActivity;->intentForReservationId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v34

    .line 222
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/airbnb/android/requests/ReservationObjectRequest;->forReservationId(JZLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/requests/ReservationObjectRequest;->execute()V

    .line 224
    sget-object v4, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationHostRequest:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    move-object/from16 v0, v47

    if-ne v0, v4, :cond_429

    if-eqz v31, :cond_429

    .line 225
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v6, "push_notification_action_accept"

    sget-object v7, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Respond:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/airbnb/android/activities/ROActivity;->intentForReservationId(Landroid/content/Context;JLjava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v10

    .line 228
    :cond_429
    sget-object v4, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->ReservationGuestAccepted:Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;

    move-object/from16 v0, v47

    if-ne v0, v4, :cond_141

    if-nez v31, :cond_141

    .line 229
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v6, "push_notification_action_itinerary"

    sget-object v7, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Itinerary:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/airbnb/android/activities/ROActivity;->intentForReservationId(Landroid/content/Context;JLjava/lang/String;Lcom/airbnb/android/activities/ROActivity$LaunchState;)Landroid/content/Intent;

    move-result-object v32

    goto/16 :goto_141

    .line 233
    :pswitch_442
    sget-object v4, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->PUSH_NOTIFICATION:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 234
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/android/models/groups/GroupsUri;->newMeetupDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v34

    .line 235
    goto/16 :goto_141

    .line 237
    :pswitch_457
    sget-object v4, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->PUSH_NOTIFICATION:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 238
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/android/models/groups/GroupsUri;->newContentDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v34

    .line 239
    goto/16 :goto_141

    .line 241
    :pswitch_46c
    sget-object v4, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->PUSH_NOTIFICATION:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 242
    const-string/jumbo v4, "air_did"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 243
    .local v16, "contentId":Ljava/lang/String;
    const/16 v27, 0x0

    .line 245
    .local v27, "intContentId":Ljava/lang/Integer;
    :try_start_47c
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    .line 246
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/android/models/groups/GroupsUri;->newContentDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/models/groups/GroupsUri;->addScrollToComment(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;
    :try_end_495
    .catch Ljava/lang/Exception; {:try_start_47c .. :try_end_495} :catch_498

    move-result-object v34

    goto/16 :goto_141

    .line 247
    :catch_498
    move-exception v20

    .line 248
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v34

    .line 250
    goto/16 :goto_141

    .line 252
    .end local v16    # "contentId":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v27    # "intContentId":Ljava/lang/Integer;
    :pswitch_4a5
    sget-object v4, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->PUSH_NOTIFICATION:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 253
    const-string/jumbo v4, "air_did"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 254
    .restart local v16    # "contentId":Ljava/lang/String;
    const/16 v27, 0x0

    .line 256
    .restart local v27    # "intContentId":Ljava/lang/Integer;
    :try_start_4b5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    .line 257
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/android/models/groups/GroupsUri;->newMeetupDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/models/groups/GroupsUri;->addScrollToComment(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;
    :try_end_4ce
    .catch Ljava/lang/Exception; {:try_start_4b5 .. :try_end_4ce} :catch_4d1

    move-result-object v34

    goto/16 :goto_141

    .line 258
    :catch_4d1
    move-exception v20

    .line 259
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v34

    .line 261
    goto/16 :goto_141

    .line 263
    .end local v16    # "contentId":Ljava/lang/String;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v27    # "intContentId":Ljava/lang/Integer;
    :pswitch_4de
    sget-object v4, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->PUSH_NOTIFICATION:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 264
    const-string/jumbo v4, "post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 265
    .local v45, "postId":Ljava/lang/String;
    const/16 v28, 0x0

    .line 267
    .local v28, "intPostId":Ljava/lang/Integer;
    :try_start_4ee
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    .line 268
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/android/models/groups/GroupsUri;->newContentCommentDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/models/groups/GroupsUri;->addScrollToReply(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;
    :try_end_507
    .catch Ljava/lang/Exception; {:try_start_4ee .. :try_end_507} :catch_50a

    move-result-object v34

    goto/16 :goto_141

    .line 269
    :catch_50a
    move-exception v20

    .line 270
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v34

    .line 272
    goto/16 :goto_141

    .line 274
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v28    # "intPostId":Ljava/lang/Integer;
    .end local v45    # "postId":Ljava/lang/String;
    :pswitch_517
    sget-object v4, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->PUSH_NOTIFICATION:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 275
    const-string/jumbo v4, "post_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 276
    .restart local v45    # "postId":Ljava/lang/String;
    const/16 v28, 0x0

    .line 278
    .restart local v28    # "intPostId":Ljava/lang/Integer;
    :try_start_527
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    .line 279
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/airbnb/android/models/groups/GroupsUri;->newMeetupCommentDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/models/groups/GroupsUri;->addScrollToReply(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;
    :try_end_540
    .catch Ljava/lang/Exception; {:try_start_527 .. :try_end_540} :catch_543

    move-result-object v34

    goto/16 :goto_141

    .line 280
    :catch_543
    move-exception v20

    .line 281
    .restart local v20    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v34

    .line 283
    goto/16 :goto_141

    .line 285
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v28    # "intPostId":Ljava/lang/Integer;
    .end local v45    # "postId":Ljava/lang/String;
    :pswitch_550
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    .line 286
    .local v50, "reservationId":Ljava/lang/Long;
    if-eqz v19, :cond_565

    .line 287
    const-string/jumbo v4, "id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/airbnb/android/utils/DeepLinkDispatch;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v50

    .line 289
    :cond_565
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/airbnb/android/activities/TripChargesActivity;->intentForReservationId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v34

    .line 290
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v6, "trip_charges"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/airbnb/android/activities/ROActivity;->intentForReservationId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_141

    .line 295
    .end local v50    # "reservationId":Ljava/lang/Long;
    :pswitch_583
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    .line 296
    .restart local v50    # "reservationId":Ljava/lang/Long;
    if-eqz v19, :cond_598

    .line 297
    const-string/jumbo v4, "id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/airbnb/android/utils/DeepLinkDispatch;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v50

    .line 299
    :cond_598
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/airbnb/android/activities/ArrivalTrackerActivity;->intentForReservationId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v34

    .line 300
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v6, "arrival_assistant"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/airbnb/android/activities/ROActivity;->intentForReservationId(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_141

    .line 303
    .end local v50    # "reservationId":Ljava/lang/Long;
    :pswitch_5b6
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    .line 304
    .restart local v50    # "reservationId":Ljava/lang/Long;
    if-eqz v19, :cond_5cb

    .line 305
    const-string/jumbo v4, "reservation_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/airbnb/android/utils/DeepLinkDispatch;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v50

    .line 307
    :cond_5cb
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/airbnb/android/activities/LocalCompanionActivity;->intentForReservationId(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v34

    .line 308
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 309
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->intentForCompanion(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_141

    .line 340
    .end local v50    # "reservationId":Ljava/lang/Long;
    .restart local v21    # "enableSounds":Z
    .restart local v57    # "test":Landroid/app/PendingIntent;
    :cond_5e3
    const/4 v4, 0x0

    goto/16 :goto_1bd

    .line 376
    .restart local v11    # "acceptPendingIntent":Landroid/app/PendingIntent;
    .restart local v13    # "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .restart local v14    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .restart local v41    # "notificationAlerts":I
    :cond_5e6
    const v4, 0x7f0e002f

    goto/16 :goto_264

    .line 418
    .end local v11    # "acceptPendingIntent":Landroid/app/PendingIntent;
    .end local v13    # "bigText":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    .end local v14    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v21    # "enableSounds":Z
    .end local v41    # "notificationAlerts":I
    .end local v57    # "test":Landroid/app/PendingIntent;
    :cond_5eb
    const-string/jumbo v4, "push_notification"

    const/4 v5, 0x1

    new-instance v6, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v6}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v7, "push_type"

    move-object/from16 v0, v47

    iget-object v8, v0, Lcom/airbnb/android/services/GCMIntentService$GCMMessageType;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    const-string/jumbo v7, "status"

    const-string/jumbo v8, "push_hidden"

    invoke-virtual {v6, v7, v8}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    goto/16 :goto_343

    .line 194
    :pswitch_data_60e
    .packed-switch 0x1
        :pswitch_371
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_3f8
        :pswitch_442
        :pswitch_457
        :pswitch_46c
        :pswitch_4a5
        :pswitch_4de
        :pswitch_517
        :pswitch_550
        :pswitch_583
        :pswitch_583
        :pswitch_583
        :pswitch_5b6
    .end packed-switch
.end method
