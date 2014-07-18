.class public final Lcom/amazon/motiongestures/GestureEvent;
.super Ljava/lang/Object;
.source "GestureEvent.java"


# instance fields
.field public direction:I


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
