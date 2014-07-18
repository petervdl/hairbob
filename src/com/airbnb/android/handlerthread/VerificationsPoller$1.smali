.class Lcom/airbnb/android/handlerthread/VerificationsPoller$1;
.super Landroid/os/Handler;
.source "VerificationsPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/handlerthread/VerificationsPoller;->onLooperPrepared()V
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
    .line 39
    iput-object p1, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$1;->this$0:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/airbnb/android/handlerthread/VerificationsPoller$1;->this$0:Lcom/airbnb/android/handlerthread/VerificationsPoller;

    # invokes: Lcom/airbnb/android/handlerthread/VerificationsPoller;->handleRequest()V
    invoke-static {v0}, Lcom/airbnb/android/handlerthread/VerificationsPoller;->access$000(Lcom/airbnb/android/handlerthread/VerificationsPoller;)V

    .line 43
    return-void
.end method
