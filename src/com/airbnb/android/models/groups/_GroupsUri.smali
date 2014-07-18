.class abstract Lcom/airbnb/android/models/groups/_GroupsUri;
.super Ljava/lang/Object;
.source "_GroupsUri.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mComment:Lcom/airbnb/android/models/groups/Comment;

.field protected mCommentId:I

.field protected mContent:Lcom/airbnb/android/models/groups/BaseContent;

.field protected mContentId:I

.field protected mContentType:Ljava/lang/String;

.field protected mDrilldownLevelOrdinal:I

.field protected mForceBack:Z

.field protected mGroup:Lcom/airbnb/android/models/groups/Group;

.field protected mGroupId:I

.field protected mIncludesScrollInformation:Z

.field protected mReplyId:I

.field protected mUpNavigation:Z


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method protected constructor <init>(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/models/groups/Group;Ljava/lang/String;ZZZIIIII)V
    .registers 13
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p2, "comment"    # Lcom/airbnb/android/models/groups/Comment;
    .param p3, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "upNavigation"    # Z
    .param p6, "includesScrollInformation"    # Z
    .param p7, "forceBack"    # Z
    .param p8, "groupId"    # I
    .param p9, "contentId"    # I
    .param p10, "commentId"    # I
    .param p11, "replyId"    # I
    .param p12, "drilldownLevelOrdinal"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 29
    iput-object p2, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mComment:Lcom/airbnb/android/models/groups/Comment;

    .line 30
    iput-object p3, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 31
    iput-object p4, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentType:Ljava/lang/String;

    .line 32
    iput-boolean p5, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mUpNavigation:Z

    .line 33
    iput-boolean p6, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mIncludesScrollInformation:Z

    .line 34
    iput-boolean p7, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mForceBack:Z

    .line 35
    iput p8, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroupId:I

    .line 36
    iput p9, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentId:I

    .line 37
    iput p10, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mCommentId:I

    .line 38
    iput p11, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mReplyId:I

    .line 39
    iput p12, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mDrilldownLevelOrdinal:I

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public getComment()Lcom/airbnb/android/models/groups/Comment;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mComment:Lcom/airbnb/android/models/groups/Comment;

    return-object v0
.end method

.method public getCommentId()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mCommentId:I

    return v0
.end method

.method public getContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method public getContentId()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentId:I

    return v0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDrilldownLevelOrdinal()I
    .registers 2

    .prologue
    .line 168
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mDrilldownLevelOrdinal:I

    return v0
.end method

.method public getGroup()Lcom/airbnb/android/models/groups/Group;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroupId:I

    return v0
.end method

.method public getReplyId()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mReplyId:I

    return v0
.end method

.method public isForceBack()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mForceBack:Z

    return v0
.end method

.method public isIncludesScrollInformation()Z
    .registers 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mIncludesScrollInformation:Z

    return v0
.end method

.method public isUpNavigation()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mUpNavigation:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 196
    const-class v1, Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/BaseContent;

    iput-object v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 197
    const-class v1, Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Comment;

    iput-object v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mComment:Lcom/airbnb/android/models/groups/Comment;

    .line 198
    const-class v1, Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Group;

    iput-object v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentType:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 201
    .local v0, "bools":[Z
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mUpNavigation:Z

    .line 202
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mIncludesScrollInformation:Z

    .line 203
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mForceBack:Z

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroupId:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentId:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mCommentId:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mReplyId:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mDrilldownLevelOrdinal:I

    .line 209
    return-void
.end method

.method public setComment(Lcom/airbnb/android/models/groups/Comment;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Comment;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment"
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mComment:Lcom/airbnb/android/models/groups/Comment;

    .line 65
    return-void
.end method

.method public setCommentId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment_id"
    .end annotation

    .prologue
    .line 152
    iput p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mCommentId:I

    .line 153
    return-void
.end method

.method public setContent(Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/BaseContent;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content"
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 54
    return-void
.end method

.method public setContentId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_id"
    .end annotation

    .prologue
    .line 141
    iput p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentId:I

    .line 142
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content_type"
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentType:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setDrilldownLevelOrdinal(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "drilldown_level_ordinal"
    .end annotation

    .prologue
    .line 174
    iput p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mDrilldownLevelOrdinal:I

    .line 175
    return-void
.end method

.method public setForceBack(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "force_back"
    .end annotation

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mForceBack:Z

    .line 120
    return-void
.end method

.method public setGroup(Lcom/airbnb/android/models/groups/Group;)V
    .registers 2
    .param p1, "value"    # Lcom/airbnb/android/models/groups/Group;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 76
    return-void
.end method

.method public setGroupId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group_id"
    .end annotation

    .prologue
    .line 130
    iput p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroupId:I

    .line 131
    return-void
.end method

.method public setIncludesScrollInformation(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "includes_scroll_information"
    .end annotation

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mIncludesScrollInformation:Z

    .line 109
    return-void
.end method

.method public setReplyId(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reply_id"
    .end annotation

    .prologue
    .line 163
    iput p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mReplyId:I

    .line 164
    return-void
.end method

.method public setUpNavigation(Z)V
    .registers 2
    .param p1, "value"    # Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "up_navigation"
    .end annotation

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mUpNavigation:Z

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 184
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 185
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mUpNavigation:Z

    aput-boolean v1, v0, v2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mIncludesScrollInformation:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mForceBack:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 188
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mGroupId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mContentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mCommentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mReplyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/airbnb/android/models/groups/_GroupsUri;->mDrilldownLevelOrdinal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return-void
.end method
