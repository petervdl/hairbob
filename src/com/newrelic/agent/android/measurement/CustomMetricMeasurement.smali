.class public Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;
.super Lcom/newrelic/agent/android/measurement/CategorizedMeasurement;
.source "CustomMetricMeasurement.java"


# instance fields
.field private customMetric:Lcom/newrelic/agent/android/metric/Metric;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Custom:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/CategorizedMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IDD)V
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "totalValue"    # D
    .param p5, "exclusiveValue"    # D

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->setName(Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/newrelic/agent/android/metric/Metric;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->customMetric:Lcom/newrelic/agent/android/metric/Metric;

    .line 18
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->customMetric:Lcom/newrelic/agent/android/metric/Metric;

    invoke-virtual {v0, p3, p4}, Lcom/newrelic/agent/android/metric/Metric;->sample(D)V

    .line 19
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->customMetric:Lcom/newrelic/agent/android/metric/Metric;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/agent/android/metric/Metric;->setCount(J)V

    .line 20
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->customMetric:Lcom/newrelic/agent/android/metric/Metric;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/metric/Metric;->setExclusive(Ljava/lang/Double;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getCustomMetric()Lcom/newrelic/agent/android/metric/Metric;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->customMetric:Lcom/newrelic/agent/android/metric/Metric;

    return-object v0
.end method
