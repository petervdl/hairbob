.class public Lcom/newrelic/agent/android/measurement/CategorizedMeasurement;
.super Lcom/newrelic/agent/android/measurement/BaseMeasurement;
.source "CategorizedMeasurement.java"


# instance fields
.field private category:Lcom/newrelic/agent/android/instrumentation/MetricCategory;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V
    .registers 2
    .param p1, "measurementType"    # Lcom/newrelic/agent/android/measurement/MeasurementType;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/CategorizedMeasurement;->category:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    return-object v0
.end method

.method public setCategory(Lcom/newrelic/agent/android/instrumentation/MetricCategory;)V
    .registers 2
    .param p1, "category"    # Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/CategorizedMeasurement;->category:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    .line 18
    return-void
.end method
