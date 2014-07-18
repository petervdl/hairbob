.class public Lcom/airbnb/android/models/groups/LikeHelper;
.super Ljava/lang/Object;
.source "LikeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getLikesFromWrapper(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "likesWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v1, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    if-eqz p1, :cond_23

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;

    .line 30
    .local v2, "wrapper":Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;
    if-eqz v2, :cond_b

    iget-object v3, v2, Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;->like:Lcom/airbnb/android/models/groups/Like;

    if-eqz v3, :cond_b

    .line 31
    iget-object v3, v2, Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;->like:Lcom/airbnb/android/models/groups/Like;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 35
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "wrapper":Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;
    :cond_23
    return-object v1
.end method

.method public isLikedBy(Lcom/airbnb/android/models/User;Ljava/util/List;)Z
    .registers 9
    .param p1, "user"    # Lcom/airbnb/android/models/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/User;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Like;

    .line 13
    .local v1, "like":Lcom/airbnb/android/models/groups/Like;
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Like;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 14
    const/4 v2, 0x1

    .line 17
    .end local v1    # "like":Lcom/airbnb/android/models/groups/Like;
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x0

    goto :goto_21
.end method
