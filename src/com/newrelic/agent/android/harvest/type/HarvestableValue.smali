.class public abstract Lcom/newrelic/agent/android/harvest/type/HarvestableValue;
.super Lcom/newrelic/agent/android/harvest/type/BaseHarvestable;
.source "HarvestableValue.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    sget-object v0, Lcom/newrelic/agent/android/harvest/type/Harvestable$Type;->VALUE:Lcom/newrelic/agent/android/harvest/type/Harvestable$Type;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/type/BaseHarvestable;-><init>(Lcom/newrelic/agent/android/harvest/type/Harvestable$Type;)V

    .line 12
    return-void
.end method


# virtual methods
.method public abstract asJsonPrimitive()Lcom/newrelic/com/google/gson/JsonPrimitive;
.end method
