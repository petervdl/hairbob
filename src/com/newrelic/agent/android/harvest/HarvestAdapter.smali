.class public Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.super Ljava/lang/Object;
.source "HarvestAdapter.java"

# interfaces
.implements Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHarvest()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public onHarvestBefore()V
    .registers 1

    .prologue
    .line 15
    return-void
.end method

.method public onHarvestComplete()V
    .registers 1

    .prologue
    .line 35
    return-void
.end method

.method public onHarvestConnected()V
    .registers 1

    .prologue
    .line 39
    return-void
.end method

.method public onHarvestDisabled()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public onHarvestDisconnected()V
    .registers 1

    .prologue
    .line 43
    return-void
.end method

.method public onHarvestError()V
    .registers 1

    .prologue
    .line 27
    return-void
.end method

.method public onHarvestFinalize()V
    .registers 1

    .prologue
    .line 23
    return-void
.end method

.method public onHarvestSendFailed()V
    .registers 1

    .prologue
    .line 31
    return-void
.end method

.method public onHarvestStart()V
    .registers 1

    .prologue
    .line 7
    return-void
.end method

.method public onHarvestStop()V
    .registers 1

    .prologue
    .line 11
    return-void
.end method
