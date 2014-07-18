.class public Lcom/airbnb/android/requests/groups/CreateContentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CreateContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/CreateContentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field feedItem:Lcom/airbnb/android/models/groups/FeedItem;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "feed_item"
    .end annotation
.end field

.field public isFollowing:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_following"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Content;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "content"    # Lcom/airbnb/android/models/groups/Content;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Group;",
            "Lcom/airbnb/android/models/groups/Content;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/CreateContentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/CreateContentRequest;>;"
    const-string/jumbo v0, "groups/%d/contents"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 22
    invoke-direct {p0, p2}, Lcom/airbnb/android/requests/groups/CreateContentRequest;->asJSON(Lcom/airbnb/android/models/groups/Content;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/groups/CreateContentRequest;->setJsonPost(Ljava/lang/String;)V

    .line 23
    return-void

    .line 22
    :cond_28
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private asJSON(Lcom/airbnb/android/models/Photo;)Lorg/json/JSONObject;
    .registers 8
    .param p1, "photo"    # Lcom/airbnb/android/models/Photo;

    .prologue
    .line 50
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v2, "wrapperObj":Lorg/json/JSONObject;
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v1, "photoObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "id"

    invoke-virtual {p1}, Lcom/airbnb/android/models/Photo;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v3, "photo"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 58
    .end local v1    # "photoObj":Lorg/json/JSONObject;
    :goto_1a
    return-object v2

    .line 55
    :catch_1b
    move-exception v0

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a
.end method

.method private asJSON(Lcom/airbnb/android/models/groups/Content;)Lorg/json/JSONObject;
    .registers 11
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 26
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .local v6, "wrapperObj":Lorg/json/JSONObject;
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v0, "contentObj":Lorg/json/JSONObject;
    const-string/jumbo v7, "title"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->hasBody()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 31
    const-string/jumbo v7, "body"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_24
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->hasPhotos()Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 34
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v5, "photos":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->getPhotos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/Photo;

    .line 36
    .local v4, "photo":Lcom/airbnb/android/models/Photo;
    invoke-direct {p0, v4}, Lcom/airbnb/android/requests/groups/CreateContentRequest;->asJSON(Lcom/airbnb/android/models/Photo;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_4a} :catch_4b

    goto :goto_37

    .line 43
    .end local v0    # "contentObj":Lorg/json/JSONObject;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "photo":Lcom/airbnb/android/models/Photo;
    .end local v5    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :catch_4b
    move-exception v1

    .line 44
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 46
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_4f
    return-object v6

    .line 38
    .restart local v0    # "contentObj":Lorg/json/JSONObject;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :cond_50
    :try_start_50
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 39
    .local v3, "jsonPhotos":Lorg/json/JSONArray;
    const-string/jumbo v7, "pictures"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "jsonPhotos":Lorg/json/JSONArray;
    .end local v5    # "photos":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    :cond_5b
    const-string/jumbo v7, "content"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string/jumbo v7, "as_feed_item"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_68} :catch_4b

    goto :goto_4f
.end method


# virtual methods
.method public getContentAsFeedItem()Lcom/airbnb/android/models/groups/FeedItem;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateContentRequest;->feedItem:Lcom/airbnb/android/models/groups/FeedItem;

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public updateGroup(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;
    .registers 3
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/airbnb/android/requests/groups/CreateContentRequest;->isFollowing:Z

    if-eqz v0, :cond_8

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/android/models/groups/Group;->setHasFollows(Z)V

    .line 78
    :cond_8
    return-object p1
.end method
