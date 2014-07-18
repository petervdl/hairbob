.class public Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.source "AgentHealthExceptions.java"


# static fields
.field private static final keyArray:Lcom/newrelic/com/google/gson/JsonArray;


# instance fields
.field private final agentHealthExceptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/harvest/AgentHealthException;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string/jumbo v2, "ExceptionClass"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 23
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string/jumbo v2, "Message"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 24
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string/jumbo v2, "ThreadName"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 25
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string/jumbo v2, "CallStack"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 26
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string/jumbo v2, "Count"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 27
    sget-object v0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string/jumbo v2, "Extras"

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 28
    return-void
.end method


# virtual methods
.method public add(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V
    .registers 7
    .param p1, "exception"    # Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .prologue
    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getExceptionClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "aggregationKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    monitor-enter v3

    .line 34
    :try_start_23
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .line 36
    .local v1, "healthException":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    if-nez v1, :cond_34

    .line 37
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_32
    monitor-exit v3

    .line 42
    return-void

    .line 39
    :cond_34
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->increment()V

    goto :goto_32

    .line 41
    .end local v1    # "healthException":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    :catchall_38
    move-exception v2

    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_23 .. :try_end_3a} :catchall_38

    throw v2
.end method

.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .registers 8

    .prologue
    .line 60
    new-instance v2, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 62
    .local v2, "exceptions":Lcom/newrelic/com/google/gson/JsonObject;
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 64
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .line 65
    .local v1, "exception":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_14

    .line 68
    .end local v1    # "exception":Lcom/newrelic/agent/android/harvest/AgentHealthException;
    :cond_28
    const-string/jumbo v4, "Type"

    new-instance v5, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string/jumbo v6, "AgentErrors"

    invoke-direct {v5, v6}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 69
    const-string/jumbo v4, "Keys"

    sget-object v5, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->keyArray:Lcom/newrelic/com/google/gson/JsonArray;

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 70
    const-string/jumbo v4, "Data"

    invoke-virtual {v2, v4, v0}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 72
    return-object v2
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    monitor-enter v1

    .line 46
    :try_start_3
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 47
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getAgentHealthExceptions()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/harvest/AgentHealthException;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthExceptions;->agentHealthExceptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method
