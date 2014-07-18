.class final Lcom/newrelic/agent/android/TaskQueue$1;
.super Ljava/lang/Object;
.source "TaskQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/TaskQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 32
    # invokes: Lcom/newrelic/agent/android/TaskQueue;->dequeue()V
    invoke-static {}, Lcom/newrelic/agent/android/TaskQueue;->access$000()V

    .line 33
    return-void
.end method
