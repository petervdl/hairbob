.class public Lcom/newrelic/agent/android/measurement/producer/ActivityMeasurementProducer;
.super Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;
.source "ActivityMeasurementProducer.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Activity:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 13
    return-void
.end method


# virtual methods
.method public produceMeasurement(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V
    .registers 8
    .param p1, "measuredActivity"    # Lcom/newrelic/agent/android/activity/MeasuredActivity;

    .prologue
    .line 17
    new-instance v0, Lcom/newrelic/agent/android/measurement/ActivityMeasurement;

    invoke-interface {p1}, Lcom/newrelic/agent/android/activity/MeasuredActivity;->getMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/newrelic/agent/android/activity/MeasuredActivity;->getStartTime()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/newrelic/agent/android/activity/MeasuredActivity;->getEndTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/newrelic/agent/android/measurement/ActivityMeasurement;-><init>(Ljava/lang/String;JJ)V

    invoke-super {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->produceMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    .line 18
    new-instance v0, Lcom/newrelic/agent/android/measurement/ActivityMeasurement;

    invoke-interface {p1}, Lcom/newrelic/agent/android/activity/MeasuredActivity;->getBackgroundMetricName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/newrelic/agent/android/activity/MeasuredActivity;->getStartTime()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/newrelic/agent/android/activity/MeasuredActivity;->getEndTime()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/newrelic/agent/android/measurement/ActivityMeasurement;-><init>(Ljava/lang/String;JJ)V

    invoke-super {p0, v0}, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->produceMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    .line 19
    return-void
.end method
