.class public Lcom/newrelic/agent/android/measurement/ThreadInfo;
.super Ljava/lang/Object;
.source "ThreadInfo.java"


# instance fields
.field private id:J

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/ThreadInfo;-><init>(Ljava/lang/Thread;)V

    .line 12
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/newrelic/agent/android/measurement/ThreadInfo;->id:J

    .line 16
    iput-object p3, p0, Lcom/newrelic/agent/android/measurement/ThreadInfo;->name:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread;)V
    .registers 5
    .param p1, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 20
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/newrelic/agent/android/measurement/ThreadInfo;-><init>(JLjava/lang/String;)V

    .line 21
    return-void
.end method

.method public static fromThread(Ljava/lang/Thread;)Lcom/newrelic/agent/android/measurement/ThreadInfo;
    .registers 2
    .param p0, "thread"    # Ljava/lang/Thread;

    .prologue
    .line 24
    new-instance v0, Lcom/newrelic/agent/android/measurement/ThreadInfo;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/measurement/ThreadInfo;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method


# virtual methods
.method public getId()J
    .registers 3

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/ThreadInfo;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/ThreadInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .registers 3
    .param p1, "id"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/newrelic/agent/android/measurement/ThreadInfo;->id:J

    .line 37
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/ThreadInfo;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ThreadInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/newrelic/agent/android/measurement/ThreadInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/ThreadInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
