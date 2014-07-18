.class public Lcom/airbnb/android/requests/groups/GetCommentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "GetCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/GetCommentRequest;",
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


# direct methods
.method private constructor <init>(ILjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 8
    .param p1, "commentId"    # I
    .param p2, "params"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/GetCommentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/GetCommentRequest;>;"
    const-string/jumbo v0, "groups/content/post-%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 26
    return-void
.end method

.method public static getCommentRequest(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/GetCommentRequest;
    .registers 5
    .param p0, "commentId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/GetCommentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/GetCommentRequest;"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/GetCommentRequest;>;"
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 19
    .local v0, "params":Ljava/util/Properties;
    const-string/jumbo v1, "membership_limit"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string/jumbo v1, "include_ancestors"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v1, Lcom/airbnb/android/requests/groups/GetCommentRequest;

    invoke-direct {v1, p0, v0, p1}, Lcom/airbnb/android/requests/groups/GetCommentRequest;-><init>(ILjava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    return-object v1
.end method

.method private getContentFromJSON()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetCommentRequest;->content:Lcom/airbnb/android/models/groups/Content;

    if-eqz v0, :cond_7

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetCommentRequest;->content:Lcom/airbnb/android/models/groups/Content;

    .line 46
    :goto_6
    return-object v0

    .line 43
    :cond_7
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetCommentRequest;->event:Lcom/airbnb/android/models/groups/Event;

    if-eqz v0, :cond_e

    .line 44
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetCommentRequest;->event:Lcom/airbnb/android/models/groups/Event;

    goto :goto_6

    .line 46
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getComment()Lcom/airbnb/android/models/groups/Comment;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetCommentRequest;->mComment:Lcom/airbnb/android/models/groups/Comment;

    return-object v0
.end method

.method public getContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetCommentRequest;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method public getGroup()Lcom/airbnb/android/models/groups/Group;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/GetCommentRequest;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method protected preProcess()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/airbnb/android/requests/groups/GetCommentRequest;->getContentFromJSON()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/requests/groups/GetCommentRequest;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 52
    return-void
.end method
