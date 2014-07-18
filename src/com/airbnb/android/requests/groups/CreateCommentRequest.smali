.class public Lcom/airbnb/android/requests/groups/CreateCommentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CreateCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/CreateCommentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public comment:Lcom/airbnb/android/models/groups/Comment;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "post"
    .end annotation
.end field

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

.field isFollowing:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_following"
    .end annotation
.end field

.field private mContent:Lcom/airbnb/android/models/groups/BaseContent;

.field mGroup:Lcom/airbnb/android/models/groups/Group;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/models/groups/Comment;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p2, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .param p3, "params"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Lcom/airbnb/android/models/groups/Comment;",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/CreateCommentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p4, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/CreateCommentRequest;>;"
    invoke-static {p1}, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->getPath(Lcom/airbnb/android/models/groups/BaseContent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 29
    invoke-direct {p0, p2}, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->asJSON(Lcom/airbnb/android/models/groups/Comment;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_17

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->setJsonPost(Ljava/lang/String;)V

    .line 30
    return-void

    .line 29
    :cond_17
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method private asJSON(Lcom/airbnb/android/models/groups/Comment;)Lorg/json/JSONObject;
    .registers 7
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 39
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .local v2, "wrapperObj":Lorg/json/JSONObject;
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v0, "commentObj":Lorg/json/JSONObject;
    const-string/jumbo v3, "text"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Comment;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string/jumbo v3, "post"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1b

    .line 47
    .end local v0    # "commentObj":Lorg/json/JSONObject;
    :goto_1a
    return-object v2

    .line 44
    :catch_1b
    move-exception v1

    .line 45
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a
.end method

.method private getContentFromJSON()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->content:Lcom/airbnb/android/models/groups/Content;

    if-eqz v0, :cond_7

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->content:Lcom/airbnb/android/models/groups/Content;

    .line 73
    :goto_6
    return-object v0

    .line 70
    :cond_7
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->event:Lcom/airbnb/android/models/groups/Event;

    if-eqz v0, :cond_e

    .line 71
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->event:Lcom/airbnb/android/models/groups/Event;

    goto :goto_6

    .line 73
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static getCreateCommentRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/CreateCommentRequest;
    .registers 6
    .param p0, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Lcom/airbnb/android/models/groups/Comment;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/CreateCommentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/CreateCommentRequest;"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/CreateCommentRequest;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 22
    .local v0, "params":Ljava/util/Properties;
    const-string/jumbo v1, "membership_limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string/jumbo v1, "include_ancestors"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v1, Lcom/airbnb/android/requests/groups/CreateCommentRequest;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/airbnb/android/requests/groups/CreateCommentRequest;-><init>(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/models/groups/Comment;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v1
.end method

.method private static getPath(Lcom/airbnb/android/models/groups/BaseContent;)Ljava/lang/String;
    .registers 4
    .param p0, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 33
    new-instance v0, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;

    invoke-direct {v0}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;-><init>()V

    .line 34
    .local v0, "visitor":Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;->getRootPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "posts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getComment()Lcom/airbnb/android/models/groups/Comment;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->comment:Lcom/airbnb/android/models/groups/Comment;

    return-object v0
.end method

.method public getContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method public getGroup()Lcom/airbnb/android/models/groups/Group;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method public getMethod()I
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method protected preProcess()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->getContentFromJSON()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/CreateCommentRequest;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 79
    return-void
.end method
