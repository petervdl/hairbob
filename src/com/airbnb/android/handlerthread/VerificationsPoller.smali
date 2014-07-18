.class public Lcom/airbnb/android/handlerthread/VerificationsPoller;
.super Landroid/os/HandlerThread;
.source "VerificationsPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VerificationsPoller"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mListener:Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;

.field mResponseHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "responseHandler"    # Landroid/os/Handler;

    .prologue
    .line 32
    const-string/jumbo v0, "VerificationsPoller"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mResponseHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/handlerthread/VerificationsPoller;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/handlerthread/VerificationsPoller;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->handleRequest()V

    return-void
.end method

.method private handleRequest()V
    .registers 4

    .prologue
    .line 62
    new-instance v0, Lcom/airbnb/android/requests/VerificationsRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/airbnb/android/handlerthread/VerificationsPoller$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/handlerthread/VerificationsPoller$3;-><init>(Lcom/airbnb/android/handlerthread/VerificationsPoller;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/VerificationsRequest;-><init>(Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    .line 83
    .local v0, "request":Lcom/airbnb/android/requests/VerificationsRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/VerificationsRequest;->execute()V

    .line 84
    return-void
.end method


# virtual methods
.method public checkExistingVerifications(Z)V
    .registers 6
    .param p1, "delayed"    # Z

    .prologue
    .line 49
    if-eqz p1, :cond_f

    .line 50
    iget-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/airbnb/android/handlerthread/VerificationsPoller$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/handlerthread/VerificationsPoller$2;-><init>(Lcom/airbnb/android/handlerthread/VerificationsPoller;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    :goto_e
    return-void

    .line 57
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_e
.end method

.method protected onLooperPrepared()V
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/airbnb/android/handlerthread/VerificationsPoller$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/handlerthread/VerificationsPoller$1;-><init>(Lcom/airbnb/android/handlerthread/VerificationsPoller;)V

    iput-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mHandler:Landroid/os/Handler;

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->checkExistingVerifications(Z)V

    .line 46
    return-void
.end method

.method public quit()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 90
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mListener:Lcom/airbnb/android/handlerthread/VerificationsPoller$VerificationsListener;

    .line 29
    return-void
.end method
