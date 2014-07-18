.class public Lcom/yozio/android/async/GetConfigsTask;
.super Ljava/lang/Object;
.source "GetConfigsTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 14
    invoke-static {}, Lcom/yozio/android/helpers/Api;->getInstance()Lcom/yozio/android/helpers/Api;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yozio/android/helpers/Api;->getConfigs()Ljava/util/HashMap;

    move-result-object v0

    .line 15
    .local v0, "configs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/yozio/android/helpers/Configs;->getInstance()Lcom/yozio/android/helpers/Configs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yozio/android/helpers/Configs;->handleRemoteConfigs(Ljava/util/HashMap;)V

    .line 16
    return-void
.end method
