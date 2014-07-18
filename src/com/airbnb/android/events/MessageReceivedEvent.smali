.class public Lcom/airbnb/android/events/MessageReceivedEvent;
.super Ljava/lang/Object;
.source "MessageReceivedEvent.java"


# instance fields
.field public mMessage:Ljava/lang/String;

.field public mThreadId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4
    .param p1, "threadId"    # J
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/airbnb/android/events/MessageReceivedEvent;->mThreadId:J

    .line 10
    iput-object p3, p0, Lcom/airbnb/android/events/MessageReceivedEvent;->mMessage:Ljava/lang/String;

    .line 11
    return-void
.end method
