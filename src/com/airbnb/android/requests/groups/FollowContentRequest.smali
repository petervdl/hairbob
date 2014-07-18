.class public Lcom/airbnb/android/requests/groups/FollowContentRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "FollowContentRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/FollowContentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public hasFollows:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "has_follows"
    .end annotation
.end field


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
            "Lcom/airbnb/android/requests/groups/FollowContentRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p3, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/FollowContentRequest;>;"
    invoke-static {p1, p2}, Lcom/airbnb/android/requests/groups/FollowContentRequest;->getPath(Lcom/airbnb/android/models/groups/BaseContent;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    return-void
.end method

.method public static createRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/FollowContentRequest;
    .registers 4
    .param p0, "mContent"    # Lcom/airbnb/android/models/groups/BaseContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/FollowContentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/FollowContentRequest;"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/FollowContentRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/groups/FollowContentRequest;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/android/requests/groups/FollowContentRequest;-><init>(Lcom/airbnb/android/models/groups/BaseContent;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method public static destroyRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/FollowContentRequest;
    .registers 4
    .param p0, "mContent"    # Lcom/airbnb/android/models/groups/BaseContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/FollowContentRequest;",
            ">;)",
            "Lcom/airbnb/android/requests/groups/FollowContentRequest;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/FollowContentRequest;>;"
    new-instance v0, Lcom/airbnb/android/requests/groups/FollowContentRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/android/requests/groups/FollowContentRequest;-><init>(Lcom/airbnb/android/models/groups/BaseContent;ZLcom/airbnb/android/requests/RequestListener;)V

    return-object v0
.end method

.method private static getPath(Lcom/airbnb/android/models/groups/BaseContent;Z)Ljava/lang/String;
    .registers 6
    .param p0, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p1, "isCreating"    # Z

    .prologue
    .line 23
    new-instance v1, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;

    invoke-direct {v1}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;-><init>()V

    .line 24
    .local v1, "visitor":Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;
    invoke-virtual {p0, v1}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 25
    invoke-virtual {v1}, Lcom/airbnb/android/requests/groups/ContentRootPathVisitor;->getRootPath()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "root":Ljava/lang/String;
    if-eqz p1, :cond_23

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "follow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    :goto_22
    return-object v2

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "unfollow"

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
    .line 38
    const/4 v0, 0x1

    return v0
.end method
