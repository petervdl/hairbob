.class public interface abstract Lcom/newrelic/agent/android/AgentImpl;
.super Ljava/lang/Object;
.source "AgentImpl.java"


# virtual methods
.method public abstract addTransactionData(Lcom/newrelic/agent/android/api/common/TransactionData;)V
.end method

.method public abstract disable()V
.end method

.method public abstract getAndClearTransactionData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;
.end method

.method public abstract getCrossProcessId()Ljava/lang/String;
.end method

.method public abstract getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;
.end method

.method public abstract getEncoder()Lcom/newrelic/agent/android/util/Encoder;
.end method

.method public abstract getNetworkCarrier()Ljava/lang/String;
.end method

.method public abstract getResponseBodyLimit()I
.end method

.method public abstract getStackTraceLimit()I
.end method

.method public abstract isDisabled()Z
.end method

.method public abstract mergeTransactionData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setLocation(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
