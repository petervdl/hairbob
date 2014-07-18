.class public Lcom/newrelic/agent/android/harvest/Events;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "Events.java"


# instance fields
.field private final events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Events;->events:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/newrelic/agent/android/harvest/Event;)V
    .registers 3
    .param p1, "event"    # Lcom/newrelic/agent/android/harvest/Event;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Events;->events:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 5

    .prologue
    .line 14
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 15
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Events;->events:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/Event;

    .line 16
    .local v1, "event":Lcom/newrelic/agent/android/harvest/Event;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/Event;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_b

    .line 18
    .end local v1    # "event":Lcom/newrelic/agent/android/harvest/Event;
    :cond_1f
    return-object v0
.end method
