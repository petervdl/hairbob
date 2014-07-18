.class public Lcom/airbnb/android/fragments/groups/CommentFragment;
.super Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
.source "CommentFragment.java"


# static fields
.field public static final ARGS_COMMENT_ID:Ljava/lang/String; = "comment_id"

.field public static final ARGS_REPLY_ID:Ljava/lang/String; = "reply_id"


# instance fields
.field private mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

.field private mComment:Lcom/airbnb/android/models/groups/Comment;

.field private mCommentId:I

.field private mCommentText:Landroid/widget/TextView;

.field private mContent:Lcom/airbnb/android/models/groups/BaseContent;

.field private mDelete:Landroid/view/MenuItem;

.field private mFlag:Landroid/view/MenuItem;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mHasNotificationReplyId:Z

.field private mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

.field private mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

.field private mNewReplyForm:Landroid/view/View;

.field private mNewReplyText:Landroid/widget/EditText;

.field private mNotificationReplyId:I

.field private mReplies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Reply;",
            ">;"
        }
    .end annotation
.end field

.field mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

.field private mRepliesListView:Landroid/widget/ListView;

.field private mRepliesLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mReplyCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

.field private mShare:Landroid/view/MenuItem;

.field private mStatusFooter:Landroid/view/View;

.field private mSubmitReplyButton:Landroid/widget/Button;

