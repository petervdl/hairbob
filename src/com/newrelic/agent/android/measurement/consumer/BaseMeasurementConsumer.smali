.class public Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "BaseMeasurementConsumer.java"

# interfaces
.implements Lcom/newrelic/agent/android/measurement/consumer/MeasurementConsumer;


# instance fields
.field private final measurementType:Lcom/newrelic/agent/android/measurement/MeasurementType;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V
    .registers 2
    .param p1, "measurementType"    # Lcom/newrelic/agent/android/measurement/MeasurementType;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;->measurementType:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 19
    return-void
.end method


# virtual methods
.method public consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .registers 2
    .param p1, "measurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 28
    return-void
.end method

.method public consumeMeasurements(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/measurement/Measurement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "measurements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/measurement/Measurement;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/measurement/Measurement;

    .line 33
    .local v1, "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;->consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    goto :goto_4

    .line 35
    .end local v1    # "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    :cond_14
    return-void
.end method

.method public getMeasurementType()Lcom/newrelic/agent/android/measurement/MeasurementType;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/consumer/BaseMeasurementConsumer;->measurementType:Lcom/newrelic/agent/android/measurement/MeasurementType;

    return-object v0
.end method
