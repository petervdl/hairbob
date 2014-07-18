.class public abstract Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;
.super Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;
.source "MetricMeasurementConsumer.java"

# interfaces
.implements Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;


# instance fields
.field protected metrics:Lcom/newrelic/agent/android/metric/MetricStore;

.field protected recordUnscopedMetrics:Z


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V
    .registers 3
    .param p1, "measurementType"    # Lcom/newrelic/agent/android/measurement/MeasurementType;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->recordUnscopedMetrics:Z

    .line 20
    new-instance v0, Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-direct {v0}, Lcom/newrelic/agent/android/metric/MetricStore;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    .line 21
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected addMetric(Lcom/newrelic/agent/android/metric/Metric;)V
    .registers 6
    .param p1, "newMetric"    # Lcom/newrelic/agent/android/metric/Metric;

    .prologue
    .line 61
    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getScope()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 62
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/metric/MetricStore;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object v0

    .line 67
    .local v0, "metric":Lcom/newrelic/agent/android/metric/Metric;
    :goto_14
    if-eqz v0, :cond_25

    .line 68
    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/metric/Metric;->aggregate(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 71
    :goto_19
    return-void

    .line 64
    .end local v0    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    :cond_1a
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/metric/MetricStore;->get(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object v0

    .restart local v0    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    goto :goto_14

    .line 70
    :cond_25
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/metric/MetricStore;->add(Lcom/newrelic/agent/android/metric/Metric;)V

    goto :goto_19
.end method

.method public consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .registers 12
    .param p1, "measurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 28
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->formatMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getScope()Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, "scope":Ljava/lang/String;
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getEndTimeInSeconds()D

    move-result-wide v6

    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getStartTimeInSeconds()D

    move-result-wide v8

    sub-double v0, v6, v8

    .line 33
    .local v0, "delta":D
    if-eqz v3, :cond_34

    .line 34
    iget-object v6, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v6, v2, v3}, Lcom/newrelic/agent/android/metric/MetricStore;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object v4

    .line 35
    .local v4, "scopedMetric":Lcom/newrelic/agent/android/metric/Metric;
    if-nez v4, :cond_2a

    .line 36
    new-instance v4, Lcom/newrelic/agent/android/metric/Metric;

    .end local v4    # "scopedMetric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-direct {v4, v2, v3}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .restart local v4    # "scopedMetric":Lcom/newrelic/agent/android/metric/Metric;
    iget-object v6, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v6, v4}, Lcom/newrelic/agent/android/metric/MetricStore;->add(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 40
    :cond_2a
    invoke-virtual {v4, v0, v1}, Lcom/newrelic/agent/android/metric/Metric;->sample(D)V

    .line 41
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getExclusiveTimeInSeconds()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/newrelic/agent/android/metric/Metric;->addExclusive(D)V

    .line 45
    .end local v4    # "scopedMetric":Lcom/newrelic/agent/android/metric/Metric;
    :cond_34
    iget-boolean v6, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->recordUnscopedMetrics:Z

    if-nez v6, :cond_39

    .line 56
    :goto_38
    return-void

    .line 48
    :cond_39
    iget-object v6, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v6, v2}, Lcom/newrelic/agent/android/metric/MetricStore;->get(Ljava/lang/String;)Lcom/newrelic/agent/android/metric/Metric;

    move-result-object v5

    .line 49
    .local v5, "unscopedMetric":Lcom/newrelic/agent/android/metric/Metric;
    if-nez v5, :cond_4b

    .line 50
    new-instance v5, Lcom/newrelic/agent/android/metric/Metric;

    .end local v5    # "unscopedMetric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-direct {v5, v2}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v5    # "unscopedMetric":Lcom/newrelic/agent/android/metric/Metric;
    iget-object v6, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v6, v5}, Lcom/newrelic/agent/android/metric/MetricStore;->add(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 54
    :cond_4b
    invoke-virtual {v5, v0, v1}, Lcom/newrelic/agent/android/metric/Metric;->sample(D)V

    .line 55
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getExclusiveTimeInSeconds()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/newrelic/agent/android/metric/Metric;->addExclusive(D)V

    goto :goto_38
.end method

.method protected abstract formatMetricName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public onHarvest()V
    .registers 4

    .prologue
    .line 75
    iget-object v2, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/metric/MetricStore;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/metric/Metric;

    .line 76
    .local v1, "metric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/Harvest;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    goto :goto_a

    .line 78
    .end local v1    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    :cond_1a
    return-void
.end method

.method public onHarvestComplete()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/metric/MetricStore;->clear()V

    .line 83
    return-void
.end method

.method public onHarvestError()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/metric/MetricStore;->clear()V

    .line 88
    return-void
.end method

.method public onHarvestSendFailed()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/metric/MetricStore;->clear()V

    .line 93
    return-void
.end method
