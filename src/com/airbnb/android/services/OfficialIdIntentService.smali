.class public Lcom/airbnb/android/services/OfficialIdIntentService;
.super Landroid/app/IntentService;
.source "OfficialIdIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/services/OfficialIdIntentService$State;
    }
.end annotation


# static fields
.field private static final CHECK_SERVER_STATUS_INTERVAL:I = 0x2710

.field private static final KEY_SCAN_REFERENCE_ID:Ljava/lang/String; = "scan_reference_id"

.field private static final MAX_SERVER_RETRIES:I = 0x19

.field private static final TAG:Ljava/lang/String;

.field private static final WAKE_LOCK_TIMEOUT_MILLIS:J = 0x493e0L


# instance fields
.field private mAttemptsRemaining:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mScanReferenceId:Ljava/lang/String;

.field private mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-class v0, Lcom/airbnb/android/services/OfficialIdIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/services/OfficialIdIntentService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/airbnb/android/services/OfficialIdIntentService;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mLock:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/services/OfficialIdIntentService;)Lcom/airbnb/android/services/OfficialIdIntentService$State;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/OfficialIdIntentService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/services/OfficialIdIntentService;Lcom/airbnb/android/services/OfficialIdIntentService$State;)Lcom/airbnb/android/services/OfficialIdIntentService$State;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/OfficialIdIntentService;
    .param p1, "x1"    # Lcom/airbnb/android/services/OfficialIdIntentService$State;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/services/OfficialIdIntentService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/OfficialIdIntentService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/services/OfficialIdIntentService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/OfficialIdIntentService;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private executeOfficialIDRequest()V
    .registers 4

    .prologue
    .line 115
    new-instance v0, Lcom/airbnb/android/requests/OfficialIdStatusRequest;

    iget-object v1, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mScanReferenceId:Ljava/lang/String;

    new-instance v2, Lcom/airbnb/android/services/OfficialIdIntentService$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/services/OfficialIdIntentService$3;-><init>(Lcom/airbnb/android/services/OfficialIdIntentService;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/OfficialIdStatusRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 166
    .local v0, "statusRequest":Lcom/airbnb/android/requests/OfficialIdStatusRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/OfficialIdStatusRequest;->execute()V

    .line 167
    return-void
.end method

.method public static intentForOfficialId(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scanReferenceId"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/airbnb/android/services/OfficialIdIntentService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "scan_reference_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    return-object v1
.end method


# virtual methods
.method public onDestroy()V
    .registers 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    sget-object v1, Lcom/airbnb/android/services/OfficialIdIntentService$State;->RUNNING:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    if-ne v0, v1, :cond_13

    .line 104
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/services/OfficialIdIntentService$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/services/OfficialIdIntentService$2;-><init>(Lcom/airbnb/android/services/OfficialIdIntentService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 112
    :cond_13
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "Wakelock"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mHandler:Landroid/os/Handler;

    .line 61
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/airbnb/android/services/OfficialIdIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 62
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, Lcom/airbnb/android/services/OfficialIdIntentService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 64
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/32 v2, 0x493e0

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 66
    const-string/jumbo v2, "scan_reference_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mScanReferenceId:Ljava/lang/String;

    .line 67
    const/16 v2, 0x19

    iput v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mAttemptsRemaining:I

    .line 69
    sget-object v2, Lcom/airbnb/android/services/OfficialIdIntentService$State;->RUNNING:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    iput-object v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    .line 71
    :goto_32
    iget-object v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    sget-object v3, Lcom/airbnb/android/services/OfficialIdIntentService$State;->RUNNING:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    if-ne v2, v3, :cond_58

    iget v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mAttemptsRemaining:I

    if-ltz v2, :cond_58

    .line 72
    iget-object v3, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 73
    :try_start_3f
    iget v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mAttemptsRemaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mAttemptsRemaining:I

    .line 74
    iget v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mAttemptsRemaining:I

    if-gez v2, :cond_62

    .line 75
    sget-object v2, Lcom/airbnb/android/services/OfficialIdIntentService$State;->ERROR:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    iput-object v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    .line 76
    iget-object v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/airbnb/android/services/OfficialIdIntentService$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/services/OfficialIdIntentService$1;-><init>(Lcom/airbnb/android/services/OfficialIdIntentService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_3f .. :try_end_58} :catchall_6c

    .line 94
    :cond_58
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 95
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 97
    :cond_61
    return-void

    .line 85
    :cond_62
    :try_start_62
    invoke-direct {p0}, Lcom/airbnb/android/services/OfficialIdIntentService;->executeOfficialIDRequest()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6c

    .line 88
    :try_start_65
    iget-object v2, p0, Lcom/airbnb/android/services/OfficialIdIntentService;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_6a
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_6a} :catch_6f
    .catchall {:try_start_65 .. :try_end_6a} :catchall_6c

    .line 91
    :goto_6a
    :try_start_6a
    monitor-exit v3

    goto :goto_32

    :catchall_6c
    move-exception v2

    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6c

    throw v2

    .line 89
    :catch_6f
    move-exception v2

    goto :goto_6a
.end method
