.class public Lcom/newrelic/agent/android/harvest/Harvester;
.super Ljava/lang/Object;
.source "Harvester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/harvest/Harvester$1;,
        Lcom/newrelic/agent/android/harvest/Harvester$State;
    }
.end annotation


# instance fields
.field private agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

.field private harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

.field private harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

.field private final harvestListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private state:Lcom/newrelic/agent/android/harvest/Harvester$State;

.field protected stateChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 44
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->UNINITIALIZED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    .line 54
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    return-void
.end method

.method private changeState(Lcom/newrelic/agent/android/harvest/Harvester$State;)V
    .registers 5
    .param p1, "newState"    # Lcom/newrelic/agent/android/harvest/Harvester$State;

    .prologue
    .line 363
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Harvester changing state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne v0, v1, :cond_33

    .line 366
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne p1, v0, :cond_39

    .line 367
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisconnected()V

    .line 372
    :cond_33
    :goto_33
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->stateChanged:Z

    .line 374
    return-void

    .line 368
    :cond_39
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne p1, v0, :cond_33

    .line 369
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisabled()V

    goto :goto_33
.end method

.method private configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .registers 4
    .param p1, "harvestConfiguration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->reconfigure(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 357
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setDataToken(Lcom/newrelic/agent/android/harvest/DataToken;)V

    .line 358
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->setHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 359
    return-void
.end method

.method private fireOnHarvest()V
    .registers 6

    .prologue
    .line 564
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 565
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvest()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 567
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvest"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 569
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 571
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestBefore()V
    .registers 6

    .prologue
    .line 528
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 529
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestBefore()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 531
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 532
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestBefore"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 533
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestComplete()V
    .registers 6

    .prologue
    .line 636
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 637
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestComplete()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 639
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestComplete"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 643
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestConnected()V
    .registers 6

    .prologue
    .line 648
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 649
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestConnected()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 651
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestConnected"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 655
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestDisabled()V
    .registers 6

    .prologue
    .line 588
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 589
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestDisabled()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 591
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestDisabled"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 593
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 595
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestDisconnected()V
    .registers 6

    .prologue
    .line 600
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 601
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestDisconnected()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 603
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 604
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestDisconnected"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 605
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestError()V
    .registers 6

    .prologue
    .line 612
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 613
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestError()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 615
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestError"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 617
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 619
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestFinalize()V
    .registers 6

    .prologue
    .line 576
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 577
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestFinalize()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 579
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestFinalize"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 581
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 583
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestSendFailed()V
    .registers 6

    .prologue
    .line 624
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 625
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestSendFailed()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 627
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestSendFailed"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 629
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 631
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestStart()V
    .registers 6

    .prologue
    .line 540
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 541
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestStart()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 543
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestStart"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 545
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 547
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private fireOnHarvestStop()V
    .registers 6

    .prologue
    .line 552
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 553
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestStop()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_8

    .line 555
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_18
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Error in fireOnHarvestStop"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 557
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 559
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_24
    return-void
.end method

.method private getHarvestListeners()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 662
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private parseHarvesterConfiguration(Lcom/newrelic/agent/android/harvest/HarvestResponse;)Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .registers 10
    .param p1, "response"    # Lcom/newrelic/agent/android/harvest/HarvestResponse;

    .prologue
    .line 342
    new-instance v4, Lcom/newrelic/com/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/GsonBuilder;-><init>()V

    .line 343
    .local v4, "gsonBuilder":Lcom/newrelic/com/google/gson/GsonBuilder;
    const-class v5, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    new-instance v6, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;

    invoke-direct {v6}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/newrelic/com/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/newrelic/com/google/gson/GsonBuilder;

    .line 344
    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/GsonBuilder;->create()Lcom/newrelic/com/google/gson/Gson;

    move-result-object v3

    .line 345
    .local v3, "gson":Lcom/newrelic/com/google/gson/Gson;
    const/4 v1, 0x0

    .line 347
    .local v1, "config":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    :try_start_14
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v3, v5, v6}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-object v1, v0
    :try_end_22
    .catch Lcom/newrelic/com/google/gson/JsonSyntaxException; {:try_start_14 .. :try_end_22} :catch_23

    .line 352
    :goto_22
    return-object v1

    .line 348
    :catch_23
    move-exception v2

    .line 349
    .local v2, "e":Lcom/newrelic/com/google/gson/JsonSyntaxException;
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to parse collector configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 350
    invoke-static {v2}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_22
