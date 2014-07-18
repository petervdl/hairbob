.class public Lcom/newrelic/agent/android/measurement/BaseMeasurement;
.super Ljava/lang/Object;
.source "BaseMeasurement.java"

# interfaces
.implements Lcom/newrelic/agent/android/measurement/Measurement;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private endTime:J

.field private exclusiveTime:J

.field private finished:Z

.field private name:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private startTime:J

.field private threadInfo:Lcom/newrelic/agent/android/measurement/ThreadInfo;

.field private type:Lcom/newrelic/agent/android/measurement/MeasurementType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .registers 4
    .param p1, "measurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getType()Lcom/newrelic/agent/android/measurement/MeasurementType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setType(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 28
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setName(Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setScope(Ljava/lang/String;)V

    .line 30
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setStartTime(J)V

    .line 31
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getEndTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setEndTime(J)V

    .line 32
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getExclusiveTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setExclusiveTime(J)V

    .line 33
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getThreadInfo()Lcom/newrelic/agent/android/measurement/ThreadInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setThreadInfo(Lcom/newrelic/agent/android/measurement/ThreadInfo;)V

    .line 34
    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->isFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->finished:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V
    .registers 2
    .param p1, "measurementType"    # Lcom/newrelic/agent/android/measurement/MeasurementType;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setType(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 24
    return-void
.end method

.method private throwIfFinished()V
    .registers 3

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->finished:Z

    if-eqz v0, :cond_d

    .line 149
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementException;

    const-string/jumbo v1, "Attempted to modify finished Measurement"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/measurement/MeasurementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_d
    return-void
.end method


# virtual methods
.method public asDouble()D
    .registers 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->finished:Z

    if-eqz v0, :cond_d

    .line 138
    new-instance v0, Lcom/newrelic/agent/android/measurement/MeasurementException;

    const-string/jumbo v1, "Finish called on already finished Measurement"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/measurement/MeasurementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->finished:Z

    .line 140
    return-void
.end method

.method public getEndTime()J
    .registers 3

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->endTime:J

    return-wide v0
.end method

.method public getEndTimeInSeconds()D
    .registers 5

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->endTime:J

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getExclusiveTime()J
    .registers 3

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->exclusiveTime:J

    return-wide v0
.end method

.method public getExclusiveTimeInSeconds()D
    .registers 5

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->exclusiveTime:J

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->startTime:J

    return-wide v0
.end method

.method public getStartTimeInSeconds()D
    .registers 5

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->startTime:J

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getThreadInfo()Lcom/newrelic/agent/android/measurement/ThreadInfo;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->threadInfo:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    return-object v0
.end method

.method public getType()Lcom/newrelic/agent/android/measurement/MeasurementType;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->type:Lcom/newrelic/agent/android/measurement/MeasurementType;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->finished:Z

    return v0
.end method

.method public isInstantaneous()Z
    .registers 5

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->endTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public setEndTime(J)V
    .registers 7
    .param p1, "endTime"    # J

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->throwIfFinished()V

    .line 59
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->startTime:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_30

    .line 60
    sget-object v0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Measurement end time must not precede start time - startTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " endTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 64
    :goto_2f
    return-void

    .line 63
    :cond_30
    iput-wide p1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->endTime:J

    goto :goto_2f
.end method

.method public setExclusiveTime(J)V
    .registers 3
    .param p1, "exclusiveTime"    # J

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->throwIfFinished()V

    .line 68
    iput-wide p1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->exclusiveTime:J

    .line 69
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->throwIfFinished()V

    .line 44
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->name:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .registers 2
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->throwIfFinished()V

    .line 49
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->scope:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setStartTime(J)V
    .registers 3
    .param p1, "startTime"    # J

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->throwIfFinished()V

    .line 54
    iput-wide p1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->startTime:J

    .line 55
    return-void
.end method

.method public setThreadInfo(Lcom/newrelic/agent/android/measurement/ThreadInfo;)V
    .registers 2
    .param p1, "threadInfo"    # Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->threadInfo:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    .line 128
    return-void
.end method

.method setType(Lcom/newrelic/agent/android/measurement/MeasurementType;)V
    .registers 2
    .param p1, "type"    # Lcom/newrelic/agent/android/measurement/MeasurementType;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->throwIfFinished()V

    .line 39
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->type:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 40
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BaseMeasurement{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->type:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", scope=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->endTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", exclusiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->exclusiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", threadInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->threadInfo:Lcom/newrelic/agent/android/measurement/ThreadInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->finished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
