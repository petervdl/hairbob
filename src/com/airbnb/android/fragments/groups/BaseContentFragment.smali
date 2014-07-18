.class public abstract Lcom/airbnb/android/fragments/groups/BaseContentFragment;
.super Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
.source "BaseContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/groups/BaseContentFragment$18;,
        Lcom/airbnb/android/fragments/groups/BaseContentFragment$BaseContentDeletedEvent;
    }
.end annotation


# static fields
.field public static final ARGS_COMMENT_ID:Ljava/lang/String; = "comment_id"

.field public static final ARGS_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final ARGS_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final SAVED_CONTENT:Ljava/lang/String; = "saved_content"


# instance fields
.field protected mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

.field private mCommentAdapter:Lcom/airbnb/android/adapters/groups/CommentAdapter;

.field private mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

.field private mComments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mCommentsListView:Landroid/widget/ListView;

.field private mCommentsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mContent:Lcom/airbnb/android/models/groups/BaseContent;

.field private mContentId:I

.field private mContentType:Ljava/lang/String;

.field private mDelete:Landroid/view/MenuItem;

.field private mFlag:Landroid/view/MenuItem;

.field private mFollow:Landroid/view/MenuItem;

.field protected mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mHasNotificationCommentId:Z

.field private mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

.field private mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

.field private mNewCommentForm:Landroid/view/View;

.field private mNewCommentText:Landroid/widget/EditText;

.field private mNotificationCommentId:I

.field private mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

.field private mShare:Landroid/view/MenuItem;

.field private mStatusFooter:Landroid/view/View;

.field private mSubmitCommentButton:Landroid/widget/Button;

.field private mUnfollow:Landroid/view/MenuItem;

.field private mViewPager:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mHasNotificationCommentId:Z

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/LoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->isTextEntered()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->deleteContent()V

    return-void
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getFlagContentRequestListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/view/MenuItem;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFollow:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/view/MenuItem;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mUnfollow:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/ClickableViewPager;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/interfaces/ViewPagerAbsListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mViewPager:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getLikeContentRequestListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/IconCountButton;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/views/groups/ContentStatusCounts;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateStatusFooter()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateSubmitButton(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/EditText;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mComments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/adapters/groups/CommentAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentAdapter:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getContentLoadedEventForComment()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getCreateCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v0

    return-object v0
.end method

.method private attemptToFindData()Z
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private deleteContent()V
    .registers 5

    .prologue
    .line 504
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    new-instance v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$9;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$9;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-static {v0, v1}, Lcom/airbnb/android/requests/groups/DeleteContentRequest;->deleteRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/DeleteContentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/DeleteContentRequest;->execute()V

    .line 520
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$BaseContentDeletedEvent;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-direct {v1, v2, v3}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$BaseContentDeletedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 521
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 522
    return-void
.end method

.method private fetchData()V
    .registers 5

    .prologue
    .line 214
    iget v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContentId:I

    if-gtz v1, :cond_5

    .line 239
    :goto_4
    return-void

    .line 217
    :cond_5
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 218
    iget v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContentId:I

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContentType:Ljava/lang/String;

    new-instance v3, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/requests/groups/GetContentRequest;->getContentRequest(ILjava/lang/String;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/GetContentRequest;

    move-result-object v0

    .line 238
    .local v0, "request":Lcom/airbnb/android/requests/groups/GetContentRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/GetContentRequest;->execute()V

    goto :goto_4
.end method

.method private findOrFetchData()V
    .registers 2

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->attemptToFindData()Z

    move-result v0

    .line 202
    .local v0, "allDataLoaded":Z
    if-eqz v0, :cond_a

    .line 203
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onDataLoaded()V

    .line 207
    :goto_9
    return-void

    .line 205
    :cond_a
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->fetchData()V

    goto :goto_9
.end method

.method private followContent()V
    .registers 3

    .prologue
    .line 478
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFollow:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 479
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    new-instance v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$8;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-static {v0, v1}, Lcom/airbnb/android/requests/groups/FollowContentRequest;->createRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/FollowContentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FollowContentRequest;->execute()V

    .line 501
    return-void
.end method

.method private getContentLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    .registers 3

    .prologue
    .line 686
    new-instance v0, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v0, v1}, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    .line 687
    .local v0, "visitor":Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 688
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;->getLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v1

    return-object v1
.end method

.method private getContentLoadedEventForComment()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    .registers 4

    .prologue
    .line 692
    new-instance v1, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v1, v2}, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    .line 693
    .local v1, "visitor":Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 694
    invoke-virtual {v1}, Lcom/airbnb/android/requests/groups/ContentLoadedEventVisitor;->getLoadedEvent()Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    move-result-object v0

    .line 695
    .local v0, "event":Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;->mForNewComment:Z

    .line 696
    return-object v0
