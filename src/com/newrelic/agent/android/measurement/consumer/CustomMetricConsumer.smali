.class public Lcom/newrelic/agent/android/measurement/consumer/CustomMetricConsumer;
.super Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;
.source "CustomMetricConsumer.java"


# static fields
.field private static final METRIC_PREFIX:Ljava/lang/String; = "Custom/"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Custom:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 14
    return-void
.end method


# virtual methods
.method public consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .registers 5
    .param p1, "measurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 23
    move-object v0, p1

    check-cast v0, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;

    .line 24
    .local v0, "custom":Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->getCustomMetric()Lcom/newrelic/agent/android/metric/Metric;

    move-result-object v1

    .line 25
    .local v1, "metric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/measurement/consumer/CustomMetricConsumer;->formatMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/metric/Metric;->setName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/measurement/consumer/CustomMetricConsumer;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 27
    return-void
.end method

.method protected formatMetricName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Custom/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
