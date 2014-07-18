.class public Lcom/newrelic/agent/android/measurement/consumer/ActivityMeasurementConsumer;
.super Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;
.source "ActivityMeasurementConsumer.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Activity:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected formatMetricName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    return-object p1
.end method
