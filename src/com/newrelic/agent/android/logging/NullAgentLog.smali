.class public Lcom/newrelic/agent/android/logging/NullAgentLog;
.super Ljava/lang/Object;
.source "NullAgentLog.java"

# interfaces
.implements Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 6
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 22
    return-void
.end method

.method public getLevel()I
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x5

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 10
    return-void
.end method

.method public setLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 35
    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 14
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 26
    return-void
.end method
