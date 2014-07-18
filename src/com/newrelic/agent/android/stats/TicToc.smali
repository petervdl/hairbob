.class public Lcom/newrelic/agent/android/stats/TicToc;
.super Ljava/lang/Object;
.source "TicToc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/stats/TicToc$State;
    }
.end annotation


# instance fields
.field private endTime:J

.field private startTime:J

.field private state:Lcom/newrelic/agent/android/stats/TicToc$State;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public tic()V
    .registers 3

    .prologue
    .line 14
    sget-object v0, Lcom/newrelic/agent/android/stats/TicToc$State;->STARTED:Lcom/newrelic/agent/android/stats/TicToc$State;

    iput-object v0, p0, Lcom/newrelic/agent/android/stats/TicToc;->state:Lcom/newrelic/agent/android/stats/TicToc$State;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/stats/TicToc;->startTime:J

    .line 17
    return-void
.end method

.method public toc()J
    .registers 5

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/stats/TicToc;->endTime:J

    .line 22
    iget-object v0, p0, Lcom/newrelic/agent/android/stats/TicToc;->state:Lcom/newrelic/agent/android/stats/TicToc$State;

    sget-object v1, Lcom/newrelic/agent/android/stats/TicToc$State;->STARTED:Lcom/newrelic/agent/android/stats/TicToc$State;

    if-ne v0, v1, :cond_16

    .line 23
    sget-object v0, Lcom/newrelic/agent/android/stats/TicToc$State;->STOPPED:Lcom/newrelic/agent/android/stats/TicToc$State;

    iput-object v0, p0, Lcom/newrelic/agent/android/stats/TicToc;->state:Lcom/newrelic/agent/android/stats/TicToc$State;

    .line 24
    iget-wide v0, p0, Lcom/newrelic/agent/android/stats/TicToc;->endTime:J

    iget-wide v2, p0, Lcom/newrelic/agent/android/stats/TicToc;->startTime:J

    sub-long/2addr v0, v2

    .line 26
    :goto_15
    return-wide v0

    :cond_16
    const-wide/16 v0, -0x1

    goto :goto_15
.end method
