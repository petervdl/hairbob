.class public Lcom/newrelic/agent/android/harvest/HarvestDataValidator;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "HarvestDataValidator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public ensureActivityNameMetricsExist()V
    .registers 16

    .prologue
    .line 19
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getInstance()Lcom/newrelic/agent/android/harvest/Harvest;

    move-result-object v13

    invoke-virtual {v13}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v6

    .line 21
    .local v6, "harvestData":Lcom/newrelic/agent/android/harvest/HarvestData;
    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v4

    .line 22
    .local v4, "activityTraces":Lcom/newrelic/agent/android/harvest/ActivityTraces;
    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->count()I

    move-result v13

    if-nez v13, :cond_15

    .line 59
    :cond_14
    return-void

    .line 25
    :cond_15
    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestData;->getMetrics()Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    move-result-object v11

    .line 26
    .local v11, "metrics":Lcom/newrelic/agent/android/harvest/MachineMeasurements;
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_14

    .line 30
    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->getActivityTraces()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_29
    :goto_29
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 31
    .local v3, "activityTrace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    iget-object v13, v3, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v2, v13, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    .line 32
    .local v2, "activityName":Ljava/lang/String;
    const-string/jumbo v13, "#"

    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 33
    .local v7, "hashIndex":I
    if-lez v7, :cond_47

    .line 34
    const/4 v13, 0x0

    invoke-virtual {v2, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 37
    :cond_47
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Mobile/Activity/Name/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "activityMetricRoot":Ljava/lang/String;
    const/4 v5, 0x0

    .line 41
    .local v5, "foundMetricForActivity":Z
    invoke-virtual {v11}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->getMetrics()Lcom/newrelic/agent/android/metric/MetricStore;

    move-result-object v13

    invoke-virtual {v13}, Lcom/newrelic/agent/android/metric/MetricStore;->getAllUnscoped()Ljava/util/List;

    move-result-object v12

    .line 43
    .local v12, "unScopedMetrics":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/metric/Metric;>;"
    if-eqz v12, :cond_87

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_87

    .line 44
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_70
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_87

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/newrelic/agent/android/metric/Metric;

    .line 45
    .local v10, "metric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v10}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_70

    .line 46
    const/4 v5, 0x1

    .line 52
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    :cond_87
    if-nez v5, :cond_29

    .line 56
    new-instance v0, Lcom/newrelic/agent/android/metric/Metric;

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "activityMetric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v11, v0}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    goto :goto_29
.end method

.method public onHarvestFinalize()V
    .registers 2

    .prologue
    .line 12
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 16
    :goto_6
    return-void

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestDataValidator;->ensureActivityNameMetricsExist()V

    goto :goto_6
.end method
