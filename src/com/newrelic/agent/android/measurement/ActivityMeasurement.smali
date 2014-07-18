.class public Lcom/newrelic/agent/android/measurement/ActivityMeasurement;
.super Lcom/newrelic/agent/android/measurement/BaseMeasurement;
.source "ActivityMeasurement.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J

    .prologue
    .line 8
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Activity:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/measurement/ActivityMeasurement;->setName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p2, p3}, Lcom/newrelic/agent/android/measurement/ActivityMeasurement;->setStartTime(J)V

    .line 12
    invoke-virtual {p0, p4, p5}, Lcom/newrelic/agent/android/measurement/ActivityMeasurement;->setEndTime(J)V

    .line 13
    return-void
.end method
