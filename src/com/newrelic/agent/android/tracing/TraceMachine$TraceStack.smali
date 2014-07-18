.class Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;
.super Ljava/util/Stack;
.source "TraceMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/tracing/TraceMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TraceStack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Stack",
        "<",
        "Lcom/newrelic/agent/android/tracing/Trace;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 550
    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newrelic/agent/android/tracing/TraceMachine$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/newrelic/agent/android/tracing/TraceMachine$1;

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;-><init>()V

    return-void
.end method
