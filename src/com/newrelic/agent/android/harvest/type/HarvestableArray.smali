.class public abstract Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.super Lcom/newrelic/agent/android/harvest/type/BaseHarvestable;
.source "HarvestableArray.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    sget-object v0, Lcom/newrelic/agent/android/harvest/type/Harvestable$Type;->ARRAY:Lcom/newrelic/agent/android/harvest/type/Harvestable$Type;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/type/BaseHarvestable;-><init>(Lcom/newrelic/agent/android/harvest/type/Harvestable$Type;)V

    .line 15
    return-void
.end method


# virtual methods
.method public abstract asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
.end method
