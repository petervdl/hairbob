.class public Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;
.super Ljava/lang/Object;
.source "BaseMeasuredActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/activity/MeasuredActivity;


# instance fields
.field private autoInstrumented:Z

.field private endTime:J

.field private endingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

.field private endingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

.field private finished:Z

.field private measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

.field private name:Ljava/lang/String;

.field private startTime:J

.field private startingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

.field private startingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwIfFinished()V
    .registers 3

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->finished:Z

    if-eqz v0, :cond_d

    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementException;

    const-string/jumbo v1, "Cannot modify finished Activity"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/measurement/MeasurementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_d
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->finished:Z

    .line 169
    return-void
.end method

.method public getBackgroundMetricName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndTime()J
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endTime:J

    return-wide v0
.end method

.method public getEndingMeasurement()Lcom/newrelic/agent/android/measurement/Measurement;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

    return-object v0
.end method

.method public getEndingThread()Lcom/newrelic/agent/android/measurement/ThreadInfo;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    return-object v0
.end method

.method public getMeasurementPool()Lcom/newrelic/agent/android/measurement/MeasurementPool;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    return-object v0
.end method

.method public getMetricName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startTime:J

    return-wide v0
.end method

.method public getStartingMeasurement()Lcom/newrelic/agent/android/measurement/Measurement;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

    return-object v0
.end method

.method public getStartingThread()Lcom/newrelic/agent/android/measurement/ThreadInfo;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    return-object v0
.end method

.method public isAutoInstrumented()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->autoInstrumented:Z

    return v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->finished:Z

    return v0
.end method

.method public setAutoInstrumented(Z)V
    .registers 2
    .param p1, "autoInstrumented"    # Z

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->throwIfFinished()V

    .line 133
    iput-boolean p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->autoInstrumented:Z

    .line 134
    return-void
.end method

.method public setEndTime(J)V
    .registers 3
    .param p1, "endTime"    # J

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->throwIfFinished()V

    .line 106
    iput-wide p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endTime:J

    .line 107
    return-void
.end method

.method public setEndingMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .registers 2
    .param p1, "endingMeasurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->throwIfFinished()V

    .line 151
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

    .line 152
    return-void
.end method

.method public setEndingThread(Lcom/newrelic/agent/android/measurement/ThreadInfo;)V
    .registers 2
    .param p1, "endingThread"    # Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->throwIfFinished()V

    .line 124
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->endingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .line 125
    return-void
.end method

.method public setMeasurementPool(Lcom/newrelic/agent/android/measurement/MeasurementPool;)V
    .registers 2
    .param p1, "measurementPool"    # Lcom/newrelic/agent/android/measurement/MeasurementPool;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->throwIfFinished()V

    .line 160
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->measurementPool:Lcom/newrelic/agent/android/measurement/MeasurementPool;

    .line 161
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->throwIfFinished()V

    .line 88
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->name:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setStartTime(J)V
    .registers 3
    .param p1, "startTime"    # J

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->throwIfFinished()V

    .line 97
    iput-wide p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startTime:J

    .line 98
    return-void
.end method

.method public setStartingMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .registers 2
    .param p1, "startingMeasurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->throwIfFinished()V

    .line 142
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startingMeasurement:Lcom/newrelic/agent/android/measurement/Measurement;

    .line 143
    return-void
.end method

.method public setStartingThread(Lcom/newrelic/agent/android/measurement/ThreadInfo;)V
    .registers 2
    .param p1, "startingThread"    # Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->throwIfFinished()V

    .line 115
    iput-object p1, p0, Lcom/newrelic/agent/android/activity/BaseMeasuredActivity;->startingThread:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .line 116
    return-void
.end method
