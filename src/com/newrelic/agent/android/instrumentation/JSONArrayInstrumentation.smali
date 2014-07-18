.class public Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;
.super Ljava/lang/Object;
.source "JSONArrayInstrumentation.java"


# static fields
.field private static final categoryParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "category"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "JSON"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->categoryParams:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 5
    .param p0, "json"    # Ljava/lang/String;
    .annotation build Lcom/newrelic/agent/android/instrumentation/TraceConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    const-string/jumbo v2, "JSONArray#<init>"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 25
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    .line 32
    return-object v1

    .line 27
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_11
    move-exception v0

    .line 28
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 29
    throw v0
.end method

.method public static toString(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "org.json.JSONArray"
    .end annotation

    .prologue
    .line 37
    const-string/jumbo v1, "JSONArray#toString"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 41
    return-object v0
.end method

.method public static toString(Lorg/json/JSONArray;I)Ljava/lang/String;
    .registers 6
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "indentFactor"    # I
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "org.json.JSONArray"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    const-string/jumbo v2, "JSONArray#toString"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 50
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_10

    .line 57
    return-object v1

    .line 52
    .end local v1    # "jsonString":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 53
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 54
    throw v0
.end method
