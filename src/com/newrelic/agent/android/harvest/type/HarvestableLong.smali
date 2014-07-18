.class public Lcom/newrelic/agent/android/harvest/type/HarvestableLong;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableValue;
.source "HarvestableLong.java"


# instance fields
.field private value:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableValue;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .param p1, "value"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableLong;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/type/HarvestableLong;->value:J

    .line 19
    return-void
.end method


# virtual methods
.method public asJsonPrimitive()Lcom/newrelic/com/google/gson/JsonPrimitive;
    .registers 4

    .prologue
    .line 27
    new-instance v0, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v1, p0, Lcom/newrelic/agent/android/harvest/type/HarvestableLong;->value:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method
