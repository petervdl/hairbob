.class public Lcom/airbnb/android/requests/groups/LikeCommentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "LikeCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/LikeCommentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field like:Lcom/airbnb/android/models/groups/Like;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "like"
    .end annotation
.end field

.field private mIsCreating:Z


# direct methods
.method private constructor <init>(Lcom/airbnb/android/models/groups/Comment;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .param p2, "isCreating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Comment;",
            "Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/LikeCommentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/LikeCommentRequest;>;"
    invoke-static {p1, p2}, Lcom/airbnb/android/requests/groups/LikeCommentRequest;->getPath(Lcom/airbnb/android/models/groups/Comment;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 23
    iput-boolean p2, p0, Lcom/airbnb/android/requests/groups/LikeCommentRequest;->mIsCreating:Z

    .line 24
    return-void
.end method

.method public static createRequest(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/LikeCommentRequest;
    .registers 4
    .param p0, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Comment;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/LikeCommentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/LikeCommentRequest;"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/LikeCommentRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/groups/LikeCommentRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/android/requests/groups/LikeCommentRequest;-><init>(Lcom/airbnb/android/models/groups/Comment;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static destroyRequest(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/LikeCommentRequest;
    .registers 4
    .param p0, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Comment;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/LikeCommentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/LikeCommentRequest;"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/LikeCommentRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/groups/LikeCommentRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/android/requests/groups/LikeCommentRequest;-><init>(Lcom/airbnb/android/models/groups/Comment;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method private static getPath(Lcom/airbnb/android/models/groups/Comment;Z)Ljava/lang/String;
    .registers 7
    .param p0, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .param p1, "isCreating"    # Z

    .prologue
    .line 27
    if-eqz p1, :cond_1e

    const-string/jumbo v0, "like"

    .line 28
    .local v0, "action":Ljava/lang/String;
    :goto_5
    const-string/jumbo v1, "groups/content/post-%d/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 27
    .end local v0    # "action":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v0, "unlike"

    goto :goto_5
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public updateComment(Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/Comment;
    .registers 3
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/airbnb/android/requests/groups/LikeCommentRequest;->mIsCreating:Z

    if-eqz v0, :cond_a

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/LikeCommentRequest;->like:Lcom/airbnb/android/models/groups/Like;

    invoke-virtual {p1, v0}, Lcom/airbnb/android/models/groups/Comment;->addLike(Lcom/airbnb/android/models/groups/Like;)V

    .line 45
    :goto_9
    return-object p1

    .line 43
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/LikeCommentRequest;->like:Lcom/airbnb/android/models/groups/Like;

    invoke-virtual {p1, v0}, Lcom/airbnb/android/models/groups/Comment;->removeLike(Lcom/airbnb/android/models/groups/Like;)V

    goto :goto_9
.end method
