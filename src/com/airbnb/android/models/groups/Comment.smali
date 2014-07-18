.class public Lcom/airbnb/android/models/groups/Comment;
.super Lcom/airbnb/android/models/groups/_Comment;
.source "Comment.java"

# interfaces
.implements Lcom/airbnb/android/models/groups/Commentable;
.implements Lcom/airbnb/android/models/groups/Likable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/groups/Comment$RepliesWrapper;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSAVED_ID:I = -0xa


# instance fields
.field private likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 145
    new-instance v0, Lcom/airbnb/android/models/groups/Comment$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/Comment$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/Comment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Comment;-><init>()V

    .line 20
    new-instance v0, Lcom/airbnb/android/models/groups/LikeHelper;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/LikeHelper;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Comment;->likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;

    .line 35
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ILjava/lang/String;)V
    .registers 10
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p5, "createdAt"    # Ljava/util/Date;
    .param p6, "author"    # Lcom/airbnb/android/models/groups/Author;
    .param p7, "contentId"    # I
    .param p8, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Reply;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;",
            "Ljava/util/Date;",
            "Lcom/airbnb/android/models/groups/Author;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p3, "replies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Reply;>;"
    .local p4, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Comment;-><init>()V

    .line 20
    new-instance v0, Lcom/airbnb/android/models/groups/LikeHelper;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/LikeHelper;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Comment;->likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Comment;->mReplies:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lcom/airbnb/android/models/groups/Comment;->mText:Ljava/lang/String;

    .line 41
    iput p1, p0, Lcom/airbnb/android/models/groups/Comment;->mId:I

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Comment;->mLikes:Ljava/util/List;

    .line 43
    iput-object p5, p0, Lcom/airbnb/android/models/groups/Comment;->mCreatedAt:Ljava/util/Date;

    .line 44
    iput-object p6, p0, Lcom/airbnb/android/models/groups/Comment;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 45
    iput p7, p0, Lcom/airbnb/android/models/groups/Comment;->mContentId:I

    .line 46
    iput-object p8, p0, Lcom/airbnb/android/models/groups/Comment;->mContentType:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static forCreation(Ljava/lang/String;Lcom/airbnb/android/models/User;)Lcom/airbnb/android/models/groups/Comment;
    .registers 11
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "author"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v3, "emptyReplies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Reply;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v4, "emptyLikes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    new-instance v0, Lcom/airbnb/android/models/groups/Comment;

    const/16 v1, -0xa

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-static {p1}, Lcom/airbnb/android/models/groups/Author;->forUser(Lcom/airbnb/android/models/User;)Lcom/airbnb/android/models/groups/Author;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/groups/Comment;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ILjava/lang/String;)V

    return-object v0
.end method

