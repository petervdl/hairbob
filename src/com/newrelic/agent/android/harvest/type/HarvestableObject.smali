.class public abstract Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.super Lcom/newrelic/agent/android/harvest/type/BaseHarvestable;
.source "HarvestableObject.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    sget-object v0, Lcom/newrelic/agent/android/harvest/type/Harvestable$Type;->OBJECT:Lcom/newrelic/agent/android/harvest/type/Harvestable$Type;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/type/BaseHarvestable;-><init>(Lcom/newrelic/agent/android/harvest/type/Harvestable$Type;)V

    .line 29
    return-void
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/newrelic/agent/android/harvest/type/HarvestableObject;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/newrelic/agent/android/harvest/type/HarvestableObject$1;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject$1;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public abstract asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
.end method
