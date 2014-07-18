.class public Lcom/airbnb/android/requests/MessageRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "MessageRequest.java"

# interfaces
.implements Lcom/airbnb/android/requests/AirRequestFactory$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/MessageRequest;",
        ">;",
        "Lcom/airbnb/android/requests/AirRequestFactory$Provider",
        "<",
        "Lcom/airbnb/android/models/MessageThread;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_RETRIEVE:I = 0x14


# instance fields
.field public messageThread:Lcom/airbnb/android/models/MessageThread;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thread"
    .end annotation
.end field

.field public messageThreads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/MessageThread;",
            ">;"
        }
    .end annotation
.end field

.field private offset:Z

.field public thread_count:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "thread_count"
    .end annotation
.end field

.field private unprocessedMessageThreads:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "threads"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIZLcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "start"    # I
    .param p2, "count"    # I
    .param p3, "isHistory"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/MessageRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/MessageRequest;>;"
    const-string/jumbo v0, "threads"

    invoke-static {p1, p2, p3}, Lcom/airbnb/android/requests/MessageRequest;->makeProperties(IIZ)Ljava/util/Properties;

    move-result-object v1

    invoke-direct {p0, v0, v1, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 29
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->CACHE_IF_NETWORK_FAILS:Lcom/android/volley/Request$ReturnStrategy;

    iput-object v0, p0, Lcom/airbnb/android/requests/MessageRequest;->mReturnStrategy:Lcom/android/volley/Request$ReturnStrategy;

    .line 30
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lcom/airbnb/android/requests/MessageRequest;->offset:Z

    .line 31
    return-void

    .line 30
    :cond_14
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public constructor <init>(JLcom/airbnb/android/requests/RequestListener;)V
    .registers 6
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/MessageRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/MessageRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "threads/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 43
    return-void
.end method

.method public static makeProperties(IIZ)Ljava/util/Properties;
    .registers 6
    .param p0, "start"    # I
    .param p1, "count"    # I
    .param p2, "isHistory"    # Z

    .prologue
    .line 62
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 63
    .local v0, "props":Ljava/util/Properties;
    const-string/jumbo v1, "offset"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v1, "items_per_page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string/jumbo v2, "role"

    if-eqz p2, :cond_25

    const-string/jumbo v1, "host"

    :goto_21
    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-object v0

    .line 65
    :cond_25
    const-string/jumbo v1, "guest"

    goto :goto_21
.end method


# virtual methods
.method public isPermaCache()Z
    .registers 2

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/airbnb/android/requests/MessageRequest;->offset:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected preProcess()V
    .registers 5

    .prologue
    .line 53
    iget-object v2, p0, Lcom/airbnb/android/requests/MessageRequest;->unprocessedMessageThreads:Ljava/util/List;

    if-eqz v2, :cond_27

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/requests/MessageRequest;->messageThreads:Ljava/util/List;

    .line 55
    iget-object v2, p0, Lcom/airbnb/android/requests/MessageRequest;->unprocessedMessageThreads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;

    .line 56
    .local v1, "item":Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;
    iget-object v2, p0, Lcom/airbnb/android/requests/MessageRequest;->messageThreads:Ljava/util/List;

    # getter for: Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;->thread:Lcom/airbnb/android/models/MessageThread;
    invoke-static {v1}, Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;->access$000(Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;)Lcom/airbnb/android/models/MessageThread;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 59
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/airbnb/android/requests/MessageRequest$MessageThreadItem;
    :cond_27
    return-void
.end method

.method public bridge synthetic provide()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/airbnb/android/requests/MessageRequest;->provide()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public provide()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/MessageThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/requests/MessageRequest;->messageThreads:Ljava/util/List;

    return-object v0
.end method
