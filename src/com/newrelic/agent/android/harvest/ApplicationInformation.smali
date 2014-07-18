.class public Lcom/newrelic/agent/android/harvest/ApplicationInformation;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "ApplicationInformation.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private packageId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "packageId"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 4

    .prologue
    .line 29
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 31
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->notEmpty(Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 33
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->notEmpty(Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 35
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->notEmpty(Ljava/lang/String;)V

    .line 36
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 38
    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .registers 2
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->appVersion:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setPackageId(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageId"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->packageId:Ljava/lang/String;

    .line 55
    return-void
.end method
