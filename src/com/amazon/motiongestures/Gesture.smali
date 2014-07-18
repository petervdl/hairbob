.class public Lcom/amazon/motiongestures/Gesture;
.super Ljava/lang/Object;
.source "Gesture.java"


# direct methods
.method public static getGestureFromId(I)Lcom/amazon/motiongestures/Gesture;
    .registers 3

    .prologue
    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Stub! You are bundling a stubbed jar in the apk! Please move it to the classpath instead."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