.method public static of(Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/Comment;
    .registers 10
    .param p0, "comment"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 23
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->copyReplies()Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .local v3, "replies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Reply;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getLikes()Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .local v4, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    new-instance v0, Lcom/airbnb/android/models/groups/Comment;

    iget v1, p0, Lcom/airbnb/android/models/groups/Comment;->mId:I

    iget-object v2, p0, Lcom/airbnb/android/models/groups/Comment;->mText:Ljava/lang/String;

    iget-object v5, p0, Lcom/airbnb/android/models/groups/Comment;->mCreatedAt:Ljava/util/Date;

    iget-object v6, p0, Lcom/airbnb/android/models/groups/Comment;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    iget v7, p0, Lcom/airbnb/android/models/groups/Comment;->mContentId:I

    iget-object v8, p0, Lcom/airbnb/android/models/groups/Comment;->mContentType:Ljava/lang/String;

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/android/models/groups/Comment;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Date;Lcom/airbnb/android/models/groups/Author;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public addLike(Lcom/airbnb/android/models/groups/Like;)V
    .registers 3
    .param p1, "like"    # Lcom/airbnb/android/models/groups/Like;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getLikes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public addReply(Lcom/airbnb/android/models/groups/Reply;)V
    .registers 3
    .param p1, "reply"    # Lcom/airbnb/android/models/groups/Reply;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public copyReplies()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Reply;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v1

    .line 102
    .local v1, "fullReplies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Reply;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v0, "copy":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Reply;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/groups/Reply;

    .line 105
    .local v3, "reply":Lcom/airbnb/android/models/groups/Reply;
    invoke-static {v3}, Lcom/airbnb/android/models/groups/Reply;->of(Lcom/airbnb/android/models/groups/Reply;)Lcom/airbnb/android/models/groups/Reply;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 108
    .end local v3    # "reply":Lcom/airbnb/android/models/groups/Reply;
    :cond_21
    return-object v0
.end method

.method public deleteReply(Lcom/airbnb/android/models/groups/Reply;)V
    .registers 3
    .param p1, "reply"    # Lcom/airbnb/android/models/groups/Reply;

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    if-ne p0, p1, :cond_5

    .line 183
    :cond_4
    :goto_4
    return v1

    .line 173
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 174
    goto :goto_4

    .line 176
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 177
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 179
    check-cast v0, Lcom/airbnb/android/models/groups/Comment;

    .line 180
    .local v0, "other":Lcom/airbnb/android/models/groups/Comment;
    iget v3, p0, Lcom/airbnb/android/models/groups/Comment;->mId:I

    iget v4, v0, Lcom/airbnb/android/models/groups/Comment;->mId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 181
    goto :goto_4
.end method

.method public bridge synthetic getAuthor()Lcom/airbnb/android/models/groups/Author;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentId()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->getContentId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()I
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getLikes()Ljava/util/List;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->getLikes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLikesCount()I
    .registers 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getLikes()Ljava/util/List;

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
    .line 51
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 52
    .local v2, "users":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/airbnb/android/models/User;>;"
    iget-object v3, p0, Lcom/airbnb/android/models/groups/Comment;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Reply;

    .line 54
    .local v1, "reply":Lcom/airbnb/android/models/groups/Reply;
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Reply;->getAuthor()Lcom/airbnb/android/models/groups/Author;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Author;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 56
    .end local v1    # "reply":Lcom/airbnb/android/models/groups/Reply;
    :cond_2e
    return-object v2
.end method

.method public bridge synthetic getReplies()Ljava/util/List;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->getReplies()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 162
    const/16 v0, 0x1f

    .line 163
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 164
    .local v1, "result":I
    iget v2, p0, Lcom/airbnb/android/models/groups/Comment;->mId:I

    add-int/lit8 v1, v2, 0x1f

    .line 165
    return v1
.end method

.method public isAuthor(Lcom/airbnb/android/models/User;)Z
    .registers 3
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getAuthor()Lcom/airbnb/android/models/groups/Author;

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
    .line 16
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_Comment;->isFlaggedBy()Z

    move-result v0

    return v0
.end method

.method public isLikedBy(Lcom/airbnb/android/models/User;)Z
    .registers 4
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Comment;->likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getLikes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/airbnb/android/models/groups/LikeHelper;->isLikedBy(Lcom/airbnb/android/models/User;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isSaved()Z
    .registers 3

    .prologue
    .line 142
    iget v0, p0, Lcom/airbnb/android/models/groups/Comment;->mId:I

    const/16 v1, -0xa

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public markAsFlagged()V
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/Comment;->mIsFlaggedBy:Z

    .line 121
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Comment;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public removeLike(Lcom/airbnb/android/models/groups/Like;)V
    .registers 3
    .param p1, "like"    # Lcom/airbnb/android/models/groups/Like;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getLikes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public bridge synthetic setAuthor(Lcom/airbnb/android/models/groups/Author;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Author;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Comment;->setAuthor(Lcom/airbnb/android/models/groups/Author;)V

    return-void
.end method

.method public bridge synthetic setContentId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Comment;->setContentId(I)V

    return-void
.end method

.method public bridge synthetic setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Comment;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Date;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Comment;->setCreatedAt(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Comment;->setId(I)V

    return-void
.end method

.method public bridge synthetic setIsFlaggedBy(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Comment;->setIsFlaggedBy(Z)V

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
    .line 79
    .local p1, "likesWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/LikeHelper$LikesWrapper;>;"
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Comment;->likeHelper:Lcom/airbnb/android/models/groups/LikeHelper;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/groups/LikeHelper;->getLikesFromWrapper(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/models/groups/Comment;->mLikes:Ljava/util/List;

    .line 80
    return-void
.end method

.method public setReplies(Ljava/util/List;)V
    .registers 6
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "replies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Comment$RepliesWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "repliesWrapper":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment$RepliesWrapper;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/models/groups/Comment;->mReplies:Ljava/util/List;

    .line 62
    if-eqz p1, :cond_27

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Comment$RepliesWrapper;

    .line 64
    .local v1, "wrapper":Lcom/airbnb/android/models/groups/Comment$RepliesWrapper;
    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/airbnb/android/models/groups/Comment$RepliesWrapper;->reply:Lcom/airbnb/android/models/groups/Reply;

    if-eqz v2, :cond_d

    .line 65
    iget-object v2, p0, Lcom/airbnb/android/models/groups/Comment;->mReplies:Ljava/util/List;

    iget-object v3, v1, Lcom/airbnb/android/models/groups/Comment$RepliesWrapper;->reply:Lcom/airbnb/android/models/groups/Reply;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 69
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wrapper":Lcom/airbnb/android/models/groups/Comment$RepliesWrapper;
    :cond_27
    return-void
.end method

.method public bridge synthetic setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_Comment;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/airbnb/android/models/groups/Comment;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public updateReply(Lcom/airbnb/android/models/groups/Reply;)Z
    .registers 4
    .param p1, "reply"    # Lcom/airbnb/android/models/groups/Reply;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 130
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_14

    .line 131
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    const/4 v1, 0x1

    .line 134
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
    .line 16
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_Comment;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
