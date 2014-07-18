.class public Lcom/newrelic/agent/android/tracing/Sample;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "Sample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    }
.end annotation


# instance fields
.field private sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

.field private timestamp:J

.field private type:Lcom/newrelic/agent/android/tracing/Sample$SampleType;


# direct methods
.method public constructor <init>(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/tracing/Sample;->setTimestamp(J)V

    .line 24
    return-void
.end method

.method public constructor <init>(JLcom/newrelic/agent/android/tracing/SampleValue;)V
    .registers 4
    .param p1, "timestamp"    # J
    .param p3, "sampleValue"    # Lcom/newrelic/agent/android/tracing/SampleValue;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/agent/android/tracing/Sample;->setTimestamp(J)V

    .line 28
    invoke-virtual {p0, p3}, Lcom/newrelic/agent/android/tracing/Sample;->setSampleValue(Lcom/newrelic/agent/android/tracing/SampleValue;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V
    .registers 4
    .param p1, "type"    # Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/tracing/Sample;->setSampleType(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/tracing/Sample;->setTimestamp(J)V

    .line 20
    return-void
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .registers 5

    .prologue
    .line 69
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 71
    .local v0, "jsonArray":Lcom/newrelic/com/google/gson/JsonArray;
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v2, p0, Lcom/newrelic/agent/android/tracing/Sample;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 72
    new-instance v1, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/tracing/SampleValue;->getValue()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 74
    return-object v0
.end method

.method public getSampleType()Lcom/newrelic/agent/android/tracing/Sample$SampleType;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->type:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    return-object v0
.end method

.method public getSampleValue()Lcom/newrelic/agent/android/tracing/SampleValue;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    return-object v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->timestamp:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Number;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/SampleValue;->getValue()Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public setSampleType(Lcom/newrelic/agent/android/tracing/Sample$SampleType;)V
    .registers 2
    .param p1, "type"    # Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/newrelic/agent/android/tracing/Sample;->type:Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    .line 65
    return-void
.end method

.method public setSampleValue(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 48
    new-instance v0, Lcom/newrelic/agent/android/tracing/SampleValue;

    invoke-direct {v0, p1, p2}, Lcom/newrelic/agent/android/tracing/SampleValue;-><init>(D)V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    .line 49
    return-void
.end method

.method public setSampleValue(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 52
    new-instance v0, Lcom/newrelic/agent/android/tracing/SampleValue;

    invoke-direct {v0, p1, p2}, Lcom/newrelic/agent/android/tracing/SampleValue;-><init>(J)V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    .line 53
    return-void
.end method

.method public setSampleValue(Lcom/newrelic/agent/android/tracing/SampleValue;)V
    .registers 2
    .param p1, "sampleValue"    # Lcom/newrelic/agent/android/tracing/SampleValue;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/newrelic/agent/android/tracing/Sample;->sampleValue:Lcom/newrelic/agent/android/tracing/SampleValue;

    .line 45
    return-void
.end method

.method public setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/newrelic/agent/android/tracing/Sample;->timestamp:J

    .line 37
    return-void
.end method
