.class abstract Lcom/airbnb/android/models/groups/_Comment;
.super Ljava/lang/Object;
.source "_Comment.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAuthor:Lcom/airbnb/android/models/groups/Author;

.field protected mContentId:I

.field protected mContentType:Ljava/lang/String;

.field protected mCreatedAt:Ljava/util/Date;

.field protected mId:I

.field protected mIsFlaggedBy:Z

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

.field protected mReplies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Reply;",
            ">;"
        }
    .end annotation
.end field

.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/groups/Author;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 10
    .param p1, "author"    # Lcom/airbnb/android/models/groups/Author;
    .param p2, "createdAt"    # Ljava/util/Date;
    .param p5, "contentType"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "isFlaggedBy"    # Z
    .param p8, "contentId"    # I
    .param p9, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Author;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Like;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Reply;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "likes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Like;>;"
    .local p4, "replies":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Reply;>;"
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_Comment;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Comment;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 28
    iput-object p2, p0, Lcom/airbnb/android/models/groups/_Comment;->mCreatedAt:Ljava/util/Date;

    .line 29
    iput-object p3, p0, Lcom/airbnb/android/models/groups/_Comment;->mLikes:Ljava/util/List;

    .line 30
    iput-object p4, p0, Lcom/airbnb/android/models/groups/_Comment;->mReplies:Ljava/util/List;

    .line 31
    iput-object p5, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentType:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/airbnb/android/models/groups/_Comment;->mText:Ljava/lang/String;

    .line 33
    iput-boolean p7, p0, Lcom/airbnb/android/models/groups/_Comment;->mIsFlaggedBy:Z

    .line 34
    iput p8, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentId:I

    .line 35
    iput p9, p0, Lcom/airbnb/android/models/groups/_Comment;->mId:I

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Lcom/airbnb/android/models/groups/Author;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    return-object v0
.end method

.method public getContentId()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentId:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mCreatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mId:I

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
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mLikes:Ljava/util/List;

    return-object v0
.end method

.method public getReplies()Ljava/util/List;
    .registers 2
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
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mReplies:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public isFlaggedBy()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mIsFlaggedBy:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 146
    const-class v3, Lcom/airbnb/android/models/groups/Author;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/groups/Author;

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Comment;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 148
    .local v1, "date0":J
    const-wide/32 v3, -0x80000000

    cmp-long v3, v1, v3

    if-eqz v3, :cond_20

    .line 149
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Comment;->mCreatedAt:Ljava/util/Date;

    .line 151
    :cond_20
    sget-object v3, Lcom/airbnb/android/models/groups/Like;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Comment;->mLikes:Ljava/util/List;

    .line 152
    sget-object v3, Lcom/airbnb/android/models/groups/Reply;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Comment;->mReplies:Ljava/util/List;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentType:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/models/groups/_Comment;->mText:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 156
    .local v0, "bools":[Z
    const/4 v3, 0x0

    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/airbnb/android/models/groups/_Comment;->mIsFlaggedBy:Z

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentId:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/models/groups/_Comment;->mId:I

    .line 159
    return-void
.end method

.method public setAuthor(Lcom/airbnb/android/models/groups/Author;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Author;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "author"
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Comment;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    .line 50
    return-void
.end method

.method public setContentId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "discussable_id"
    .end annotation

    .prologue
    .line 114
    iput p1, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentId:I

    .line 115
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "discussable_type"
    .end annotation

    .prologue
    .line 81
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentType:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCreatedAt(Ljava/util/Date;)V
    .registers 2
    .param p1, "value"    # Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Comment;->mCreatedAt:Ljava/util/Date;

    .line 61
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .prologue
    .line 125
    iput p1, p0, Lcom/airbnb/android/models/groups/_Comment;->mId:I

    .line 126
    return-void
.end method

.method public setIsFlaggedBy(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "is_flagged_by"
    .end annotation

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_Comment;->mIsFlaggedBy:Z

    .line 104
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "text"
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_Comment;->mText:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mAuthor:Lcom/airbnb/android/models/groups/Author;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 135
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mCreatedAt:Ljava/util/Date;

    if-nez v0, :cond_39

    const-wide/32 v0, -0x80000000

    :goto_d
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mLikes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mReplies:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 138
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/groups/_Comment;->mIsFlaggedBy:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 141
    iget v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mContentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return-void

    .line 135
    :cond_39
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_Comment;->mCreatedAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_d
.end method
