.class public Lcom/newrelic/agent/android/harvest/ConnectInformation;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "ConnectInformation.java"


# instance fields
.field private applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

.field private deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 15
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->setApplicationInformation(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V

    .line 16
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->setDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    .line 17
    return-void
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 3

    .prologue
    .line 21
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 23
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->notNull(Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 26
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->notNull(Ljava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 29
    return-object v0
.end method

.method public setApplicationInformation(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V
    .registers 2
    .param p1, "applicationInformation"    # Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->applicationInformation:Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    .line 34
    return-void
.end method

.method public setDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V
    .registers 2
    .param p1, "deviceInformation"    # Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ConnectInformation;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 38
    return-void
.end method
