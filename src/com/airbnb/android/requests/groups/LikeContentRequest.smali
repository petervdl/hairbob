.class public Lcom/airbnb/android/requests/groups/LikeContentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "LikeContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/LikeContentRequest;",
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
.method private constructor <init>(Lcom/airbnb/android/models/groups/BaseContent;ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p2, "isCreating"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/LikeContentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/LikeContentRequest;>;"
    invoke-static {p1, p2}, Lcom/airbnb/android/requests/groups/LikeContentRequest;->getPath(Lcom/airbnb/android/models/groups/BaseContent;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 23
    iput-boolean p2, p0, Lcom/airbnb/android/requests/groups/LikeContentRequest;->mIsCreating:Z

    .line 24
    return-void
.end method

.method public static createRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/LikeContentRequest;
    .registers 4
    .param p0, "mContent"    # Lcom/airbnb/android/models/groups/BaseContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/LikeContentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/LikeContentRequest;"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/LikeContentRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/groups/LikeContentRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/android/requests/groups/LikeContentRequest;-><init>(Lcom/airbnb/android/models/groups/BaseContent;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static destroyRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/LikeContentRequest;
    .registers 4
    .param p0, "mContent"    # Lcom/airbnb/android/models/groups/BaseContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/LikeContentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/LikeContentRequest;"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/LikeContentRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/groups/LikeContentRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/android/requests/groups/LikeContentRequest;-><init>(Lcom/airbnb/android/models/groups/BaseContent;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method private static getPath(Lcom/airbnb/android/models/groups/BaseContent;Z)Ljava/lang/String;
    .registers 6
    .param p0, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p1, "isCreating"    # Z

    .prologue
    .line 27
    new-instance v1, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;

    invoke-direct {v1}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;-><init>()V

    .line 28
    .local v1, "visitor":Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 29
    invoke-virtual {v1}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;->getRootPath()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "root":Ljava/lang/String;
    if-eqz p1, :cond_23

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "like"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    :goto_22
    return-object v2

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "unlike"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_22
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public updateComment(Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;
    .registers 3
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/airbnb/android/requests/groups/LikeContentRequest;->mIsCreating:Z

    if-eqz v0, :cond_a

    .line 47
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/LikeContentRequest;->like:Lcom/airbnb/android/models/groups/Like;

    invoke-virtual {p1, v0}, Lcom/airbnb/android/models/groups/BaseContent;->addLike(Lcom/airbnb/android/models/groups/Like;)V

    .line 51
    :goto_9
    return-object p1

    .line 49
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/requests/groups/LikeContentRequest;->like:Lcom/airbnb/android/models/groups/Like;

    invoke-virtual {p1, v0}, Lcom/airbnb/android/models/groups/BaseContent;->removeLike(Lcom/airbnb/android/models/groups/Like;)V

    goto :goto_9
.end method