.end method

.method private getCreateCommentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/CreateCommentRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    new-instance v0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$15;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    return-object v0
.end method

.method private getFlagContentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/FlagContentRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    new-instance v0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$17;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$17;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    return-object v0
.end method

.method private getLikeContentRequestListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/LikeContentRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 729
    new-instance v0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$16;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    return-object v0
.end method

.method private hideView()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 172
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentForm:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    return-void
.end method

.method private initializeOptionsMenu()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 377
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/BaseContent;->isFlaggedBy()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 378
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFlag:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 382
    :goto_f
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/BaseContent;->isFollowedBy()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 383
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFollow:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 384
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mUnfollow:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 389
    :goto_21
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 390
    .local v0, "currentUser":Lcom/airbnb/android/models/User;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/models/groups/BaseContent;->isAuthor(Lcom/airbnb/android/models/User;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 391
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    :goto_3a
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mShare:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 396
    return-void

    .line 380
    .end local v0    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_40
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFlag:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_f

    .line 386
    :cond_46
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mUnfollow:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 387
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFollow:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_21

    .line 393
    .restart local v0    # "currentUser":Lcom/airbnb/android/models/User;
    :cond_51
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3a
.end method

.method private isTextEntered()Z
    .registers 3

    .prologue
    .line 673
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
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

.method private refreshView()V
    .registers 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->hideView()V

    .line 168
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->findOrFetchData()V

    .line 169
    return-void
.end method

.method private resetAdapter()V
    .registers 3

    .prologue
    .line 564
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mComments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 565
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mComments:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 566
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentAdapter:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->notifyDataSetChanged()V

    .line 567
    return-void
.end method

.method private scrollToNotificationPosition()V
    .registers 6

    .prologue
    .line 547
    iget-boolean v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mHasNotificationCommentId:Z

    if-eqz v3, :cond_32

    .line 548
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/BaseContent;->getComments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Comment;

    .line 549
    .local v0, "comment":Lcom/airbnb/android/models/groups/Comment;
    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Comment;->getId()I

    move-result v3

    iget v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNotificationCommentId:I

    if-ne v3, v4, :cond_e

    .line 550
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentAdapter:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    invoke-virtual {v3, v0}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 551
    .local v2, "position":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    new-instance v4, Lcom/airbnb/android/fragments/groups/BaseContentFragment$10;

    invoke-direct {v4, p0, v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$10;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;I)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 561
    .end local v0    # "comment":Lcom/airbnb/android/models/groups/Comment;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "position":I
    :cond_32
    return-void
.end method

.method private unfollowContent()V
    .registers 3

    .prologue
    .line 451
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mUnfollow:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 452
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    new-instance v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$7;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$7;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-static {v0, v1}, Lcom/airbnb/android/requests/groups/FollowContentRequest;->destroyRequest(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/FollowContentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FollowContentRequest;->execute()V

    .line 475
    return-void
.end method

.method private updateCommentForm()V
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 303
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->isTextEntered()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateSubmitButton(Z)V

    .line 304
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mSubmitCommentButton:Landroid/widget/Button;

    new-instance v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$3;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;

    new-instance v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$4;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 355
    return-void
.end method

.method private updateCommentsList()V
    .registers 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    new-instance v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$11;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$11;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 586
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    new-instance v1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$12;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$12;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 599
    return-void
.end method

.method private updateContentFooter()V
    .registers 8

    .prologue
    .line 602
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    const-string/jumbo v5, "content_page"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/airbnb/android/views/groups/AuthorView;->setAuthorable(Lcom/airbnb/android/models/groups/Authorable;Lcom/airbnb/android/models/groups/Group;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 603
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 604
    .local v1, "currentUser":Lcom/airbnb/android/models/User;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/BaseContent;->getLikesCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumLikes(I)V

    .line 605
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v3, v1}, Lcom/airbnb/android/models/groups/BaseContent;->isLikedBy(Lcom/airbnb/android/models/User;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 606
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/IconCountButton;->setPressable(Z)V

    .line 607
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    new-instance v3, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$13;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/IconCountButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 632
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/BaseContent;->getDiscussionSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumComments(I)V

    .line 633
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/IconCountButton;->updateState(Z)V

    .line 634
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/groups/IconCountButton;->setPressable(Z)V

    .line 635
    new-instance v0, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$14;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    .line 653
    .local v0, "commentListener":Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/groups/IconCountButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateStatusFooter()V

    .line 655
    return-void
.end method

.method private updateStatusFooter()V
    .registers 3

    .prologue
    .line 771
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    if-eqz v0, :cond_13

    .line 772
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    invoke-virtual {v0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 773
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mStatusFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 778
    :cond_13
    :goto_13
    return-void

    .line 775
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mStatusFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13
.end method

.method private updateSubmitButton(Z)V
    .registers 6
    .param p1, "isEnabled"    # Z

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 679
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_1b

    .line 680
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mSubmitCommentButton:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 681
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mSubmitCommentButton:Landroid/widget/Button;

    const v2, 0x7f020210

    invoke-static {p1}, Lcom/airbnb/android/utils/MiscUtils;->getSubmitColorResourceId(Z)I

    move-result v3

    invoke-static {v2, v3}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/utils/MiscUtils;->apiSetBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 683
    :cond_1b
    return-void
.end method


# virtual methods
.method protected abstract createHeaderView()Landroid/view/View;
.end method

.method protected final getContent()Lcom/airbnb/android/models/groups/BaseContent;
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    return-object v0
.end method

.method protected final inflateHeaderView(II)Landroid/view/View;
    .registers 7
    .param p1, "containerLayoutId"    # I
    .param p2, "contentLayoutId"    # I

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 661
    .local v1, "header":Landroid/view/View;
    const v2, 0x7f0802e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/groups/AuthorView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

    .line 662
    const v2, 0x7f0802e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/groups/IconCountButton;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    .line 663
    const v2, 0x7f0802e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/groups/IconCountButton;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentCountButton:Lcom/airbnb/android/views/groups/IconCountButton;

    .line 664
    const v2, 0x7f0802e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    .line 665
    const v2, 0x7f0802e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mStatusFooter:Landroid/view/View;

    .line 667
    const v2, 0x7f0802e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 668
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 669
    return-object v1
.end method

.method protected onContentLoadFailedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$ContentLoadFailedEvent;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onDataLoadFailed()V

    .line 279
    return-void
.end method

.method protected onContentLoadedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;

    .prologue
    .line 267
    iget-object v0, p1, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 268
    iget-object v0, p1, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 269
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/BaseContent;->getId()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContentId:I

    .line 270
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/BaseContent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContentType:Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->onDataLoaded()V

    .line 272
    iget-boolean v0, p1, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;->mForNewComment:Z

    if-eqz v0, :cond_23

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateSubmitButton(Z)V

    .line 275
    :cond_23
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 108
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->setHasOptionsMenu(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "groups_uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/GroupsUri;

    .line 111
    .local v1, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getDrilldownLevel()Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    move-result-object v0

    .line 113
    .local v0, "drilldownLevel":Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mComments:Ljava/util/ArrayList;

    .line 114
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    const v3, 0x7f0e021f

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->setActionBarTitle(I)V

    .line 115
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v2, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 116
    sget-object v2, Lcom/airbnb/android/fragments/groups/BaseContentFragment$18;->$SwitchMap$com$airbnb$android$models$groups$GroupsUri$GroupDrilldownLevel:[I

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_a6

    .line 140
    :goto_37
    if-eqz p1, :cond_44

    .line 141
    const-string/jumbo v2, "saved_content"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/BaseContent;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 143
    :cond_44
    return-void

    .line 118
    :pswitch_45
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_37

    .line 121
    :pswitch_4d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_37

    .line 124
    :pswitch_55
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getContentId()I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContentId:I

    .line 125
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContentType:Ljava/lang/String;

    .line 126
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getCommentId()I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNotificationCommentId:I

    .line 127
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->isIncludesScrollInformation()Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mHasNotificationCommentId:Z

    .line 128
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getContent()Lcom/airbnb/android/models/groups/BaseContent;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 129
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 130
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->overrideParentIntent(Landroid/content/Intent;)V

    goto :goto_37

    .line 133
    :pswitch_8b
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getContentType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContentType:Ljava/lang/String;

    .line 134
    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getCommentId()I

    move-result v2

    iput v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNotificationCommentId:I

    .line 135
    iput-boolean v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mHasNotificationCommentId:Z

    .line 136
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/airbnb/android/activities/groups/GroupCommentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_37

    .line 116
    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_45
        :pswitch_4d
        :pswitch_55
        :pswitch_8b
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x0

    .line 359
    const v0, 0x7f100007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 360
    const v0, 0x7f080539

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFlag:Landroid/view/MenuItem;

    .line 361
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFlag:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    const v0, 0x7f08053a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFollow:Landroid/view/MenuItem;

    .line 363
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFollow:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 364
    const v0, 0x7f08053b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mUnfollow:Landroid/view/MenuItem;

    .line 365
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mUnfollow:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    const v0, 0x7f080538

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mDelete:Landroid/view/MenuItem;

    .line 367
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mDelete:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 368
    const v0, 0x7f080537

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mShare:Landroid/view/MenuItem;

    .line 369
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mShare:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 370
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    if-eqz v0, :cond_54

    .line 371
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->initializeOptionsMenu()V

    .line 373
    :cond_54
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 374
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 178
    const v2, 0x7f030098

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 179
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f0801af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentText:Landroid/widget/EditText;

    .line 180
    const v2, 0x7f0801b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mSubmitCommentButton:Landroid/widget/Button;

    .line 182
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->createHeaderView()Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "header":Landroid/view/View;
    const v2, 0x7f0801ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/LoaderListView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 184
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 185
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    .line 186
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/LoaderListView;->getViewPagerListView()Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mViewPager:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    .line 187
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 188
    new-instance v2, Lcom/airbnb/android/adapters/groups/CommentAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mComments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/airbnb/android/adapters/groups/CommentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/support/v4/app/FragmentManager;)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentAdapter:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    .line 189
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentAdapter:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 191
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 192
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 193
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 195
    const v2, 0x7f0801ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentForm:Landroid/view/View;

    .line 196
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->refreshView()V

    .line 197
    return-object v1
.end method

.method protected final onDataLoadFailed()V
    .registers 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 260
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_9

    .line 261
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 263
    :cond_9
    return-void
.end method

.method protected onDataLoaded()V
    .registers 5

    .prologue
    .line 245
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v2, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v2, v3}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 246
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentAdapter:Lcom/airbnb/android/adapters/groups/CommentAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/groups/CommentAdapter;->setGroup(Lcom/airbnb/android/models/groups/Group;)V

    .line 247
    const-string/jumbo v1, "impressions"

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 248
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 249
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3c

    .line 250
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v2}, Lcom/airbnb/android/models/groups/GroupsUri;->newGroupHomeUri(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/airbnb/android/activities/groups/GroupActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->overrideParentIntent(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateView()V

    .line 252
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mFlag:Landroid/view/MenuItem;

    if-eqz v1, :cond_3c

    .line 253
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->initializeOptionsMenu()V

    .line 256
    :cond_3c
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 154
    invoke-super {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onDestroy()V

    .line 155
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 156
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 400
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_76

    .line 446
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :cond_c
    :goto_c
    return v3

    .line 402
    :pswitch_d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 403
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_c

    .line 404
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0e0271

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e085b

    new-instance v6, Lcom/airbnb/android/fragments/groups/BaseContentFragment$5;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$5;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e00b0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 416
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 417
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_c

    .line 421
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "dialog":Landroid/app/Dialog;
    :pswitch_46
    const-string/jumbo v4, "tap_follow"

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 422
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->followContent()V

    goto :goto_c

    .line 425
    :pswitch_54
    const-string/jumbo v4, "tap_unfollow"

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-static {v4, v5, v6}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 426
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->unfollowContent()V

    goto :goto_c

    .line 429
    :pswitch_62
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 430
    .restart local v1    # "context":Landroid/content/Context;
    if-eqz v1, :cond_c

    .line 431
    new-instance v4, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;

    invoke-direct {v4, p0, p1}, Lcom/airbnb/android/fragments/groups/BaseContentFragment$6;-><init>(Lcom/airbnb/android/fragments/groups/BaseContentFragment;Landroid/view/MenuItem;)V

    invoke-static {v1, v4}, Lcom/airbnb/android/utils/GroupUtils;->createFlagDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_c

    .line 400
    nop

    :pswitch_data_76
    .packed-switch 0x7f080538
        :pswitch_d
        :pswitch_62
        :pswitch_46
        :pswitch_54
    .end packed-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 160
    invoke-super {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onResume()V

    .line 161
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    if-eqz v0, :cond_e

    .line 162
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mViewPager:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 164
    :cond_e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    const-string/jumbo v0, "saved_content"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 150
    return-void
.end method

.method public setPhotoPager(Lcom/airbnb/android/views/ClickableViewPager;)V
    .registers 3
    .param p1, "photoPager"    # Lcom/airbnb/android/views/ClickableViewPager;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mPhotoPager:Lcom/airbnb/android/views/ClickableViewPager;

    .line 767
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mViewPager:Lcom/airbnb/android/interfaces/ViewPagerAbsListView;

    invoke-interface {v0, p1}, Lcom/airbnb/android/interfaces/ViewPagerAbsListView;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 768
    return-void
.end method

.method protected final updateContent(Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 2
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 530
    return-void
.end method

.method protected updateView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 533
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateCommentsList()V

    .line 534
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 535
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateCommentForm()V

    .line 536
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentForm:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 540
    :goto_14
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->updateContentFooter()V

    .line 541
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->resetAdapter()V

    .line 542
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mCommentsListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 543
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->scrollToNotificationPosition()V

    .line 544
    return-void

    .line 538
    :cond_23
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/BaseContentFragment;->mNewCommentForm:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method
