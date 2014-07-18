.class Lcom/airbnb/android/models/groups/Comment$RepliesWrapper;
.super Ljava/lang/Object;
.source "Comment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RepliesWrapper"
.end annotation


# instance fields
.field public reply:Lcom/airbnb/android/models/groups/Reply;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reply"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
