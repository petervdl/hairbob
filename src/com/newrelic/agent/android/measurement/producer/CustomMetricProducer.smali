.class public Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;
.super Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;
.source "CustomMetricProducer.java"


# static fields
.field private static final FILTER_REGEX:Ljava/lang/String; = "[/\\[\\]|*]"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Custom:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 12
    return-void
.end method

.method private createMetricName(Ljava/lang/String;Ljava/lang/String;Lcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)Ljava/lang/String;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "countUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;
    .param p4, "valueUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v0, "metricName":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "[/\\[\\]|*]"

    const-string/jumbo v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string/jumbo v1, "[/\\[\\]|*]"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    if-nez p3, :cond_29

    if-eqz p4, :cond_4d

    .line 33
    :cond_29
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    if-eqz p4, :cond_38

    .line 35
    invoke-virtual {p4}, Lcom/newrelic/agent/android/metric/MetricUnit;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    :cond_38
    if-eqz p3, :cond_47

    .line 38
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    invoke-virtual {p3}, Lcom/newrelic/agent/android/metric/MetricUnit;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    :cond_47
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public produceMeasurement(Ljava/lang/String;Ljava/lang/String;IDD)V
    .registers 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "totalValue"    # D
    .param p6, "exclusiveValue"    # D

    .prologue
    .line 15
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;->produceMeasurement(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 16
    return-void
.end method

.method public produceMeasurement(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V
    .registers 19
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "totalValue"    # D
    .param p6, "exclusiveValue"    # D
    .param p8, "countUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;
    .param p9, "valueUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;

    .prologue
    .line 19
    move-object/from16 v0, p8

    move-object/from16 v1, p9

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;->createMetricName(Ljava/lang/String;Ljava/lang/String;Lcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)Ljava/lang/String;

    move-result-object v3

    .line 20
    .local v3, "metricName":Ljava/lang/String;
    new-instance v2, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;

    move v4, p3

    move-wide v5, p4

    move-wide v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;-><init>(Ljava/lang/String;IDD)V

    .line 21
    .local v2, "custom":Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;
    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/measurement/producer/CustomMetricProducer;->produceMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    .line 22
    return-void
.end method
