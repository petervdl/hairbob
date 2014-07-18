.class public abstract Lcom/airbnb/android/models/groups/BaseContent;
.super Lcom/airbnb/android/models/groups/_BaseContent;
.source "BaseContent.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/Commentable;
.implements Lcom/airbnb/android/models/groups/Likable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/groups/BaseContent$CommentsWrapper;
    }
.end annotation


# instance fields
.field private likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_BaseContent;-><init>()V

    .line 15
    new-instance v0, Lcom/airbnb/android/models/groups/LikeHelper;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/LikeHelper;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/groups/BaseContent;->likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;

    .line 37
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ZZI)V
    .registers 10
    .param p1, "id"    # I
    .param p4, "createdAt"    # Ljava/util/Date;
    .param p5, "author"    # Lcom/airbnb/android/models/groups/Author;
    .param p6, "flaggedBy"    # Z
    .param p7, "followedBy"    # Z
    .param p8, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Comment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/airbnb/android/models/groups/Author;",
            "ZZI)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    .local p3, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_BaseContent;-><init>()V

    .line 15
    new-instance v0, Lcom/airbnb/android/models/groups/LikeHelper;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/LikeHelper;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/groups/BaseContent;->likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;

    .line 40
    iput p1, p0, Lcom/airbnb/android/models/groups/BaseContent;->mId:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/android/models/groups/BaseContent;->mComments:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/android/models/groups/BaseContent;->mLikes:Ljava/util/List;

    .line 43
    iput-object p4, p0, Lcom/airbnb/android/models/groups/BaseContent;->mCreatedAt:Ljava/util/Date;

    .line 44
    iput-object p5, p0, Lcom/airbnb/android/models/groups/BaseContent;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 45
    iput-boolean p6, p0, Lcom/airbnb/android/models/groups/BaseContent;->mIsFlaggedBy:Z

    .line 46
    iput-boolean p7, p0, Lcom/airbnb/android/models/groups/BaseContent;->mIsFollowedBy:Z

    .line 47
    iput p8, p0, Lcom/airbnb/android/models/groups/BaseContent;->mGroupId:I

    .line 48
    return-void
.end method

