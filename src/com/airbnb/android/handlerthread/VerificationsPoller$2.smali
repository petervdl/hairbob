.class Lcom/airbnb/android/handlerthread/VerificationsPoller$2;
.super Ljava/lang/Object;
.source "VerificationsPoller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/handlerthread/VerificationsPoller;->checkExistingVerifications(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/handlerthread/VerificationsPoller;


# direct methods
.method constructor <init>(Lcom/airbnb/android/handlerthread/VerificationsPoller;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$2;->this$0:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$2;->this$0:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    iget-object v0, v0, Lcom/airbnb/android/handlerthread/VerificationsPoller;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 54
    return-void
.end method
