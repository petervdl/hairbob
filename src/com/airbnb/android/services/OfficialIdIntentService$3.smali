.class Lcom/airbnb/android/services/OfficialIdIntentService$3;
.super Ljava/lang/Object;
.source "OfficialIdIntentService.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/services/OfficialIdIntentService;->executeOfficialIDRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/OfficialIdStatusRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/services/OfficialIdIntentService;


# direct methods
.method constructor <init>(Lcom/airbnb/android/services/OfficialIdIntentService;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$200(Lcom/airbnb/android/services/OfficialIdIntentService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/services/OfficialIdIntentService$3$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/services/OfficialIdIntentService$3$3;-><init>(Lcom/airbnb/android/services/OfficialIdIntentService$3;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/OfficialIdStatusRequest;)V
    .registers 6
    .param p1, "response"    # Lcom/airbnb/android/requests/OfficialIdStatusRequest;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$000(Lcom/airbnb/android/services/OfficialIdIntentService;)Lcom/airbnb/android/services/OfficialIdIntentService$State;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/services/OfficialIdIntentService$State;->RUNNING:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    if-ne v0, v1, :cond_27

    .line 120
    const-string/jumbo v0, "OK"

    iget-object v1, p1, Lcom/airbnb/android/requests/OfficialIdStatusRequest;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 121
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/OfficialIDStatusEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/OfficialIDStatusEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    sget-object v1, Lcom/airbnb/android/services/OfficialIdIntentService$State;->SUCCESS:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    # setter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;
    invoke-static {v0, v1}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$002(Lcom/airbnb/android/services/OfficialIdIntentService;Lcom/airbnb/android/services/OfficialIdIntentService$State;)Lcom/airbnb/android/services/OfficialIdIntentService$State;

    .line 138
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$000(Lcom/airbnb/android/services/OfficialIdIntentService;)Lcom/airbnb/android/services/OfficialIdIntentService$State;

    move-result-object v0

    sget-object v1, Lcom/airbnb/android/services/OfficialIdIntentService$State;->RUNNING:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    if-eq v0, v1, :cond_50

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$200(Lcom/airbnb/android/services/OfficialIdIntentService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/services/OfficialIdIntentService$3$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/services/OfficialIdIntentService$3$2;-><init>(Lcom/airbnb/android/services/OfficialIdIntentService$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$100(Lcom/airbnb/android/services/OfficialIdIntentService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 147
    :try_start_46
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$100(Lcom/airbnb/android/services/OfficialIdIntentService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 148
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_75

    .line 150
    :cond_50
    :goto_50
    return-void

    .line 123
    :cond_51
    const-string/jumbo v0, "ERROR"

    iget-object v1, p1, Lcom/airbnb/android/requests/OfficialIdStatusRequest;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 124
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    sget-object v1, Lcom/airbnb/android/services/OfficialIdIntentService$State;->ERROR:Lcom/airbnb/android/services/OfficialIdIntentService$State;

    # setter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mState:Lcom/airbnb/android/services/OfficialIdIntentService$State;
    invoke-static {v0, v1}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$002(Lcom/airbnb/android/services/OfficialIdIntentService;Lcom/airbnb/android/services/OfficialIdIntentService$State;)Lcom/airbnb/android/services/OfficialIdIntentService$State;

    goto :goto_27

    .line 126
    :cond_64
    iget-object v0, p0, Lcom/airbnb/android/services/OfficialIdIntentService$3;->this$0:Lcom/airbnb/android/services/OfficialIdIntentService;

    # getter for: Lcom/airbnb/android/services/OfficialIdIntentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/airbnb/android/services/OfficialIdIntentService;->access$200(Lcom/airbnb/android/services/OfficialIdIntentService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/services/OfficialIdIntentService$3$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/services/OfficialIdIntentService$3$1;-><init>(Lcom/airbnb/android/services/OfficialIdIntentService$3;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_50

    .line 148
    :catchall_75
    move-exception v0

    :try_start_76
    monitor-exit v1
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 115
    check-cast p1, Lcom/airbnb/android/requests/OfficialIdStatusRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/services/OfficialIdIntentService$3;->onResponse(Lcom/airbnb/android/requests/OfficialIdStatusRequest;)V

    return-void
.end method
