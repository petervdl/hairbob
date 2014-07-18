.class public Lcom/newrelic/agent/android/logging/AndroidAgentLog;
.super Ljava/lang/Object;
.source "AndroidAgentLog.java"

# interfaces
.implements Lcom/newrelic/agent/android/logging/AgentLog;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.newrelic.agent.android"


# instance fields
.field private level:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x3

    iput v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 12
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_b

    .line 13
    const-string/jumbo v0, "com.newrelic.agent.android"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_b
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 32
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    .line 33
    const-string/jumbo v0, "com.newrelic.agent.android"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_b
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_b

    .line 38
    const-string/jumbo v0, "com.newrelic.agent.android"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    :cond_b
    return-void
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 22
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    .line 23
    const-string/jumbo v0, "com.newrelic.agent.android"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :cond_b
    return-void
.end method

.method public setLevel(I)V
    .registers 4
    .param p1, "level"    # I

    .prologue
    .line 46
    const/4 v0, 0x5

    if-gt p1, v0, :cond_9

    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    .line 47
    iput p1, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    .line 51
    return-void

    .line 49
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Log level is not between ERROR and DEBUG"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    .line 18
    const-string/jumbo v0, "com.newrelic.agent.android"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_b
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    iget v0, p0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;->level:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_b

    .line 28
    const-string/jumbo v0, "com.newrelic.agent.android"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_b
    return-void
.end method
