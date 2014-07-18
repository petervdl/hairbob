.class public Lcom/newrelic/agent/android/logging/AgentLogManager;
.super Ljava/lang/Object;
.source "AgentLogManager.java"


# static fields
.field private static instance:Lcom/newrelic/agent/android/logging/DefaultAgentLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4
    new-instance v0, Lcom/newrelic/agent/android/logging/DefaultAgentLog;

    invoke-direct {v0}, Lcom/newrelic/agent/android/logging/DefaultAgentLog;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/logging/AgentLogManager;->instance:Lcom/newrelic/agent/android/logging/DefaultAgentLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/newrelic/agent/android/logging/AgentLogManager;->instance:Lcom/newrelic/agent/android/logging/DefaultAgentLog;

    return-object v0
.end method

.method public static setAgentLog(Lcom/newrelic/agent/android/logging/AgentLog;)V
    .registers 2
    .param p0, "instance"    # Lcom/newrelic/agent/android/logging/AgentLog;

    .prologue
    .line 11
    sget-object v0, Lcom/newrelic/agent/android/logging/AgentLogManager;->instance:Lcom/newrelic/agent/android/logging/DefaultAgentLog;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/logging/DefaultAgentLog;->setImpl(Lcom/newrelic/agent/android/logging/AgentLog;)V

    .line 12
    return-void
.end method
