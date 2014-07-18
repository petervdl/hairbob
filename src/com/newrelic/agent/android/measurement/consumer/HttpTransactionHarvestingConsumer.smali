.class public Lcom/newrelic/agent/android/measurement/consumer/HttpTransactionHarvestingConsumer;
.super Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;
.source "HttpTransactionHarvestingConsumer.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Network:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 13
    return-void
.end method


# virtual methods
.method public consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .registers 6
    .param p1, "measurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 17
    move-object v0, p1

    check-cast v0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    .line 18
    .local v0, "m":Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;
    new-instance v1, Lcom/newrelic/agent/android/harvest/HttpTransaction;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/HttpTransaction;-><init>()V

    .line 20
    .local v1, "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->setUrl(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->setStatusCode(I)V

    .line 22
    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->setErrorCode(I)V

    .line 23
    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->getTotalTime()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->setTotalTime(D)V

    .line 24
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getActiveNetworkCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->setCarrier(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->getBytesReceived()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->setBytesReceived(J)V

    .line 26
    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->getBytesSent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->setBytesSent(J)V

    .line 27
    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->getAppData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->setAppData(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->getStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->setTimestamp(Ljava/lang/Long;)V

    .line 30
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/Harvest;->addHttpTransaction(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    .line 31
    return-void
.end method
