.class public Lcom/airbnb/android/models/groups/GroupsUri;
.super Lcom/airbnb/android/models/groups/_GroupsUri;
.source "GroupsUri.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/models/groups/GroupsUri$2;,
        Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;
    }
.end annotation


# static fields
.field public static final COMMENT_PARAM:Ljava/lang/String; = "post_id"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsUri;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPLY_PARAM:Ljava/lang/String; = "reply_id"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 171
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/groups/GroupsUri$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/groups/GroupsUri;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;-><init>()V

    .line 35
    return-void
.end method

.method private constructor <init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V
    .registers 3
    .param p1, "drilldownLevel"    # Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mDrilldownLevelOrdinal:I

    .line 114
    return-void
.end method

.method public static newBaseContentDrilldownUri(ILjava/lang/String;)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 4
    .param p0, "contentId"    # I
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->CONTENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 57
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentId(I)V

    .line 58
    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentType(Ljava/lang/String;)V

    .line 59
    return-object v0
.end method

.method public static newBaseContentDrilldownUri(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 4
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 63
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->CONTENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 64
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setGroupId(I)V

    .line 65
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/groups/GroupsUri;->setGroup(Lcom/airbnb/android/models/groups/Group;)V

    .line 66
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/BaseContent;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentId(I)V

    .line 67
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/BaseContent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentType(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContent(Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 69
    return-object v0
.end method

.method public static newCommentDrilldownUri(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 5
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p2, "comment"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 101
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->CONTENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 102
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setGroupId(I)V

    .line 103
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/groups/GroupsUri;->setGroup(Lcom/airbnb/android/models/groups/Group;)V

    .line 104
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/BaseContent;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentId(I)V

    .line 105
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/BaseContent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentType(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContent(Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 107
    invoke-virtual {p2}, Lcom/airbnb/android/models/groups/Comment;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setCommentId(I)V

    .line 108
    invoke-virtual {v0, p2}, Lcom/airbnb/android/models/groups/GroupsUri;->setComment(Lcom/airbnb/android/models/groups/Comment;)V

    .line 109
    return-object v0
.end method

.method public static newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->COMMUNITY:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 39
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    return-object v0
.end method

.method public static newContentCommentDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 3
    .param p0, "commentId"    # I

    .prologue
    .line 87
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->COMMENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 88
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/groups/GroupsUri;->setCommentId(I)V

    .line 89
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentType(Ljava/lang/String;)V

    .line 90
    return-object v0
.end method

.method public static newContentDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 3
    .param p0, "contentId"    # I

    .prologue
    .line 73
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->CONTENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 74
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentId(I)V

    .line 75
    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentType(Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method public static newGroupHomeUri(I)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 3
    .param p0, "groupId"    # I

    .prologue
    .line 43
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->GROUP:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 44
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/groups/GroupsUri;->setGroupId(I)V

    .line 45
    return-object v0
.end method

.method public static newGroupHomeUri(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 3
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 49
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->GROUP:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 50
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setGroupId(I)V

    .line 51
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/groups/GroupsUri;->setGroup(Lcom/airbnb/android/models/groups/Group;)V

    .line 52
    return-object v0
.end method

.method public static newMeetupCommentDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 3
    .param p0, "commentId"    # I

    .prologue
    .line 94
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->COMMENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 95
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/groups/GroupsUri;->setCommentId(I)V

    .line 96
    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentType(Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method public static newMeetupDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 3
    .param p0, "meetupId"    # I

    .prologue
    .line 80
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->CONTENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;-><init>(Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;)V

    .line 81
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentId(I)V

    .line 82
    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri;->setContentType(Ljava/lang/String;)V

    .line 83
    return-object v0
.end method


# virtual methods
.method public addScrollToComment(I)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 3
    .param p1, "commentId"    # I

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/groups/GroupsUri;->setCommentId(I)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/groups/GroupsUri;->setIncludesScrollInformation(Z)V

    .line 119
    return-object p0
.end method

.method public addScrollToReply(I)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 3
    .param p1, "replyId"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/airbnb/android/models/groups/GroupsUri;->setReplyId(I)V

    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/models/groups/GroupsUri;->setIncludesScrollInformation(Z)V

    .line 125
    return-object p0
.end method

.method public bridge synthetic describeContents()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getComment()Lcom/airbnb/android/models/groups/Comment;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->getComment()Lcom/airbnb/android/models/groups/Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCommentId()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->getCommentId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentId()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->getContentId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataEvent()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 152
    sget-object v0, Lcom/airbnb/android/models/groups/GroupsUri$2;->$SwitchMap$com$airbnb$android$models$groups$GroupsUri$GroupDrilldownLevel:[I

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/GroupsUri;->getDrilldownLevel()Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 168
    :cond_f
    :pswitch_f
    const/4 v0, 0x0

    :goto_10
    return-object v0

    .line 156
    :pswitch_11
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/GroupsUri;->hasGroup()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 157
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v1, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0, v1}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    goto :goto_10

    .line 161
    :pswitch_1f
    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/GroupsUri;->hasGroup()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/GroupsUri;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    iget-object v1, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v2, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    goto :goto_10

    .line 152
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_f
        :pswitch_11
        :pswitch_1f
    .end packed-switch
.end method

.method public getDrilldownLevel()Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;
    .registers 3

    .prologue
    .line 136
    iget v0, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mDrilldownLevelOrdinal:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->getDrilldownLevel(J)Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDrilldownLevelOrdinal()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->getDrilldownLevelOrdinal()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getGroup()Lcom/airbnb/android/models/groups/Group;
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGroupId()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->getGroupId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getReplyId()I
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->getReplyId()I

    move-result v0

    return v0
.end method

.method public hasComment()Z
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mComment:Lcom/airbnb/android/models/groups/Comment;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasContent()Z
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasGroup()Z
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mGroup:Lcom/airbnb/android/models/groups/Group;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public bridge synthetic isForceBack()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->isForceBack()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isIncludesScrollInformation()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->isIncludesScrollInformation()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUpNavigation()Z
    .registers 2

    .prologue
    .line 12
    invoke-super {p0}, Lcom/airbnb/android/models/groups/_GroupsUri;->isUpNavigation()Z

    move-result v0

    return v0
.end method

.method public loadWithUpInformation(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/GroupsUri;
    .registers 4
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 130
    iput-object p2, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/models/groups/GroupsUri;->mUpNavigation:Z

    .line 132
    return-object p0
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic setComment(Lcom/airbnb/android/models/groups/Comment;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setComment(Lcom/airbnb/android/models/groups/Comment;)V

    return-void
.end method

.method public bridge synthetic setCommentId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setCommentId(I)V

    return-void
.end method

.method public bridge synthetic setContent(Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setContent(Lcom/airbnb/android/models/groups/BaseContent;)V

    return-void
.end method

.method public bridge synthetic setContentId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setContentId(I)V

    return-void
.end method

.method public bridge synthetic setContentType(Ljava/lang/String;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setContentType(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setDrilldownLevelOrdinal(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setDrilldownLevelOrdinal(I)V

    return-void
.end method

.method public bridge synthetic setForceBack(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setForceBack(Z)V

    return-void
.end method

.method public bridge synthetic setGroup(Lcom/airbnb/android/models/groups/Group;)V
    .registers 2
    .param p1, "x0"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setGroup(Lcom/airbnb/android/models/groups/Group;)V

    return-void
.end method

.method public bridge synthetic setGroupId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setGroupId(I)V

    return-void
.end method

.method public bridge synthetic setIncludesScrollInformation(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setIncludesScrollInformation(Z)V

    return-void
.end method

.method public bridge synthetic setReplyId(I)V
    .registers 2
    .param p1, "x0"    # I

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setReplyId(I)V

    return-void
.end method

.method public bridge synthetic setUpNavigation(Z)V
    .registers 2
    .param p1, "x0"    # Z

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/airbnb/android/models/groups/_GroupsUri;->setUpNavigation(Z)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # I

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/models/groups/_GroupsUri;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
