.class public Lcom/newrelic/agent/android/harvest/DataToken;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "DataToken.java"


# instance fields
.field private accountId:J

.field private agentId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5
    .param p1, "accountId"    # J
    .param p3, "agentId"    # J

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/DataToken;->accountId:J

    .line 21
    iput-wide p3, p0, Lcom/newrelic/agent/android/harvest/DataToken;->agentId:J

    .line 22
    return-void
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 5

    .prologue
    .line 26
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 27
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/DataToken;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 28
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/DataToken;->agentId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 29
    return-object v0
.end method

.method public clear()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/DataToken;->accountId:J

    .line 34
    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/DataToken;->agentId:J

    .line 35
    return-void
.end method

.method public getAccountId()J
    .registers 3

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/DataToken;->accountId:J

    return-wide v0
.end method

.method public getAgentId()J
    .registers 3

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/DataToken;->agentId:J

    return-wide v0
.end method

.method public isValid()Z
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/DataToken;->accountId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/DataToken;->agentId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public setAccountId(J)V
    .registers 3
    .param p1, "accountId"    # J

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/DataToken;->accountId:J

    .line 43
    return-void
.end method

.method public setAgentId(J)V
    .registers 3
    .param p1, "agentId"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/DataToken;->agentId:J

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DataToken{accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/newrelic/agent/android/harvest/DataToken;->accountId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", agentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/newrelic/agent/android/harvest/DataToken;->agentId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