.method public static of(Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;
    .registers 3
    .param p0, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 30
    new-instance v0, Lcom/airbnb/android/models/groups/ContentDeepCopyVisitor;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/ContentDeepCopyVisitor;-><init>()V

    .line 31
    .local v0, "visitor":Lcom/airbnb/android/models/groups/ContentDeepCopyVisitor;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 32
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/ContentDeepCopyVisitor;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abstract accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V
.end method

.method public addComment(Lcom/airbnb/android/models/groups/Comment;)V
    .registers 3
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public addLike(Lcom/airbnb/android/models/groups/Like;)V
    .registers 3
    .param p1, "like"    # Lcom/airbnb/android/models/groups/Like;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getLikes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public copyComments()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v2

    .line 99
    .local v2, "fullComments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Comment;

    .line 101
    .local v0, "comment":Lcom/airbnb/android/models/groups/Comment;
    invoke-static {v0}, Lcom/airbnb/android/models/groups/Comment;->of(Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/Comment;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 103
    .end local v0    # "comment":Lcom/airbnb/android/models/groups/Comment;
    :cond_21
    return-object v1
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_BaseContent;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 153
    if-ne p0, p1, :cond_5

    .line 166
    :cond_4
    :goto_4
    return v1

    .line 156
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 157
    goto :goto_4

    .line 159
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 160
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 162
    check-cast v0, Lcom/airbnb/android/models/groups/BaseContent;

    .line 163
    .local v0, "other":Lcom/airbnb/android/models/groups/BaseContent;
    iget v3, p0, Lcom/airbnb/android/models/groups/BaseContent;->mId:I

    iget v4, v0, Lcom/airbnb/android/models/groups/BaseContent;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 164
    goto :goto_4
.end method

.method public bridge synthetic getAuthor()Lcom/airbnb/android/models/groups/Author;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_BaseContent;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComments()Ljava/util/List;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_BaseContent;->getComments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_BaseContent;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDiscussionSize()I
    .registers 5

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 124
    .local v2, "size":I
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Comment;

    .line 125
    .local v0, "comment":Lcom/airbnb/android/models/groups/Comment;
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 126
    goto :goto_10

    .line 127
    .end local v0    # "comment":Lcom/airbnb/android/models/groups/Comment;
    :cond_26
    return v2
.end method

.method public bridge synthetic getGroupId()I
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_BaseContent;->getGroupId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_BaseContent;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLikes()Ljava/util/List;
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_BaseContent;->getLikes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLikesCount()I
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getLikes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getParticipants()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/airbnb/android/models/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 53
    .local v2, "users":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/airbnb/android/models/User;>;"
    iget-object v3, p0, Lcom/airbnb/android/models/groups/BaseContent;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Comment;

    .line 55
    .local v0, "comment":Lcom/airbnb/android/models/groups/Comment;
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Comment;->getParticipants()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    .line 57
    .end local v0    # "comment":Lcom/airbnb/android/models/groups/Comment;
    :cond_2a
    return-object v2
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public getTrackingId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 145
    const/16 v0, 0x1f

    .line 146
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 147
    .local v1, "result":I
    iget v2, p0, Lcom/airbnb/android/models/groups/BaseContent;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 148
    return v1
.end method

.method public isAuthor(Lcom/airbnb/android/models/User;)Z
    .registers 3
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/User;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFlaggedBy()Z
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_BaseContent;->isFlaggedBy()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFollowedBy()Z
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_BaseContent;->isFollowedBy()Z

    move-result v0

    return v0
.end method

.method public isLikedBy(Lcom/airbnb/android/models/User;)Z
    .registers 4
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/airbnb/android/models/groups/BaseContent;->likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getLikes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/airbnb/android/models/groups/LikeHelper;->isLikedBy(Lcom/airbnb/android/models/User;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public markAsFlagged()V
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/BaseContent;->mIsFlaggedBy:Z

    .line 62
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_BaseContent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public removeComment(Lcom/airbnb/android/models/groups/Comment;)V
    .registers 3
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method public removeLike(Lcom/airbnb/android/models/groups/Like;)V
    .registers 3
    .param p1, "like"    # Lcom/airbnb/android/models/groups/Like;

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getLikes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method public bridge synthetic setAuthor(Lcom/airbnb/android/models/groups/Author;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Author;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_BaseContent;->setAuthor(Lcom/airbnb/android/models/groups/Author;)V

    return-void
.end method

.method public setComments(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "posts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/BaseContent$CommentsWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "commentsWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/BaseContent$CommentsWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/groups/BaseContent;->mComments:Ljava/util/List;

    .line 67
    if-eqz p1, :cond_25

    .line 68
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/BaseContent$CommentsWrapper;

    .line 69
    .local v1, "wrapper":Lcom/airbnb/android/models/groups/BaseContent$CommentsWrapper;
    iget-object v2, v1, Lcom/airbnb/android/models/groups/BaseContent$CommentsWrapper;->comment:Lcom/airbnb/android/models/groups/Comment;

    if-eqz v2, :cond_d

    .line 70
    iget-object v2, p0, Lcom/airbnb/android/models/groups/BaseContent;->mComments:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/models/groups/BaseContent$CommentsWrapper;->comment:Lcom/airbnb/android/models/groups/Comment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 74
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/models/groups/BaseContent$CommentsWrapper;
    :cond_25
    return-void
.end method

.method public bridge synthetic setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_BaseContent;->setCreatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setGroupId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_BaseContent;->setGroupId(I)V

    return-void
.end method

.method public bridge synthetic setId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_BaseContent;->setId(I)V

    return-void
.end method

.method public bridge synthetic setIsFlaggedBy(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_BaseContent;->setIsFlaggedBy(Z)V

    return-void
.end method

.method public bridge synthetic setIsFollowedBy(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_BaseContent;->setIsFollowedBy(Z)V

    return-void
.end method

.method public setLikes(Ljava/util/List;)V
    .registers 3
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "likes"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "likesWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;>;"
    iget-object v0, p0, Lcom/airbnb/android/models/groups/BaseContent;->likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/groups/LikeHelper;->getLikesFromWrapper(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/groups/BaseContent;->mLikes:Ljava/util/List;

    .line 85
    return-void
.end method

.method public updateComment(Lcom/airbnb/android/models/groups/Comment;)Z
    .registers 4
    .param p1, "comment"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 136
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_14

    .line 137
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/4 v1, 0x1

    .line 140
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_BaseContent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
