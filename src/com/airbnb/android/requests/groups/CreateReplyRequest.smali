.class public Lcom/airbnb/android/requests/groups/CreateReplyRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CreateReplyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/CreateReplyRequest;",
        ">;"
    }
.end annotation


# instance fields
.field content:Lcom/airbnb/android/models/groups/Content;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content"
    .end annotation
.end field

.field event:Lcom/airbnb/android/models/groups/Event;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "event"
    .end annotation
.end field

.field public isFollowing:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_following"
    .end annotation
.end field

.field mComment:Lcom/airbnb/android/models/groups/Comment;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "post"
    .end annotation
.end field

.field private mContent:Lcom/airbnb/android/models/groups/BaseContent;

.field mGroup:Lcom/airbnb/android/models/groups/Group;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation
.end field

.field public reply:Lcom/airbnb/android/models/groups/Reply;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reply"
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/models/groups/Reply;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 9
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .param p2, "reply"    # Lcom/airbnb/android/models/groups/Reply;
    .param p3, "params"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Comment;",
            "Lcom/airbnb/android/models/groups/Reply;",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/CreateReplyRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/CreateReplyRequest;>;"
    const-string/jumbo v0, "groups/content/post-%d/replies"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Comment;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 32
    invoke-direct {p0, p2}, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->asJSON(Lcom/airbnb/android/models/groups/Reply;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->setJsonPost(Ljava/lang/String;)V

    .line 33
    return-void

    .line 32
    :cond_28
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method private asJSON(Lcom/airbnb/android/models/groups/Reply;)Lorg/json/JSONObject;
    .registers 7
    .param p1, "reply"    # Lcom/airbnb/android/models/groups/Reply;

    .prologue
    .line 36
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .local v2, "wrapperObj":Lorg/json/JSONObject;
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v1, "replyObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "text"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Reply;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string/jumbo v3, "reply"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 44
    .end local v1    # "replyObj":Lorg/json/JSONObject;
    :goto_1a
    return-object v2

    .line 41
    :catch_1b
    move-exception v0

    .line 42
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a
.end method

.method private getContentFromJSON()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->content:Lcom/airbnb/android/models/groups/Content;

    if-eqz v0, :cond_7

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->content:Lcom/airbnb/android/models/groups/Content;

    .line 72
    :goto_6
    return-object v0

    .line 69
    :cond_7
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->event:Lcom/airbnb/android/models/groups/Event;

    if-eqz v0, :cond_e

    .line 70
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->event:Lcom/airbnb/android/models/groups/Event;

    goto :goto_6

    .line 72
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getCreateReplyRequest(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/models/groups/Reply;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/CreateReplyRequest;
    .registers 6
    .param p0, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .param p1, "reply"    # Lcom/airbnb/android/models/groups/Reply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Comment;",
            "Lcom/airbnb/android/models/groups/Reply;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/CreateReplyRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/CreateReplyRequest;"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/CreateReplyRequest;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 25
    .local v0, "params":Ljava/util/Properties;
    const-string/jumbo v1, "membership_limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string/jumbo v1, "include_ancestors"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v1, Lcom/airbnb/android/requests/groups/CreateReplyRequest;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/airbnb/android/requests/groups/CreateReplyRequest;-><init>(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/models/groups/Reply;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v1
.end method


# virtual methods
.method public getComment()Lcom/airbnb/android/models/groups/Comment;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->mComment:Lcom/airbnb/android/models/groups/Comment;

    return-object v0
.end method

.method public getContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method public getGroup()Lcom/airbnb/android/models/groups/Group;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method protected preProcess()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->getContentFromJSON()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/CreateReplyRequest;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 78
    return-void
.end method
