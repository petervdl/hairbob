.class public final Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;
.super Ljava/util/EventObject;
.source "StreamCompleteEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:J

.field private final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "bytes"    # J

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;-><init>(Ljava/lang/Object;JLjava/lang/Exception;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JLjava/lang/Exception;)V
    .registers 5
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "bytes"    # J
    .param p4, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 13
    iput-wide p2, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->bytes:J

    .line 14
    iput-object p4, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->exception:Ljava/lang/Exception;

    .line 15
    return-void
.end method


# virtual methods
.method public getBytes()J
    .registers 3

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->bytes:J

    return-wide v0
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public isError()Z
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
