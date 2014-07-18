.class public Lcom/newrelic/agent/android/harvest/AgentHealthException;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "AgentHealthException.java"


# instance fields
.field private final count:Ljava/util/concurrent/atomic/AtomicLong;

.field private exceptionClass:Ljava/lang/String;

.field private extras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private stackTrace:[Ljava/lang/StackTraceElement;

.field private threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/newrelic/agent/android/harvest/AgentHealthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;)V
    .registers 11
    .param p1, "exceptionClass"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 33
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/newrelic/agent/android/harvest/AgentHealthException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/util/Map;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/StackTraceElement;Ljava/util/Map;)V
    .registers 9
    .param p1, "exceptionClass"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "threadName"    # Ljava/lang/String;
    .param p4, "stackTrace"    # [Ljava/lang/StackTraceElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/StackTraceElement;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p5, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->exceptionClass:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->message:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->threadName:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 43
    iput-object p5, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->extras:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private extrasToJson()Lcom/newrelic/com/google/gson/JsonObject;
    .registers 7

    .prologue
    .line 111
    new-instance v0, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 113
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonObject;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->extras:Ljava/util/Map;

    if-eqz v3, :cond_34

    .line 114
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->extras:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Lcom/newrelic/com/google/gson/JsonPrimitive;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v5, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_13

    .line 119
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_34
    return-object v0
.end method

.method private stackTraceToJson()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 8

    .prologue
    .line 101
    new-instance v4, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 103
    .local v4, "stack":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->stackTrace:[Ljava/lang/StackTraceElement;

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_1c

    aget-object v1, v0, v2

    .line 104
    .local v1, "element":Ljava/lang/StackTraceElement;
    new-instance v5, Lcom/newrelic/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 107
    .end local v1    # "element":Ljava/lang/StackTraceElement;
    :cond_1c
    return-object v4
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 5

    .prologue
    .line 88
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 90
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->exceptionClass:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 91
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->message:Ljava/lang/String;

    if-nez v1, :cond_49

    const-string/jumbo v1, ""

    :goto_18
    invoke-direct {v2, v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 92
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->threadName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 93
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->stackTraceToJson()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 94
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 95
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/AgentHealthException;->extrasToJson()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 97
    return-object v0

    .line 91
    :cond_49
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->message:Ljava/lang/String;

    goto :goto_18
.end method

.method public getCount()J
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExceptionClass()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->exceptionClass:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->extras:Ljava/util/Map;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceClass()Ljava/lang/String;
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->stackTrace:[Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceMethod()Ljava/lang/String;
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->stackTrace:[Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackTrace()[Ljava/lang/StackTraceElement;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->stackTrace:[Ljava/lang/StackTraceElement;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public increment()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 48
    return-void
.end method

.method public increment(J)V
    .registers 4
    .param p1, "i"    # J

    .prologue
    .line 51
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/AgentHealthException;->count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 52
    return-void
.end method
