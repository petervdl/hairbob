.class abstract Lcom/airbnb/android/models/groups/_BaseContent;
.super Ljava/lang/Object;
.source "_BaseContent.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAuthor:Lcom/airbnb/android/models/groups/Author;

.field protected mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Comment;",
            ">;"
        }
    .end annotation
.end field

.field protected mCreatedAt:Ljava/util/Date;

.field protected mGroupId:I

.field protected mId:I

.field protected mIsFlaggedBy:Z

.field protected mIsFollowedBy:Z

.field protected mLikes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/groups/Author;Ljava/util/Date;Ljava/util/List;Ljava/util/List;ZZII)V
    .registers 9
    .param p1, "author"    # Lcom/airbnb/android/models/groups/Author;
    .param p2, "createdAt"    # Ljava/util/Date;
    .param p5, "isFlaggedBy"    # Z
    .param p6, "isFollowedBy"    # Z
    .param p7, "id"    # I
    .param p8, "groupId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Author;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Comment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;ZZII)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, "comments":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Comment;>;"
    .local p4, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_BaseContent;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 27
    iput-object p2, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mCreatedAt:Ljava/util/Date;

    .line 28
    iput-object p3, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mComments:Ljava/util/List;

    .line 29
    iput-object p4, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mLikes:Ljava/util/List;

    .line 30
    iput-boolean p5, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFlaggedBy:Z

    .line 31
    iput-boolean p6, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFollowedBy:Z

    .line 32
    iput p7, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mId:I

    .line 33
    iput p8, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mGroupId:I

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Lcom/airbnb/android/models/groups/Author;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    return-object v0
.end method

.method public getComments()Ljava/util/List;
    .registers 2
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
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mComments:Ljava/util/List;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mGroupId:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mId:I

    return v0
.end method

.method public getLikes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mLikes:Ljava/util/List;

    return-object v0
.end method

.method public isFlaggedBy()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFlaggedBy:Z

    return v0
.end method

.method public isFollowedBy()Z
    .registers 2

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFollowedBy:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 131
    const-class v3, Lcom/airbnb/android/models/groups/Author;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/groups/Author;

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 133
    .local v1, "date0":J
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-eqz v3, :cond_20

    .line 134
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mCreatedAt:Ljava/util/Date;

    .line 136
    :cond_20
    sget-object v3, Lcom/airbnb/android/models/groups/Comment;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mComments:Ljava/util/List;

    .line 137
    sget-object v3, Lcom/airbnb/android/models/groups/Like;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mLikes:Ljava/util/List;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 139
    .local v0, "bools":[Z
    const/4 v3, 0x0

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFlaggedBy:Z

    .line 140
    const/4 v3, 0x1

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFollowedBy:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mId:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mGroupId:I

    .line 143
    return-void
.end method

.method public setAuthor(Lcom/airbnb/android/models/groups/Author;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Author;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "author"
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 48
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mCreatedAt:Ljava/util/Date;

    .line 59
    return-void
.end method

.method public setGroupId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group_id"
    .end annotation

    .prologue
    .line 112
    iput p1, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mGroupId:I

    .line 113
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 101
    iput p1, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mId:I

    .line 102
    return-void
.end method

.method public setIsFlaggedBy(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_flagged_by"
    .end annotation

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFlaggedBy:Z

    .line 80
    return-void
.end method

.method public setIsFollowedBy(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_followed_by"
    .end annotation

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFollowedBy:Z

    .line 91
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_34

    const-wide/32 v0, -0x80000000

    :goto_d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mComments:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mLikes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFlaggedBy:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mIsFollowedBy:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 126
    iget v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    return-void

    .line 122
    :cond_34
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_BaseContent;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_d
.end method
