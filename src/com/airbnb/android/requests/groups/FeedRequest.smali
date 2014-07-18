.class public Lcom/airbnb/android/requests/groups/FeedRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "FeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/requests/groups/FeedRequest$1;,
        Lcom/airbnb/android/requests/groups/FeedRequest$FeedItemWrapper;,
        Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/FeedRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            ">;"
        }
    .end annotation
.end field

.field feed:Ljava/util/List;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "feed"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/requests/groups/FeedRequest$FeedItemWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "groupId"    # I
    .param p2, "params"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/FeedRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/FeedRequest;>;"
    const-string/jumbo v0, "groups/%d/feed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 30
    return-void
.end method

.method private static getParameters(ILcom/airbnb/android/requests/groups/FeedRequest$FeedType;)Ljava/util/Properties;
    .registers 6
    .param p0, "offset"    # I
    .param p1, "feedType"    # Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .prologue
    const/4 v3, 0x1

    .line 33
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 34
    .local v0, "props":Ljava/util/Properties;
    const-string/jumbo v1, "offset"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v1, "minimal"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/airbnb/android/requests/groups/FeedRequest$1;->$SwitchMap$com$airbnb$android$requests$groups$FeedRequest$FeedType:[I

    invoke-virtual {p1}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 47
    :goto_25
    :pswitch_25
    return-object v0

    .line 41
    :pswitch_26
    const-string/jumbo v1, "popular"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 44
    :pswitch_31
    const-string/jumbo v1, "mine"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 36
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_25
        :pswitch_26
        :pswitch_31
    .end packed-switch
.end method

.method public static nextPageFeedRequest(IILcom/airbnb/android/requests/groups/FeedRequest$FeedType;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/FeedRequest;
    .registers 6
    .param p0, "groupId"    # I
    .param p1, "numItems"    # I
    .param p2, "feedType"    # Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/FeedRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/FeedRequest;"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/FeedRequest;>;"
    invoke-static {p1, p2}, Lcom/airbnb/android/requests/groups/FeedRequest;->getParameters(ILcom/airbnb/android/requests/groups/FeedRequest$FeedType;)Ljava/util/Properties;

    move-result-object v0

    .line 25
    .local v0, "params":Ljava/util/Properties;
    new-instance v1, Lcom/airbnb/android/requests/groups/FeedRequest;

    invoke-direct {v1, p0, v0, p3}, Lcom/airbnb/android/requests/groups/FeedRequest;-><init>(ILjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v1
.end method


# virtual methods
.method protected preProcess()V
    .registers 5

    .prologue
    .line 58
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/requests/groups/FeedRequest;->contentList:Ljava/util/List;

    .line 59
    iget-object v3, p0, Lcom/airbnb/android/requests/groups/FeedRequest;->feed:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/requests/groups/FeedRequest$FeedItemWrapper;

    .line 60
    .local v2, "wrapper":Lcom/airbnb/android/requests/groups/FeedRequest$FeedItemWrapper;
    iget-object v3, v2, Lcom/airbnb/android/requests/groups/FeedRequest$FeedItemWrapper;->feedItem:Lcom/airbnb/android/models/groups/FeedItem;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/FeedItem;->getActualContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v0

    .line 61
    .local v0, "content":Lcom/airbnb/android/models/groups/BaseContent;
    iget-object v3, p0, Lcom/airbnb/android/requests/groups/FeedRequest;->contentList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 63
    .end local v0    # "content":Lcom/airbnb/android/models/groups/BaseContent;
    .end local v2    # "wrapper":Lcom/airbnb/android/requests/groups/FeedRequest$FeedItemWrapper;
    :cond_25
    return-void
.end method
