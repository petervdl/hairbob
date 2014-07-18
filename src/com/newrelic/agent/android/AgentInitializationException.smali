.class public Lcom/newrelic/agent/android/AgentInitializationException;
.super Ljava/lang/Exception;
.source "AgentInitializationException.java"


# static fields
.field private static final serialVersionUID:J = 0x25d2a4cb5c3b10a3L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
