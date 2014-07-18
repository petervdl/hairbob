.class public Lcom/newrelic/agent/android/background/ApplicationStateEvent;
.super Ljava/util/EventObject;
.source "ApplicationStateEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 10
    return-void
.end method