.end method

.method private varargs stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z
    .registers 8
    .param p1, "testState"    # Lcom/newrelic/agent/android/harvest/Harvester$State;
    .param p2, "legalStates"    # [Lcom/newrelic/agent/android/harvest/Harvester$State;

    .prologue
    .line 378
    move-object v0, p2

    .local v0, "arr$":[Lcom/newrelic/agent/android/harvest/Harvester$State;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 379
    .local v3, "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    if-ne p1, v3, :cond_b

    .line 380
    const/4 v4, 0x1

    .line 381
    .end local v3    # "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    :goto_a
    return v4

    .line 378
    .restart local v3    # "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 381
    .end local v3    # "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method


# virtual methods
.method public addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .registers 4
    .param p1, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 403
    if-nez p1, :cond_13

    .line 404
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v1, "Can\'t add null harvest listener"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 414
    :goto_12
    return-void

    .line 409
    :cond_13
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 410
    :try_start_16
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 411
    monitor-exit v1

    goto :goto_12

    .line 413
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_20

    throw v0

    .line 412
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 413
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_20

    goto :goto_12
.end method

.method protected connected()V
    .registers 7

    .prologue
    .line 173
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Harvester: connected"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Harvester: Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " HTTP transactions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Harvester: Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HttpErrors;->count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " HTTP errors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Harvester: Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " activity traces."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->sendData(Lcom/newrelic/agent/android/harvest/type/Harvestable;)Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v1

    .line 181
    .local v1, "response":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    if-eqz v1, :cond_96

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 182
    :cond_96
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestSendFailed()V

    .line 232
    :goto_99
    return-void

    .line 186
    :cond_9a
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->reset()V

    .line 188
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string/jumbo v3, "Supportability/AgentHealth/Collector/Harvest"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    .line 190
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Harvest data response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Harvest data response status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Harvest data response body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isError()Z

    move-result v2

    if-eqz v2, :cond_164

    .line 195
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestError()V

    .line 197
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code:[I

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_17c

    .line 217
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "An unknown error occurred when connecting to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_99

    .line 200
    :pswitch_126
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/DataToken;->clear()V

    .line 201
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_99

    .line 204
    :pswitch_136
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isDisableCommand()Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 205
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Collector has commanded Agent to disable."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 206
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_99

    .line 209
    :cond_14b
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Unexpected Collector response: FORBIDDEN"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 210
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_99

    .line 214
    :pswitch_15a
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Invalid ConnectionInformation was sent to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_99

    .line 222
    :cond_164
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->parseHarvesterConfiguration(Lcom/newrelic/agent/android/harvest/HarvestResponse;)Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    .line 223
    .local v0, "configuration":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    if-nez v0, :cond_174

    .line 224
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Unable to configure Harvester using Collector configuration."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_99

    .line 228
    :cond_174
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 231
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestComplete()V

    goto/16 :goto_99

    .line 197
    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_126
        :pswitch_126
        :pswitch_136
        :pswitch_15a
        :pswitch_15a
    .end packed-switch
.end method

.method protected disabled()V
    .registers 1

    .prologue
    .line 240
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->stop()V

    .line 241
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisabled()V

    .line 242
    return-void
.end method

.method protected disconnected()V
    .registers 7

    .prologue
    .line 97
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/DataToken;->isValid()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 98
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skipping connect call, saved state is available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestConnected()V

    .line 100
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    .line 164
    :goto_33
    return-void

    .line 104
    :cond_34
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Connecting, saved state is not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 107
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->sendConnect()Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v1

    .line 110
    .local v1, "response":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    if-nez v1, :cond_64

    .line 111
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Unable to connect to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_33

    .line 116
    :cond_64
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 117
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->parseHarvesterConfiguration(Lcom/newrelic/agent/android/harvest/HarvestResponse;)Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    .line 118
    .local v0, "configuration":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    if-nez v0, :cond_79

    .line 119
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Unable to configure Harvester using Collector configuration."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_33

    .line 123
    :cond_79
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 124
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string/jumbo v3, "Supportability/AgentHealth/Collector/Harvest"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    .line 125
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestConnected()V

    .line 128
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    .line 129
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->execute()V

    goto :goto_33

    .line 133
    .end local v0    # "configuration":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    :cond_96
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Harvest connect response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 136
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code:[I

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_108

    .line 158
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "An unknown error occurred when connecting to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 161
    :goto_ca
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestError()V

    goto/16 :goto_33

    .line 141
    :pswitch_cf
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/DataToken;->clear()V

    .line 142
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisconnected()V

    goto/16 :goto_33

    .line 145
    :pswitch_dd
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isDisableCommand()Z

    move-result v2

    if-eqz v2, :cond_f5

    .line 146
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Collector has commanded Agent to disable."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisabled()V

    .line 148
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_33

    .line 151
    :cond_f5
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Unexpected Collector response: FORBIDDEN"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_ca

    .line 155
    :pswitch_fe
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v3, "Invalid ConnectionInformation was sent to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_ca

    .line 136
    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_cf
        :pswitch_cf
        :pswitch_dd
        :pswitch_fe
        :pswitch_fe
    .end packed-switch
.end method

.method protected execute()V
    .registers 5

    .prologue
    .line 250
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Harvester state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->stateChanged:Z

    .line 255
    :try_start_1e
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHarvestData()V

    .line 257
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$Harvester$State:[I

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvester$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_60

    .line 278
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_34

    .line 280
    :catch_34
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v2, "Exception encountered while attempting to harvest"

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 284
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_40
    return-void

    .line 259
    :pswitch_41
    :try_start_41
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->uninitialized()V

    goto :goto_40

    .line 262
    :pswitch_45
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestBefore()V

    .line 263
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->disconnected()V

    goto :goto_40

    .line 266
    :pswitch_4c
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestBefore()V

    .line 267
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvest()V

    .line 268
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestFinalize()V

    .line 270
    invoke-static {}, Lcom/newrelic/agent/android/TaskQueue;->synchronousDequeue()V

    .line 272
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->connected()V

    goto :goto_40

    .line 275
    :pswitch_5c
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->disabled()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_5f} :catch_34

    goto :goto_40

    .line 257
    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_41
        :pswitch_45
        :pswitch_4c
        :pswitch_5c
    .end packed-switch
.end method

.method public expireActivityTraces()V
    .registers 11

    .prologue
    .line 481
    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v5

    .line 485
    .local v5, "traces":Lcom/newrelic/agent/android/harvest/ActivityTraces;
    monitor-enter v5

    .line 486
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v0, "expiredTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/ActivityTrace;>;"
    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_max_report_attempts()I

    move-result v6

    int-to-long v2, v6

    .line 490
    .local v2, "maxAttempts":J
    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->getActivityTraces()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 491
    .local v4, "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getReportAttemptCount()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_1b

    .line 492
    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ActivityTrace has had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getReportAttemptCount()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " report attempts, purging: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 494
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 502
    .end local v0    # "expiredTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/ActivityTrace;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "maxAttempts":J
    .end local v4    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :catchall_5b
    move-exception v6

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_7 .. :try_end_5d} :catchall_5b

    throw v6

    .line 499
    .restart local v0    # "expiredTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/ActivityTrace;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "maxAttempts":J
    :cond_5e
    :try_start_5e
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 500
    .restart local v4    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    invoke-virtual {v5, v4}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->remove(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_62

    .line 502
    .end local v4    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :cond_72
    monitor-exit v5
    :try_end_73
    .catchall {:try_start_5e .. :try_end_73} :catchall_5b

    .line 503
    return-void
.end method

.method public expireHarvestData()V
    .registers 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpErrors()V

    .line 426
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpTransactions()V

    .line 427
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireActivityTraces()V

    .line 428
    return-void
.end method

.method public expireHttpErrors()V
    .registers 13

    .prologue
    .line 431
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;

    move-result-object v1

    .line 435
    .local v1, "errors":Lcom/newrelic/agent/android/harvest/HttpErrors;
    monitor-enter v1

    .line 436
    :try_start_7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v7, "oldErrors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpError;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 438
    .local v5, "now":J
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReportMaxTransactionAgeMilliseconds()J

    move-result-wide v3

    .line 441
    .local v3, "maxAge":J
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpErrors;->getHttpErrors()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 442
    .local v0, "error":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpError;->getTimestamp()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v10, v5, v3

    cmp-long v8, v8, v10

    if-gez v8, :cond_1e

    .line 443
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HttpError too old, purging: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 444
    invoke-interface {v7, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 452
    .end local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "maxAge":J
    .end local v5    # "now":J
    .end local v7    # "oldErrors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpError;>;"
    :catchall_55
    move-exception v8

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_55

    throw v8

    .line 449
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "maxAge":J
    .restart local v5    # "now":J
    .restart local v7    # "oldErrors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpError;>;"
    :cond_58
    :try_start_58
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 450
    .restart local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {v1, v0}, Lcom/newrelic/agent/android/harvest/HttpErrors;->removeHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V

    goto :goto_5c

    .line 452
    .end local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    :cond_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_58 .. :try_end_6d} :catchall_55

    .line 453
    return-void
.end method

.method public expireHttpTransactions()V
    .registers 13

    .prologue
    .line 456
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;

    move-result-object v6

    .line 460
    .local v6, "transactions":Lcom/newrelic/agent/android/harvest/HttpTransactions;
    monitor-enter v6

    .line 461
    :try_start_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v5, "oldTransactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpTransaction;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 463
    .local v3, "now":J
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReportMaxTransactionAgeMilliseconds()J

    move-result-wide v1

    .line 466
    .local v1, "maxAge":J
    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->getHttpTransactions()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .line 467
    .local v7, "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getTimestamp()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v10, v3, v1

    cmp-long v8, v8, v10

    if-gez v8, :cond_1e

    .line 468
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HttpTransaction too old, purging: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 469
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 477
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "maxAge":J
    .end local v3    # "now":J
    .end local v5    # "oldTransactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpTransaction;>;"
    .end local v7    # "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    :catchall_55
    move-exception v8

    monitor-exit v6
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_55

    throw v8

    .line 474
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "maxAge":J
    .restart local v3    # "now":J
    .restart local v5    # "oldTransactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpTransaction;>;"
    :cond_58
    :try_start_58
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .line 475
    .restart local v7    # "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->remove(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_5c

    .line 477
    .end local v7    # "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    :cond_6c
    monitor-exit v6
    :try_end_6d
    .catchall {:try_start_58 .. :try_end_6d} :catchall_55

    .line 478
    return-void
.end method

.method public getCurrentState()Lcom/newrelic/agent/android/harvest/Harvester$State;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    return-object v0
.end method

.method public getHarvestConnection()Lcom/newrelic/agent/android/harvest/HarvestConnection;
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    return-object v0
.end method

.method public getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    return-object v0
.end method

.method public isDisabled()Z
    .registers 3

    .prologue
    .line 399
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .registers 4
    .param p1, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 417
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 418
    :try_start_3
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 419
    monitor-exit v1

    .line 422
    :goto_c
    return-void

    .line 420
    :cond_d
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 421
    monitor-exit v1

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public setAgentConfiguration(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .registers 2
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 507
    return-void
.end method

.method public setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .registers 2
    .param p1, "configuration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 658
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 659
    return-void
.end method

.method public setHarvestConnection(Lcom/newrelic/agent/android/harvest/HarvestConnection;)V
    .registers 2
    .param p1, "connection"    # Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 511
    return-void
.end method

.method public setHarvestData(Lcom/newrelic/agent/android/harvest/HarvestData;)V
    .registers 2
    .param p1, "harvestData"    # Lcom/newrelic/agent/android/harvest/HarvestData;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    .line 519
    return-void
.end method

.method public start()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestStart()V

    .line 61
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestStop()V

    .line 65
    return-void
.end method

.method protected transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V
    .registers 8
    .param p1, "newState"    # Lcom/newrelic/agent/android/harvest/Harvester$State;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    iget-boolean v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->stateChanged:Z

    if-eqz v0, :cond_22

    .line 307
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ignoring multiple transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 333
    :cond_21
    :goto_21
    return-void

    .line 312
    :cond_22
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-eq v0, p1, :cond_21

    .line 315
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$Harvester$State:[I

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/Harvester$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8a

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 317
    :pswitch_39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v5

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 332
    :cond_50
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/harvest/Harvester;->changeState(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto :goto_21

    .line 319
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 321
    :pswitch_5a
    new-array v0, v5, [Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->UNINITIALIZED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 325
    :pswitch_74
    new-array v0, v4, [Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v3

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 327
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 315
    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_39
        :pswitch_5a
        :pswitch_74
    .end packed-switch
.end method

.method protected uninitialized()V
    .registers 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    if-nez v0, :cond_d

    .line 74
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v1, "Agent configuration unavailable."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 87
    :goto_c
    return-void

    .line 79
    :cond_d
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    new-instance v1, Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    .line 80
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCollectorHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setCollectorHost(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->useSsl(Z)V

    .line 85
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    .line 86
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->execute()V

    goto :goto_c
.end method
