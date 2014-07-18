.class Lcom/airbnb/android/services/OfficialIdIntentService$3$3;
.super Ljava/lang/Object;
.source "OfficialIdIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/OfficialIdIntentService$3;->onErrorResponse(Lcom/android/volley/VolleyError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/services/OfficialIdIntentService$3;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/OfficialIdIntentService$3;)V
    .registers 2

    .prologue
    .line 155
    iput-object p1, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3$3;->this$1:Lcom/airbnb/android/services/OfficialIdIntentService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3$3;->this$1:Lcom/airbnb/android/services/OfficialIdIntentService$3;

    iget-object v0, v0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$100(Lcom/airbnb/android/services/OfficialIdIntentService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 159
    :try_start_9
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3$3;->this$1:Lcom/airbnb/android/services/OfficialIdIntentService$3;

    iget-object v0, v0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$100(Lcom/airbnb/android/services/OfficialIdIntentService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_16

    throw v0
.end method