.field private mViewCreated:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;-><init>()V

    .line 78
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mHasNotificationReplyId:Z

    .line 79
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mViewCreated:Z

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Reply;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/groups/Reply;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->deleteReply(Lcom/airbnb/android/models/groups/Reply;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getLikeCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/ContentStatusCounts;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->updateStatusFooter()V

    return-void
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/groups/CommentFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->updateSubmitButton(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/groups/CommentFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getCreateReplyRequestListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->isTextEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->onDataLoaded()V

    return-void
.end method

.method static synthetic access$1900(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/LoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/Comment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->onDataLoadFailed()V

    return-void
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Comment;)Lcom/airbnb/android/models/groups/Comment;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    return-object p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/groups/CommentFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->deleteComment()V

    return-void
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getFlagCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/groups/CommentFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplyCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/groups/CommentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommentFragment;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    return-object v0
.end method

.method private attemptToFindData()Z
    .registers 2

    .prologue
    .line 654
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private createHeaderView(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 392
    const v1, 0x7f030128

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 394
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f080322

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mCommentText:Landroid/widget/TextView;

    .line 395
    const v1, 0x7f080323

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/groups/AuthorView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

    .line 396
    const v1, 0x7f080324

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/groups/IconCountButton;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    .line 397
    const v1, 0x7f080325

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/groups/IconCountButton;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplyCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    .line 398
    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    .line 399
    const v1, 0x7f0802e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mStatusFooter:Landroid/view/View;

    .line 400
    return-object v0
.end method

.method private deleteComment()V
    .registers 4

    .prologue
    .line 364
    new-instance v0, Lcom/airbnb/android/requests/groups/DeleteCommentRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    new-instance v2, Lcom/airbnb/android/fragments/groups/CommentFragment$6;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$6;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/groups/DeleteCommentRequest;-><init>(Lcom/airbnb/android/models/groups/Comment;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/DeleteCommentRequest;->execute()V

    .line 378
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/BaseContent;->removeComment(Lcom/airbnb/android/models/groups/Comment;)V

    .line 380
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 383
    return-void
.end method

.method private deleteReply(Lcom/airbnb/android/models/groups/Reply;)V
    .registers 4
    .param p1, "reply"    # Lcom/airbnb/android/models/groups/Reply;

    .prologue
    .line 260
    new-instance v0, Lcom/airbnb/android/requests/groups/DeleteReplyRequest;

    new-instance v1, Lcom/airbnb/android/fragments/groups/CommentFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$3;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    invoke-direct {v0, p1, v1}, Lcom/airbnb/android/requests/groups/DeleteReplyRequest;-><init>(Lcom/airbnb/android/models/groups/Reply;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/DeleteReplyRequest;->execute()V

    .line 274
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/groups/BaseContent;->updateComment(Lcom/airbnb/android/models/groups/Comment;)Z

    .line 276
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 278
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumReplies(I)V

    .line 279
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->updateStatusFooter()V

    .line 280
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->notifyDataSetChanged()V

    .line 282
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 283
    return-void
.end method

.method private fetchData()V
    .registers 4

    .prologue
    .line 658
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 659
    iget v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mCommentId:I

    new-instance v2, Lcom/airbnb/android/fragments/groups/CommentFragment$16;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$16;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    invoke-static {v1, v2}, Lcom/airbnb/android/requests/groups/GetCommentRequest;->getCommentRequest(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/GetCommentRequest;

    move-result-object v0

    .line 679
    .local v0, "request":Lcom/airbnb/android/requests/groups/GetCommentRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/GetCommentRequest;->execute()V

    .line 680
    return-void
.end method

.method private findOrFetchData()V
    .registers 3

    .prologue
    .line 643
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->attemptToFindData()Z

    move-result v0

    .line 644
    .local v0, "allDataLoaded":Z
    if-eqz v0, :cond_a

    .line 645
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->onDataLoaded()V

    .line 651
    :goto_9
    return-void

    .line 646
    :cond_a
    iget v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mCommentId:I

    if-lez v1, :cond_12

    .line 647
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->fetchData()V

    goto :goto_9

    .line 649
    :cond_12
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->onDataLoadFailed()V

    goto :goto_9
.end method

.method private getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    .registers 3

    .prologue
    .line 692
    new-instance v0, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    .line 693
    .local v0, "visitor":Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 694
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;->getLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v1

    return-object v1
.end method

.method private getCreateReplyRequestListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/CreateReplyRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Lcom/airbnb/android/fragments/groups/CommentFragment$13;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$13;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    return-object v0
.end method

.method private getFlagCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/FlagCommentRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    new-instance v0, Lcom/airbnb/android/fragments/groups/CommentFragment$15;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$15;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    return-object v0
.end method

.method private getLikeCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/LikeCommentRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v0, Lcom/airbnb/android/fragments/groups/CommentFragment$14;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$14;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    return-object v0
.end method

.method private hideView()V
    .registers 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyForm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    return-void
.end method

.method private isTextEntered()Z
    .registers 3

    .prologue
    .line 480
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "text":Ljava/lang/String;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/GroupsUri;)Lcom/airbnb/android/fragments/groups/CommentFragment;
    .registers 4
    .param p0, "groupsUri"    # Lcom/airbnb/android/models/groups/GroupsUri;

    .prologue
    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 101
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "groups_uri"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 102
    new-instance v1, Lcom/airbnb/android/fragments/groups/CommentFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;-><init>()V

    .line 103
    .local v1, "fragment":Lcom/airbnb/android/fragments/groups/CommentFragment;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->setArguments(Landroid/os/Bundle;)V

    .line 104
    return-object v1
.end method

.method private onDataLoadFailed()V
    .registers 4

    .prologue
    .line 683
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadFailedEvent;

    invoke-direct {v2}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadFailedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 684
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;

    invoke-direct {v2}, Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 685
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 686
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1d

    .line 687
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 689
    :cond_1d
    return-void
.end method

.method private onDataLoaded()V
    .registers 5

    .prologue
    .line 698
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 699
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v2, v3}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 700
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->setGroup(Lcom/airbnb/android/models/groups/Group;)V

    .line 701
    const-string/jumbo v1, "impressions"

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V

    .line 702
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 703
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_47

    .line 704
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-static {v2, v3}, Lcom/airbnb/android/models/groups/GroupsUri;->newBaseContentDrilldownUri(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->overrideParentIntent(Landroid/content/Intent;)V

    .line 705
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->updateView()V

    .line 706
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mFlag:Landroid/view/MenuItem;

    if-eqz v1, :cond_47

    .line 707
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->updateOptionsMenu()V

    .line 710
    :cond_47
    return-void
.end method

.method private onShareCommentPressed()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 332
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v3, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v6, "text/plain"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "https://airbnb.com/groups/content/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/BaseContent;->getTrackingId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "?post_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Comment;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 336
    .local v2, "resources":Landroid/content/res/Resources;
    const-string/jumbo v6, "android.intent.extra.TEXT"

    const v7, 0x7f0e06ef

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 338
    .local v0, "currUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_73

    .line 339
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, "currUserName":Ljava/lang/String;
    const v6, 0x7f0e06f0

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "subject":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    .end local v1    # "currUserName":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :cond_73
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e06f9

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/groups/CommentFragment;->startActivity(Landroid/content/Intent;)V

    .line 345
    return-void
.end method

.method private onShareReplyPressed(Lcom/airbnb/android/models/groups/Reply;)V
    .registers 13
    .param p1, "reply"    # Lcom/airbnb/android/models/groups/Reply;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 348
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .local v3, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v6, "text/plain"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "https://airbnb.com/groups/content/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/BaseContent;->getTrackingId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "?post_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Comment;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "&reply_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Reply;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 351
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 352
    .local v2, "resources":Landroid/content/res/Resources;
    const-string/jumbo v6, "android.intent.extra.TEXT"

    const v7, 0x7f0e06ef

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 354
    .local v0, "currUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_82

    .line 355
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "currUserName":Ljava/lang/String;
    const v6, 0x7f0e06f0

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, "subject":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    .end local v1    # "currUserName":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :cond_82
    const v6, 0x7f0e06fc

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/groups/CommentFragment;->startActivity(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method private refreshView()V
    .registers 1

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->hideView()V

    .line 635
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->findOrFetchData()V

    .line 636
    return-void
.end method

.method private resetAdapter()V
    .registers 3

    .prologue
    .line 386
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 387
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 388
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->notifyDataSetChanged()V

    .line 389
    return-void
.end method

.method private scrollToNotificationPosition()V
    .registers 6

    .prologue
    .line 463
    iget-boolean v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mHasNotificationReplyId:Z

    if-eqz v3, :cond_32

    .line 464
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/Reply;

    .line 465
    .local v2, "reply":Lcom/airbnb/android/models/groups/Reply;
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Reply;->getId()I

    move-result v3

    iget v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNotificationReplyId:I

    if-ne v3, v4, :cond_e

    .line 466
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    .line 467
    .local v1, "position":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    new-instance v4, Lcom/airbnb/android/fragments/groups/CommentFragment$9;

    invoke-direct {v4, p0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment$9;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 477
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "position":I
    .end local v2    # "reply":Lcom/airbnb/android/models/groups/Reply;
    :cond_32
    return-void
.end method

.method private setupReplyForm()V
    .registers 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/groups/CommentFragment$10;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$10;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 503
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->isTextEntered()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->updateSubmitButton(Z)V

    .line 504
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mSubmitReplyButton:Landroid/widget/Button;

    new-instance v1, Lcom/airbnb/android/fragments/groups/CommentFragment$11;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$11;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/groups/CommentFragment$12;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$12;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 557
    return-void
.end method

.method private updateHeader()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 404
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mCommentText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Comment;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    const-string/jumbo v5, "comment_page"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/airbnb/android/views/groups/AuthorView;->setAuthorable(Lcom/airbnb/android/models/groups/Authorable;Lcom/airbnb/android/models/groups/Group;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 406
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 407
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Comment;->getLikesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumLikes(I)V

    .line 408
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v3, v0}, Lcom/airbnb/android/models/groups/Comment;->isLikedBy(Lcom/airbnb/android/models/User;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 409
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/IconCountButton;->setPressable(Z)V

    .line 410
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Comment;->getReplies()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumReplies(I)V

    .line 411
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplyCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    invoke-virtual {v2, v7}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 412
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplyCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/IconCountButton;->setPressable(Z)V

    .line 413
    new-instance v1, Lcom/airbnb/android/fragments/groups/CommentFragment$7;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$7;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    .line 431
    .local v1, "replyListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplyCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/groups/IconCountButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    new-instance v3, Lcom/airbnb/android/fragments/groups/CommentFragment$8;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$8;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/IconCountButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->resetAdapter()V

    .line 458
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->updateStatusFooter()V

    .line 459
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 460
    return-void
.end method

.method private updateOptionsMenu()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 724
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Comment;->isFlaggedBy()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 725
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mFlag:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 729
    :goto_f
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 730
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/models/groups/Comment;->isAuthor(Lcom/airbnb/android/models/User;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 731
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 735
    :goto_28
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mShare:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 736
    return-void

    .line 727
    .end local v0    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_2e
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mFlag:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_f

    .line 733
    .restart local v0    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_34
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_28
.end method

.method private updateStatusFooter()V
    .registers 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    if-eqz v0, :cond_13

    .line 740
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mLikeReplyCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    invoke-virtual {v0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 741
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mStatusFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 746
    :cond_13
    :goto_13
    return-void

    .line 743
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mStatusFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13
.end method

.method private updateSubmitButton(Z)V
    .registers 5
    .param p1, "isEnabled"    # Z

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 486
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mSubmitReplyButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 487
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mSubmitReplyButton:Landroid/widget/Button;

    const v1, 0x7f020210

    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->getSubmitColorResourceId(Z)I

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 489
    :cond_1b
    return-void
.end method

.method private updateView()V
    .registers 3

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->updateHeader()V

    .line 714
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 715
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->setupReplyForm()V

    .line 716
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyForm:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 720
    :goto_14
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->scrollToNotificationPosition()V

    .line 721
    return-void

    .line 718
    :cond_18
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyForm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x1

    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 193
    .local v3, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v4, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 194
    .local v4, "position":I
    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/models/groups/Reply;

    .line 195
    .local v5, "reply":Lcom/airbnb/android/models/groups/Reply;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_78

    .line 255
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v6

    :cond_1e
    :goto_1e
    return v6

    .line 197
    :pswitch_1f
    const-string/jumbo v7, "tap_share"

    iget-object v8, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v7, v8, v5}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldownReplyAction(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Reply;)V

    .line 198
    invoke-direct {p0, v5}, Lcom/airbnb/android/fragments/groups/CommentFragment;->onShareReplyPressed(Lcom/airbnb/android/models/groups/Reply;)V

    goto :goto_1e

    .line 201
    :pswitch_2b
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 202
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_1e

    .line 203
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 204
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0e0272

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e085b

    new-instance v9, Lcom/airbnb/android/fragments/groups/CommentFragment$1;

    invoke-direct {v9, p0, v5}, Lcom/airbnb/android/fragments/groups/CommentFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;Lcom/airbnb/android/models/groups/Reply;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e00b0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 215
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 216
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1e

    .line 220
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "dialog":Landroid/app/Dialog;
    :pswitch_64
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 221
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_1e

    .line 222
    new-instance v7, Lcom/airbnb/android/fragments/groups/CommentFragment$2;

    invoke-direct {v7, p0, p1, v5}, Lcom/airbnb/android/fragments/groups/CommentFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;Landroid/view/MenuItem;Lcom/airbnb/android/models/groups/Reply;)V

    invoke-static {v1, v7}, Lcom/airbnb/android/utils/GroupUtils;->createFlagDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_1e

    .line 195
    nop

    :pswitch_data_78
    .packed-switch 0x7f080537
        :pswitch_1f
        :pswitch_2b
        :pswitch_64
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/groups/CommentFragment;->setHasOptionsMenu(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "groups_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/GroupsUri;

    .line 112
    .local v0, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsUri;->getCommentId()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mCommentId:I

    .line 113
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsUri;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 114
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsUri;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 115
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsUri;->getComment()Lcom/airbnb/android/models/groups/Comment;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    .line 116
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsUri;->getReplyId()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNotificationReplyId:I

    .line 117
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsUri;->isIncludesScrollInformation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mHasNotificationReplyId:Z

    .line 119
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    const v2, 0x7f0e021e

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->setActionBarTitle(I)V

    .line 120
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 121
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->overrideParentIntent(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 174
    move-object v2, p3

    check-cast v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 175
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v5, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v3, v5, -0x1

    .line 176
    .local v3, "position":I
    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    invoke-virtual {v5, v3}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/android/models/groups/Reply;

    .line 177
    .local v4, "reply":Lcom/airbnb/android/models/groups/Reply;
    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Reply;->isSaved()Z

    move-result v5

    if-nez v5, :cond_16

    .line 188
    :goto_15
    return-void

    .line 180
    :cond_16
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const v6, 0x7f100009

    invoke-virtual {v5, v6, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 181
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 182
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    const v5, 0x7f080538

    invoke-interface {p1, v5}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 183
    .local v1, "delete":Landroid/view/MenuItem;
    invoke-virtual {v4, v0}, Lcom/airbnb/android/models/groups/Reply;->isAuthor(Lcom/airbnb/android/models/User;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 184
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_15

    .line 186
    :cond_42
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_15
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    .line 159
    const v0, 0x7f100006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 160
    const v0, 0x7f080539

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mFlag:Landroid/view/MenuItem;

    .line 161
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mFlag:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 162
    const v0, 0x7f080538

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mDelete:Landroid/view/MenuItem;

    .line 163
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 164
    const v0, 0x7f080537

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mShare:Landroid/view/MenuItem;

    .line 165
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mShare:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 166
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    if-eqz v0, :cond_38

    .line 167
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->updateOptionsMenu()V

    .line 169
    :cond_38
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 170
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 132
    const v2, 0x7f030097

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 134
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0801aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyForm:Landroid/view/View;

    .line 135
    const v2, 0x7f0801ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mSubmitReplyButton:Landroid/widget/Button;

    .line 136
    const v2, 0x7f0801ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mNewReplyText:Landroid/widget/EditText;

    .line 137
    const v2, 0x7f0801a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/LoaderListView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 138
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 139
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    .line 141
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 142
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/groups/CommentFragment;->createHeaderView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 143
    .local v0, "header":Landroid/view/View;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;

    .line 145
    new-instance v2, Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mReplies:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Lcom/airbnb/android/adapters/groups/ReplyAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    .line 146
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesAdapter:Lcom/airbnb/android/adapters/groups/ReplyAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 148
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 149
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 150
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mRepliesListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 152
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->refreshView()V

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mViewCreated:Z

    .line 154
    return-object v1
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 126
    invoke-super {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onDestroy()V

    .line 127
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 287
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_68

    .line 327
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_c
    :goto_c
    return v3

    .line 289
    :pswitch_d
    const-string/jumbo v4, "tap_share"

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/CommentFragment;->mComment:Lcom/airbnb/android/models/groups/Comment;

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V

    .line 290
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->onShareCommentPressed()V

    goto :goto_c

    .line 293
    :pswitch_1b
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 294
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_c

    .line 295
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 296
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e0270

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e085b

    new-instance v6, Lcom/airbnb/android/fragments/groups/CommentFragment$4;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/groups/CommentFragment$4;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e00b0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 307
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 308
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_c

    .line 312
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "dialog":Landroid/app/Dialog;
    :pswitch_54
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 313
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_c

    .line 314
    new-instance v4, Lcom/airbnb/android/fragments/groups/CommentFragment$5;

    invoke-direct {v4, p0, p1}, Lcom/airbnb/android/fragments/groups/CommentFragment$5;-><init>(Lcom/airbnb/android/fragments/groups/CommentFragment;Landroid/view/MenuItem;)V

    invoke-static {v1, v4}, Lcom/airbnb/android/utils/GroupUtils;->createFlagDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_c

    .line 287
    nop

    :pswitch_data_68
    .packed-switch 0x7f080537
        :pswitch_d
        :pswitch_1b
        :pswitch_54
    .end packed-switch
.end method
