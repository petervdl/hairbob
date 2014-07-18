.class public Lcom/newrelic/agent/android/instrumentation/Bootstrap;
.super Ljava/lang/Object;
.source "Bootstrap.java"


# static fields
.field private static final CONF_NEW_RELIC_APPLICATION_NAME:Ljava/lang/String; = "new_relic_application_name"

.field public static final CONF_NEW_RELIC_APPLICATION_TOKEN:Ljava/lang/String; = "new_relic_application_token"

.field private static final CONF_NEW_RELIC_COLLECTOR:Ljava/lang/String; = "new_relic_collector"

.field private static final CONF_NEW_RELIC_ENABLE_LOCATION:Ljava/lang/String; = "new_relic_enable_location"

.field private static final CONF_NEW_RELIC_ENABLE_LOGGING:Ljava/lang/String; = "new_relic_enable_logging"

.field private static final CONF_NEW_RELIC_ENABLE_SSL:Ljava/lang/String; = "new_relic_enable_ssl"

.field private static final DEFAULT_COLLECTOR_ADDR:Ljava/lang/String; = "mobile-collector.newrelic.com"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static go(Landroid/content/Context;)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v10, "newrelic.properties"

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_d3

    move-result-object v7

    .line 42
    .local v7, "in":Ljava/io/InputStream;
    :try_start_b
    new-instance v9, Ljava/util/Properties;

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    .line 43
    .local v9, "properties":Ljava/util/Properties;
    invoke-virtual {v9, v7}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 45
    const-string/jumbo v0, "new_relic_enable_logging"

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->truthy(Ljava/lang/String;)Z

    move-result v8

    .line 46
    .local v8, "logging":Z
    if-nez v8, :cond_dd

    .line 47
    new-instance v0, Lcom/newrelic/agent/android/logging/NullAgentLog;

    invoke-direct {v0}, Lcom/newrelic/agent/android/logging/NullAgentLog;-><init>()V

    invoke-static {v0}, Lcom/newrelic/agent/android/logging/AgentLogManager;->setAgentLog(Lcom/newrelic/agent/android/logging/AgentLog;)V

    .line 52
    :goto_2b
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v10, "Trying to bootstrap New Relic"

    invoke-interface {v0, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "new_relic_collector"

    const-string/jumbo v10, "mobile-collector.newrelic.com"

    invoke-virtual {v9, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "collectorAddr":Ljava/lang/String;
    const-string/jumbo v0, "new_relic_application_token"

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "licenseKey":Ljava/lang/String;
    if-eqz v1, :cond_ec

    .line 57
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v10, "License key found! Starting the New Relic agent."

    invoke-interface {v0, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Collector host is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v0, "new_relic_enable_ssl"

    const-string/jumbo v10, "true"

    invoke-virtual {v9, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->truthy(Ljava/lang/String;)Z

    move-result v3

    .line 61
    .local v3, "ssl":Z
    const-string/jumbo v0, "new_relic_enable_location"

    const-string/jumbo v10, "false"

    invoke-virtual {v9, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->truthy(Ljava/lang/String;)Z

    move-result v4

    .line 62
    .local v4, "location":Z
    const-string/jumbo v0, "new_relic_application_name"

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "appName":Ljava/lang/String;
    if-eqz v3, :cond_96

    sget-object v0, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v10, "SSL enabled"

    invoke-interface {v0, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 66
    :cond_96
    if-eqz v5, :cond_b1

    sget-object v0, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "App name override: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :cond_b1
    move-object v0, p0

    .line 68
    invoke-static/range {v0 .. v5}, Lcom/newrelic/agent/android/AndroidAgentImpl;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    :try_end_b5
    .catchall {:try_start_b .. :try_end_b5} :catchall_e7

    .line 75
    .end local v3    # "ssl":Z
    .end local v4    # "location":Z
    .end local v5    # "appName":Ljava/lang/String;
    :goto_b5
    :try_start_b5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 81
    .end local v1    # "licenseKey":Ljava/lang/String;
    .end local v2    # "collectorAddr":Ljava/lang/String;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "logging":Z
    .end local v9    # "properties":Ljava/util/Properties;
    :goto_b8
    return-void

    .line 31
    :catch_b9
    move-exception v6

    .line 35
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;

    invoke-direct {v0}, Lcom/newrelic/agent/android/logging/AndroidAgentLog;-><init>()V

    invoke-static {v0}, Lcom/newrelic/agent/android/logging/AgentLogManager;->setAgentLog(Lcom/newrelic/agent/android/logging/AgentLog;)V

    .line 36
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v10, "Could not open assets/newrelic.properties! New Relic will not start."

    invoke-interface {v0, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/newrelic/agent/android/logging/NullAgentLog;

    invoke-direct {v0}, Lcom/newrelic/agent/android/logging/NullAgentLog;-><init>()V

    invoke-static {v0}, Lcom/newrelic/agent/android/logging/AgentLogManager;->setAgentLog(Lcom/newrelic/agent/android/logging/AgentLog;)V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_b5 .. :try_end_d2} :catch_d3

    goto :goto_b8

    .line 78
    .end local v6    # "e":Ljava/io/IOException;
    :catch_d3
    move-exception v6

    .line 79
    .local v6, "e":Ljava/lang/Throwable;
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v10, "Error occurred while starting the New Relic agent!"

    invoke-interface {v0, v10, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b8

    .line 49
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v8    # "logging":Z
    .restart local v9    # "properties":Ljava/util/Properties;
    :cond_dd
    :try_start_dd
    new-instance v0, Lcom/newrelic/agent/android/logging/AndroidAgentLog;

    invoke-direct {v0}, Lcom/newrelic/agent/android/logging/AndroidAgentLog;-><init>()V

    invoke-static {v0}, Lcom/newrelic/agent/android/logging/AgentLogManager;->setAgentLog(Lcom/newrelic/agent/android/logging/AgentLog;)V
    :try_end_e5
    .catchall {:try_start_dd .. :try_end_e5} :catchall_e7

    goto/16 :goto_2b

    .line 75
    .end local v8    # "logging":Z
    .end local v9    # "properties":Ljava/util/Properties;
    :catchall_e7
    move-exception v0

    :try_start_e8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e8 .. :try_end_ec} :catch_d3

    .line 71
    .restart local v1    # "licenseKey":Ljava/lang/String;
    .restart local v2    # "collectorAddr":Ljava/lang/String;
    .restart local v8    # "logging":Z
    .restart local v9    # "properties":Ljava/util/Properties;
    :cond_ec
    :try_start_ec
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/Bootstrap;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v10, "No licenase key found: New Relic will not start"

    invoke-interface {v0, v10}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V
    :try_end_f4
    .catchall {:try_start_ec .. :try_end_f4} :catchall_e7

    goto :goto_b5
.end method

.method private static truthy(Ljava/lang/String;)Z
    .registers 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string/jumbo v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method
