.class public Lcom/newrelic/agent/android/harvest/MachineMeasurements;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "MachineMeasurements.java"


# instance fields
.field private final metrics:Lcom/newrelic/agent/android/metric/MetricStore;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 15
    new-instance v0, Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-direct {v0}, Lcom/newrelic/agent/android/metric/MetricStore;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    return-void
.end method


# virtual methods
.method public addMetric(Lcom/newrelic/agent/android/metric/Metric;)V
    .registers 3
    .param p1, "metric"    # Lcom/newrelic/agent/android/metric/Metric;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/metric/MetricStore;->add(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 31
    return-void
.end method

.method public addMetric(Ljava/lang/String;D)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 24
    new-instance v0, Lcom/newrelic/agent/android/metric/Metric;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "metric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v0, p2, p3}, Lcom/newrelic/agent/android/metric/Metric;->sample(D)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 27
    return-void
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 8

    .prologue
    .line 47
    new-instance v3, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 49
    .local v3, "metricArray":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/metric/MetricStore;->getAll()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/metric/Metric;

    .line 50
    .local v2, "metric":Lcom/newrelic/agent/android/metric/Metric;
    new-instance v4, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 52
    .local v4, "metricJson":Lcom/newrelic/com/google/gson/JsonArray;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "name"

    invoke-virtual {v2}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string/jumbo v5, "scope"

    invoke-virtual {v2}, Lcom/newrelic/agent/android/metric/Metric;->getStringScope()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v5, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v5}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    sget-object v6, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v5, v0, v6}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 57
    invoke-virtual {v2}, Lcom/newrelic/agent/android/metric/Metric;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 58
    invoke-virtual {v3, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_f

    .line 61
    .end local v0    # "header":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    .end local v4    # "metricJson":Lcom/newrelic/com/google/gson/JsonArray;
    :cond_52
    return-object v3
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/metric/MetricStore;->clear()V

    .line 35
    return-void
.end method

.method public getMetrics()Lcom/newrelic/agent/android/metric/MetricStore;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/metric/MetricStore;->isEmpty()Z

    move-result v0

    return v0
.end method
