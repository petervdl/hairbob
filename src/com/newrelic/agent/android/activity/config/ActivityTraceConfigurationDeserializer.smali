.class public Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;
.super Ljava/lang/Object;
.source "ActivityTraceConfigurationDeserializer.java"

# interfaces
.implements Lcom/newrelic/com/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/newrelic/com/google/gson/JsonDeserializer",
        "<",
        "Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method private error(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ActivityTraceConfigurationDeserializer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private getInteger(Lcom/newrelic/com/google/gson/JsonElement;)Ljava/lang/Integer;
    .registers 6
    .param p1, "element"    # Lcom/newrelic/com/google/gson/JsonElement;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v3

    if-nez v3, :cond_e

    .line 44
    const-string/jumbo v3, "Expected an integer."

    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->error(Ljava/lang/String;)V

    .line 59
    :goto_d
    return-object v2

    .line 48
    :cond_e
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    .line 49
    .local v0, "primitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 50
    const-string/jumbo v3, "Expected an integer."

    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->error(Ljava/lang/String;)V

    goto :goto_d

    .line 54
    :cond_1f
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsInt()I

    move-result v1

    .line 55
    .local v1, "value":I
    if-gez v1, :cond_2c

    .line 56
    const-string/jumbo v3, "Integer value must not be negative"

    invoke-direct {p0, v3}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->error(Ljava/lang/String;)V

    goto :goto_d

    .line 59
    :cond_2c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_d
.end method


# virtual methods
.method public deserialize(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/JsonDeserializationContext;)Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    .registers 10
    .param p1, "root"    # Lcom/newrelic/com/google/gson/JsonElement;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "jsonDeserializationContext"    # Lcom/newrelic/com/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 14
    new-instance v1, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    invoke-direct {v1}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;-><init>()V

    .line 16
    .local v1, "configuration":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-nez v4, :cond_14

    .line 17
    const-string/jumbo v4, "Expected root element to be an array."

    invoke-direct {p0, v4}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->error(Ljava/lang/String;)V

    move-object v1, v3

    .line 39
    .end local v1    # "configuration":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    :goto_13
    return-object v1

    .line 21
    .restart local v1    # "configuration":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    :cond_14
    invoke-virtual {p1}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v0

    .line 23
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonArray;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_27

    .line 24
    const-string/jumbo v4, "Root array must contain 2 elements."

    invoke-direct {p0, v4}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->error(Ljava/lang/String;)V

    move-object v1, v3

    .line 25
    goto :goto_13

    .line 28
    :cond_27
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/gson/JsonArray;->get(I)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->getInteger(Lcom/newrelic/com/google/gson/JsonElement;)Ljava/lang/Integer;

    move-result-object v2

    .line 29
    .local v2, "maxTotalTraceCount":Ljava/lang/Integer;
    if-nez v2, :cond_34

    move-object v1, v3

    .line 30
    goto :goto_13

    .line 32
    :cond_34
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_42

    .line 33
    const-string/jumbo v4, "The first element of the root array must not be negative."

    invoke-direct {p0, v4}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->error(Ljava/lang/String;)V

    move-object v1, v3

    .line 34
    goto :goto_13

    .line 37
    :cond_42
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->setMaxTotalTraceCount(I)V

    goto :goto_13
.end method

.method public bridge synthetic deserialize(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .registers 5
    .param p1, "x0"    # Lcom/newrelic/com/google/gson/JsonElement;
    .param p2, "x1"    # Ljava/lang/reflect/Type;
    .param p3, "x2"    # Lcom/newrelic/com/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/com/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;->deserialize(Lcom/newrelic/com/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/newrelic/com/google/gson/JsonDeserializationContext;)Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    return-object v0
.end method
