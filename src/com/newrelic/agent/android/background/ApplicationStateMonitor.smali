.class public Lcom/newrelic/agent/android/background/ApplicationStateMonitor;
.super Ljava/lang/Object;
.source "ApplicationStateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static instance:Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final activitySnoozeTimeInMilliseconds:I

.field private final applicationStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/newrelic/agent/android/background/ApplicationStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private count:J

.field private final foregroundLock:Ljava/lang/Object;

.field private foregrounded:Z

.field private final snoozeLock:Ljava/lang/Object;

.field private snoozeStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x5

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x1388

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;-><init>(IILjava/util/concurrent/TimeUnit;I)V

    .line 34
    return-void
.end method

.method constructor <init>(IILjava/util/concurrent/TimeUnit;I)V
    .registers 12
    .param p1, "initialDelay"    # I
    .param p2, "period"    # I
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "snoozeTimeInMilliseconds"    # I

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    .line 21
    iput-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    .line 22
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeLock:Ljava/lang/Object;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    .line 27
    iput-boolean v2, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    .line 28
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/newrelic/agent/android/background/ApplicationStateMonitor$1;

    invoke-direct {v1, p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor$1;-><init>(Lcom/newrelic/agent/android/background/ApplicationStateMonitor;)V

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 43
    .local v0, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    iput p4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activitySnoozeTimeInMilliseconds:I

    .line 44
    int-to-long v2, p1

    int-to-long v4, p2

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 45
    sget-object v1, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v2, "Application state monitor has started"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->instance:Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    if-nez v0, :cond_b

    .line 50
    new-instance v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    invoke-direct {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->instance:Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    .line 52
    :cond_b
    sget-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->instance:Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    return-object v0
.end method

.method private getSnoozeTime()J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 147
    iget-object v2, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    monitor-enter v2

    .line 148
    :try_start_5
    iget-object v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1b

    .line 149
    :try_start_8
    iget-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_11

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_1e

    :try_start_f
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_1b

    .line 150
    :goto_10
    return-wide v0

    :cond_11
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    sub-long/2addr v0, v4

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    :try_start_19
    monitor-exit v2

    goto :goto_10

    .line 152
    :catchall_1b
    move-exception v0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_1b

    throw v0

    .line 151
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1b
.end method

.method private notifyApplicationInBackground()V
    .registers 7

    .prologue
    .line 119
    iget-object v5, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 120
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_24

    .line 122
    new-instance v0, Lcom/newrelic/agent/android/background/ApplicationStateEvent;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/background/ApplicationStateEvent;-><init>(Ljava/lang/Object;)V

    .line 123
    .local v0, "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/background/ApplicationStateListener;

    .line 124
    .local v2, "listener":Lcom/newrelic/agent/android/background/ApplicationStateListener;
    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/background/ApplicationStateListener;->applicationBackgrounded(Lcom/newrelic/agent/android/background/ApplicationStateEvent;)V

    goto :goto_14

    .line 121
    .end local v0    # "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/newrelic/agent/android/background/ApplicationStateListener;
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    :catchall_24
    move-exception v4

    :try_start_25
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v4

    .line 126
    .restart local v0    # "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    :cond_27
    return-void
.end method

.method private notifyApplicationInForeground()V
    .registers 7

    .prologue
    .line 130
    iget-object v5, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 131
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_24

    .line 133
    new-instance v0, Lcom/newrelic/agent/android/background/ApplicationStateEvent;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/background/ApplicationStateEvent;-><init>(Ljava/lang/Object;)V

    .line 134
    .local v0, "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/background/ApplicationStateListener;

    .line 135
    .local v2, "listener":Lcom/newrelic/agent/android/background/ApplicationStateListener;
    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/background/ApplicationStateListener;->applicationForegrounded(Lcom/newrelic/agent/android/background/ApplicationStateEvent;)V

    goto :goto_14

    .line 132
    .end local v0    # "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/newrelic/agent/android/background/ApplicationStateListener;
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    :catchall_24
    move-exception v4

    :try_start_25
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v4

    .line 137
    .restart local v0    # "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    :cond_27
    return-void
.end method


# virtual methods
.method public activityStarted()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x1

    .line 98
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_5
    iget-object v2, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2f

    .line 100
    :try_start_8
    iget-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    .line 101
    iget-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_17

    .line 105
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    .line 107
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_2c

    .line 109
    :try_start_18
    iget-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    if-nez v0, :cond_2a

    .line 110
    sget-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v2, "Application appears to be in the foreground"

    invoke-interface {v0, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->notifyApplicationInForeground()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    .line 114
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_2f

    .line 115
    return-void

    .line 107
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0

    .line 114
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public activityStopped()V
    .registers 8

    .prologue
    .line 84
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_3
    iget-object v2, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_21

    .line 86
    :try_start_6
    iget-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    .line 87
    iget-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1b

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    .line 90
    :cond_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_6 .. :try_end_1c} :catchall_1e

    .line 91
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    .line 92
    return-void

    .line 90
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0

    .line 91
    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public addApplicationStateListener(Lcom/newrelic/agent/android/background/ApplicationStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/newrelic/agent/android/background/ApplicationStateListener;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 57
    :try_start_3
    iget-object v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public removeApplicationStateListener(Lcom/newrelic/agent/android/background/ApplicationStateListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/newrelic/agent/android/background/ApplicationStateListener;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 63
    :try_start_3
    iget-object v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    monitor-exit v1

    .line 65
    return-void

    .line 64
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public run()V
    .registers 7

    .prologue
    .line 69
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_3
    invoke-direct {p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getSnoozeTime()J

    move-result-wide v2

    iget v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activitySnoozeTimeInMilliseconds:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_20

    .line 71
    iget-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    if-eqz v0, :cond_20

    .line 72
    sget-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v2, "Application appears to have gone to the background"

    invoke-interface {v0, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->notifyApplicationInBackground()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    .line 77
    :cond_20
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method
