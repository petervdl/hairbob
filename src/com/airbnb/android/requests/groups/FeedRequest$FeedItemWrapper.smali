.class Lcom/airbnb/android/requests/groups/FeedRequest$FeedItemWrapper;
.super Ljava/lang/Object;
.source "FeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/groups/FeedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FeedItemWrapper"
.end annotation


# instance fields
.field public feedItem:Lcom/airbnb/android/models/groups/FeedItem;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "feed_item"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
