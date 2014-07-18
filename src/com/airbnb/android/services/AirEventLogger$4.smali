.class Lcom/airbnb/android/services/AirEventLogger$4;
.super Ljava/util/TimerTask;
.source "AirEventLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/AirEventLogger;->initializeTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/AirEventLogger;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/AirEventLogger;)V
    .registers 2

    .prologue
    .line 424
    iput-object p1, p0, Lcom/airbnb/android/services/AirEventLogger$4;->this$0:Lcom/airbnb/android/services/AirEventLogger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 428
    # getter for: Lcom/airbnb/android/services/AirEventLogger;->mRequestJsons:Ljava/util/concurrent/ArrayBlockingQueue;
    invoke-static {}, Lcom/airbnb/android/services/AirEventLogger;->access$100()Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 429
    iget-object v0, p0, Lcom/airbnb/android/services/AirEventLogger$4;->this$0:Lcom/airbnb/android/services/AirEventLogger;

    invoke-virtual {v0}, Lcom/airbnb/android/services/AirEventLogger;->flushRequestsAndUpload()V

    .line 440
    :goto_10
    return-void

    .line 434
    :cond_11
    # getter for: Lcom/airbnb/android/services/AirEventLogger;->mTimer:Ljava/util/Timer;
    invoke-static {}, Lcom/airbnb/android/services/AirEventLogger;->access$200()Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 435
    # getter for: Lcom/airbnb/android/services/AirEventLogger;->mTimerTask:Ljava/util/TimerTask;
    invoke-static {}, Lcom/airbnb/android/services/AirEventLogger;->access$300()Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 437
    # setter for: Lcom/airbnb/android/services/AirEventLogger;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->access$202(Ljava/util/Timer;)Ljava/util/Timer;

    .line 438
    # setter for: Lcom/airbnb/android/services/AirEventLogger;->mTimerTask:Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->access$302(Ljava/util/TimerTask;)Ljava/util/TimerTask;

    goto :goto_10
.end method
