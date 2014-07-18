.class public Lcom/newrelic/agent/android/AgentConfiguration;
.super Ljava/lang/Object;
.source "AgentConfiguration.java"


# instance fields
.field private final DEFAULT_COLLECTOR_HOST:Ljava/lang/String;

.field private applicationToken:Ljava/lang/String;

.field private collectorHost:Ljava/lang/String;

.field private useSsl:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string/jumbo v0, "mobile-collector.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->DEFAULT_COLLECTOR_HOST:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, "mobile-collector.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectorHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .registers 2
    .param p1, "applicationToken"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .registers 2
    .param p1, "collectorHost"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setUseSsl(Z)V
    .registers 2
    .param p1, "useSsl"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    .line 34
    return-void
.end method

.method public useSsl()Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    return v0
.end method
