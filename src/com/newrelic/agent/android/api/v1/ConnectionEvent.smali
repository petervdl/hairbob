.class public final Lcom/newrelic/agent/android/api/v1/ConnectionEvent;
.super Ljava/util/EventObject;
.source "ConnectionEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/api/v1/ConnectionEvent;-><init>(Ljava/lang/Object;Lcom/newrelic/agent/android/api/common/ConnectionState;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/newrelic/agent/android/api/common/ConnectionState;)V
    .registers 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "connectionState"    # Lcom/newrelic/agent/android/api/common/ConnectionState;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 18
    iput-object p2, p0, Lcom/newrelic/agent/android/api/v1/ConnectionEvent;->connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;

    .line 19
    return-void
.end method


# virtual methods
.method public getConnectionState()Lcom/newrelic/agent/android/api/common/ConnectionState;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/newrelic/agent/android/api/v1/ConnectionEvent;->connectionState:Lcom/newrelic/agent/android/api/common/ConnectionState;

    return-object v0
.end method
