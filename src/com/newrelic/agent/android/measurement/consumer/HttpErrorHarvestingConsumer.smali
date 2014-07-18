.class public Lcom/newrelic/agent/android/measurement/consumer/HttpErrorHarvestingConsumer;
.super Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;
.source "HttpErrorHarvestingConsumer.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->HttpError:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 12
    return-void
.end method


# virtual methods
.method public consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .registers 3
    .param p1, "measurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 16
    new-instance v0, Lcom/newrelic/agent/android/harvest/HttpError;

    check-cast p1, Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;

    .end local p1    # "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/harvest/HttpError;-><init>(Lcom/newrelic/agent/android/measurement/http/HttpErrorMeasurement;)V

    .line 17
    .local v0, "error":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V

    .line 18
    return-void
.end method
