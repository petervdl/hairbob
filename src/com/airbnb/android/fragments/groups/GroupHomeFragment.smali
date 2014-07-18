.class public Lcom/airbnb/android/fragments/groups/GroupHomeFragment;
.super Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
.source "GroupHomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/groups/GroupHomeFragment$19;,
        Lcom/airbnb/android/fragments/groups/GroupHomeFragment$DisclaimerReadEvent;
    }
.end annotation


# static fields
.field private static final DIALOG_GROUP_JOIN:Ljava/lang/String; = "dialog_group_join"

.field private static final FOLLOW_TAB_INDEX:I = 0x2

.field private static final KEY_GROUP:Ljava/lang/String; = "group"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final RECENT_TAB_INDEX:I = 0x1


# instance fields
.field private currentFeedRequest:Lcom/airbnb/android/requests/groups/FeedRequest;

.field private mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/BaseContent;",
            ">;"
        }
    .end annotation
.end field

.field private mDescriptionText:Landroid/widget/TextView;

.field private mFeedListView:Landroid/widget/ListView;

.field private mFeedLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mGroupId:I

.field private mHasAllFeedItems:Z

.field private mHeaderView:Landroid/view/View;

.field private mHeroImage:Lcom/airbnb/android/views/AirImageView;

.field private mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mJoinButton:Lcom/airbnb/android/views/StickyButton;

.field private mJoinedSincePause:Z

.field private mListBottomPaddingFooter:Landroid/view/View;

.field private mListHeaderFollowTab:Landroid/view/View;

.field private mListHeaderTabFrame:Landroid/widget/FrameLayout;

.field private mListHeaderTabs:Landroid/widget/TabHost;

.field private mLoadingFooter:Landroid/view/View;

.field private mMemberCountNum:Landroid/widget/TextView;

.field private mMemberCountText:Landroid/widget/TextView;

.field private mMemberPanel:Landroid/view/View;

.field private mMembersView:Lcom/airbnb/android/views/PhotoStripView;

.field private mNameText:Landroid/widget/TextView;

.field private mPendingButton:Lcom/airbnb/android/views/StickyButton;

.field private mPostButton:Lcom/airbnb/android/views/StickyButton;

.field private mPurposeButton:Landroid/widget/TextView;

.field private mShare:Landroid/view/MenuItem;

.field private mStickyFollowTab:Landroid/view/View;

.field private mStickyTabFrame:Landroid/widget/FrameLayout;

.field private mStickyTabs:Landroid/widget/TabHost;

.field private mTabTopLast:I

.field private mUnJoin:Landroid/view/MenuItem;

.field private mUri:Lcom/airbnb/android/models/groups/GroupsUri;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;-><init>()V

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHasAllFeedItems:Z

    .line 104
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->RECENT:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .line 105
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinedSincePause:Z

    .line 127
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mTabTopLast:I

    .line 517
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/views/StickyButton;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;

    return-object v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;
    .param p1, "x1"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->joinGroup()V

    return-void
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->showPendingMessage()V

    return-void
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->handleTabScroll()V

    return-void
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onScrollBottom()V

    return-void
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->leaveGroup()V

    return-void
.end method

.method static synthetic access$1600(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onMembershipStatusChanged()V

    return-void
.end method

.method static synthetic access$1700(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->resetFeed()V

    return-void
.end method

.method static synthetic access$1800(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;)Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->hideBadges()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onGroupLoaded()V

    return-void
.end method

.method static synthetic access$2000(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->showPostJoinMessage()V

    return-void
.end method

.method static synthetic access$2102(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinedSincePause:Z

    return p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->finishLoading()V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mLoadingFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHasAllFeedItems:Z

    return p1
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListBottomPaddingFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/adapters/groups/ContentAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private createBottomPaddingFooterView()V
    .registers 6

    .prologue
    .line 398
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListBottomPaddingFooter:Landroid/view/View;

    .line 399
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListBottomPaddingFooter:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 401
    return-void
.end method

.method private createFooterView()Landroid/view/View;
    .registers 4

    .prologue
    .line 823
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f030127

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private createHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 772
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f03012b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    .line 773
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f080337

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mNameText:Landroid/widget/TextView;

    .line 774
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f080338

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mDescriptionText:Landroid/widget/TextView;

    .line 775
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f080339

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPurposeButton:Landroid/widget/TextView;

    .line 776
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f08033a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mMemberPanel:Landroid/view/View;

    .line 777
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f08033b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/PhotoStripView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mMembersView:Lcom/airbnb/android/views/PhotoStripView;

    .line 778
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f08033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mMemberCountNum:Landroid/widget/TextView;

    .line 779
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f08033d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mMemberCountText:Landroid/widget/TextView;

    .line 780
    return-void
.end method

.method private createTabHost(Landroid/widget/TabHost;Landroid/widget/TabHost;)V
    .registers 6
    .param p1, "tabs"    # Landroid/widget/TabHost;
    .param p2, "otherTabs"    # Landroid/widget/TabHost;

    .prologue
    .line 707
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 709
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->POPULAR:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0e0242

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->createTabView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/utils/SimpleTabFactory;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/utils/SimpleTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 711
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->RECENT:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0e0243

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->createTabView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/utils/SimpleTabFactory;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/utils/SimpleTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 713
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->MINE:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0e0241

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->createBadgedTabView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/utils/SimpleTabFactory;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/utils/SimpleTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 716
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 717
    return-void
.end method

.method private createTabs()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x2

    .line 654
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabs:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabs:Landroid/widget/TabHost;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->createTabHost(Landroid/widget/TabHost;Landroid/widget/TabHost;)V

    .line 655
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabs:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabs:Landroid/widget/TabHost;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->createTabHost(Landroid/widget/TabHost;Landroid/widget/TabHost;)V

    .line 656
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyFollowTab:Landroid/view/View;

    .line 657
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabs:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderFollowTab:Landroid/view/View;

    .line 658
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyFollowTab:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderFollowTab:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 660
    return-void
.end method

.method private fetchNextPage()V
    .registers 4

    .prologue
    .line 311
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 315
    :goto_a
    return-void

    .line 314
    :cond_b
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->fetchPageUnsafe()V

    goto :goto_a
.end method

.method private fetchPageUnsafe()V
    .registers 5

    .prologue
    .line 318
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mLoadingFooter:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 319
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->notifyDataSetChanged()V

    .line 321
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v0

    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getFeedOffset()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getFeedRequestListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/requests/groups/FeedRequest;->nextPageFeedRequest(IILcom/airbnb/android/requests/groups/FeedRequest$FeedType;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/FeedRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->currentFeedRequest:Lcom/airbnb/android/requests/groups/FeedRequest;

    .line 322
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->currentFeedRequest:Lcom/airbnb/android/requests/groups/FeedRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FeedRequest;->execute()V

    .line 323
    return-void
.end method

.method private findOrFetchGroup()V
    .registers 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    if-eqz v0, :cond_8

    .line 243
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onGroupLoaded()V

    .line 265
    :cond_7
    :goto_7
    return-void

    .line 244
    :cond_8
    iget v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroupId:I

    if-lez v0, :cond_7

    .line 245
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->startLoading()V

    .line 246
    iget v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroupId:I

    new-instance v1, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-static {v0, v1}, Lcom/airbnb/android/requests/groups/GetGroupRequest;->getGroupRequest(ILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/GetGroupRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/GetGroupRequest;->execute()V

    goto :goto_7
.end method

.method private finishLoading()V
    .registers 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 275
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeroImage:Lcom/airbnb/android/views/AirImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setVisibility(I)V

    .line 276
    return-void
.end method

.method private getFeedOffset()I
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private getFeedRequestListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/FeedRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$3;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    return-object v0
.end method

.method private getJoinGroupRequestListener()Lcom/airbnb/android/requests/RequestListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/JoinGroupRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 858
    new-instance v0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$18;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    return-object v0
.end method

.method private handleTabScroll()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 542
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabFrame:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_32

    .line 543
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 544
    .local v0, "location":[I
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 545
    aget v1, v0, v3

    .line 546
    .local v1, "tabTop":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 548
    iget v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mTabTopLast:I

    if-le v1, v2, :cond_1b

    .line 549
    iput v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mTabTopLast:I

    .line 552
    :cond_1b
    aget v2, v0, v3

    if-gt v1, v2, :cond_33

    .line 553
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 558
    :goto_24
    iget v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mTabTopLast:I

    if-ltz v2, :cond_32

    .line 559
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeroImage:Lcom/airbnb/android/views/AirImageView;

    iget v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mTabTopLast:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/airbnb/android/views/AirImageView;->scrollTo(II)V

    .line 562
    .end local v0    # "location":[I
    .end local v1    # "tabTop":I
    :cond_32
    return-void

    .line 555
    .restart local v0    # "location":[I
    .restart local v1    # "tabTop":I
    :cond_33
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabFrame:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_24
.end method

.method private hideBadges()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x0

    .line 747
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabs:Landroid/widget/TabHost;

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/utils/GroupUtils;->setTabViewBadge(Landroid/view/View;II)V

    .line 748
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabs:Landroid/widget/TabHost;

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/utils/GroupUtils;->setTabViewBadge(Landroid/view/View;II)V

    .line 749
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getNotificationCount()I

    move-result v2

    if-lez v2, :cond_3e

    .line 750
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getBadgeCount()Lcom/airbnb/android/models/BadgeCount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/BadgeCount;->getHostGroups()I

    move-result v1

    .line 751
    .local v1, "oldGlobalBadgeCount":I
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getNotificationCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 752
    .local v0, "newGlobalBadgeCount":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    sget-object v3, Lcom/airbnb/android/models/BadgeCount$BadgeType;->HostGroups:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    invoke-virtual {v2, v3, v0}, Lcom/airbnb/android/AirbnbApi;->adjustBadgeCount(Lcom/airbnb/android/models/BadgeCount$BadgeType;I)V

    .line 753
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v2, v4}, Lcom/airbnb/android/models/groups/Group;->setNotificationCount(I)V

    .line 755
    .end local v0    # "newGlobalBadgeCount":I
    .end local v1    # "oldGlobalBadgeCount":I
    :cond_3e
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v3, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {v3, v4}, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;-><init>(Lcom/airbnb/android/models/groups/Group;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 756
    return-void
.end method

.method private initializePostingBar(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    const v0, 0x7f0801b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPostButton:Lcom/airbnb/android/views/StickyButton;

    .line 528
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPostButton:Lcom/airbnb/android/views/StickyButton;

    const v1, 0x7f0e026b

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 529
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPostButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v1, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$11;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$11;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 539
    return-void
.end method

.method private initializeTabHost(Landroid/widget/TabHost;Landroid/widget/TabHost;)V
    .registers 4
    .param p1, "tabs"    # Landroid/widget/TabHost;
    .param p2, "otherTabs"    # Landroid/widget/TabHost;

    .prologue
    .line 720
    new-instance v0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;

    invoke-direct {v0, p0, p2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$14;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;Landroid/widget/TabHost;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 744
    return-void
.end method

.method private joinGroup()V
    .registers 4

    .prologue
    .line 522
    new-instance v0, Lcom/airbnb/android/requests/groups/JoinGroupRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getJoinGroupRequestListener()Lcom/airbnb/android/requests/RequestListener;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/groups/JoinGroupRequest;-><init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/requests/RequestListener;)V

    .line 523
    .local v0, "joinRequest":Lcom/airbnb/android/requests/groups/JoinGroupRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/JoinGroupRequest;->execute()V

    .line 524
    return-void
.end method

.method private leaveGroup()V
    .registers 4

    .prologue
    .line 624
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 625
    new-instance v0, Lcom/airbnb/android/requests/groups/LeaveGroupRequest;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    new-instance v2, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$13;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/groups/LeaveGroupRequest;-><init>(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/requests/RequestListener;)V

    .line 644
    .local v0, "request":Lcom/airbnb/android/requests/groups/LeaveGroupRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/LeaveGroupRequest;->execute()V

    .line 645
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/GroupsUri;)Lcom/airbnb/android/fragments/groups/GroupHomeFragment;
    .registers 4
    .param p0, "groupsUri"    # Lcom/airbnb/android/models/groups/GroupsUri;

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "groups_uri"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    new-instance v1, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;-><init>()V

    .line 136
    .local v1, "fragment":Lcom/airbnb/android/fragments/groups/GroupHomeFragment;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 137
    return-object v1
.end method

.method private onFollowStatusChanged()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 663
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->hasFollows()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 664
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyFollowTab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 665
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderFollowTab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 674
    :cond_16
    :goto_16
    return-void

    .line 667
    :cond_17
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyFollowTab:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderFollowTab:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 669
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->MINE:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 670
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabs:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 671
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabs:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_16
.end method

.method private onGroupLoaded()V
    .registers 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Group;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->setActionBarTitle(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->setGroup(Lcom/airbnb/android/models/groups/Group;)V

    .line 281
    const-string/jumbo v0, "impressions"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 282
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->updateView()Landroid/view/View;

    .line 283
    return-void
.end method

.method private onMembershipStatusChanged()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 677
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 678
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPostButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPendingButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 681
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onFollowStatusChanged()V

    .line 682
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    if-eqz v0, :cond_27

    .line 683
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 704
    :cond_27
    :goto_27
    return-void

    .line 685
    :cond_28
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->isPending()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 686
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPostButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPendingButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 689
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyFollowTab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderFollowTab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    if-eqz v0, :cond_27

    .line 692
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_27

    .line 695
    :cond_53
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPostButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPendingButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/StickyButton;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyFollowTab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderFollowTab:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    if-eqz v0, :cond_27

    .line 701
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_27
.end method

.method private onScrollBottom()V
    .registers 2

    .prologue
    .line 765
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHasAllFeedItems:Z

    if-eqz v0, :cond_5

    .line 769
    :goto_4
    return-void

    .line 768
    :cond_5
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->fetchNextPage()V

    goto :goto_4
.end method

.method private onSharePressed()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 608
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SEND"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v3, "shareIntent":Landroid/content/Intent;
    const-string/jumbo v6, "text/plain"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "https://airbnb.com/groups/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v7}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 612
    .local v2, "resources":Landroid/content/res/Resources;
    const-string/jumbo v6, "android.intent.extra.TEXT"

    const v7, 0x7f0e06f3

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 614
    .local v0, "currUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_62

    .line 615
    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getName()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, "currUserName":Ljava/lang/String;
    const v6, 0x7f0e06f4

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 617
    .local v4, "subject":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    .end local v1    # "currUserName":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    :cond_62
    const v6, 0x7f0e06f8

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 621
    return-void
.end method

.method private resetFeed()V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 296
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->currentFeedRequest:Lcom/airbnb/android/requests/groups/FeedRequest;

    if-eqz v0, :cond_12

    .line 297
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->currentFeedRequest:Lcom/airbnb/android/requests/groups/FeedRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/FeedRequest;->cancel()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->currentFeedRequest:Lcom/airbnb/android/requests/groups/FeedRequest;

    .line 300
    :cond_12
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHasAllFeedItems:Z

    if-eqz v0, :cond_22

    .line 302
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListBottomPaddingFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 304
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHasAllFeedItems:Z

    .line 305
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 306
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->notifyDataSetChanged()V

    .line 307
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->fetchPageUnsafe()V

    .line 308
    return-void
.end method

.method private setBadges()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 759
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Group;->getNotificationCount()I

    move-result v0

    .line 760
    .local v0, "badgeCount":I
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabs:Landroid/widget/TabHost;

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/utils/GroupUtils;->setTabViewBadge(Landroid/view/View;II)V

    .line 761
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabs:Landroid/widget/TabHost;

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/utils/GroupUtils;->setTabViewBadge(Landroid/view/View;II)V

    .line 762
    return-void
.end method

.method private showPendingMessage()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 835
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 836
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_38

    .line 837
    const v3, 0x7f0e0265

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v6}, Lcom/airbnb/android/models/groups/Group;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 838
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e0563

    new-instance v5, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$17;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$17;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 847
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 848
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 850
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v2    # "message":Ljava/lang/String;
    :cond_38
    return-void
.end method

.method private showPostJoinMessage()V
    .registers 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->isPending()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 828
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->showPendingMessage()V

    .line 832
    :goto_b
    return-void

    .line 830
    :cond_c
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->showWelcomeMessage()V

    goto :goto_b
.end method

.method private showWelcomeMessage()V
    .registers 4

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 854
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->newInstance(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;

    move-result-object v1

    const-string/jumbo v2, "dialog_group_join"

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/fragments/groups/GroupJoinWelcomeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method private startLoading()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 268
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeroImage:Lcom/airbnb/android/views/AirImageView;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/AirImageView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 271
    return-void
.end method

.method private updateHeader()V
    .registers 8

    .prologue
    .line 783
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mNameText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Group;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mDescriptionText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Group;->getPurpose()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mMemberPanel:Landroid/view/View;

    new-instance v5, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$15;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$15;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPurposeButton:Landroid/widget/TextView;

    new-instance v5, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$16;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$16;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v3, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v4}, Lcom/airbnb/android/models/groups/Group;->getMemberships()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/Membership;

    .line 806
    .local v2, "membership":Lcom/airbnb/android/models/groups/Membership;
    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Membership;->getUser()Lcom/airbnb/android/models/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getPictureUrlForThumbnail()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 808
    .end local v2    # "membership":Lcom/airbnb/android/models/groups/Membership;
    :cond_51
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mMembersView:Lcom/airbnb/android/views/PhotoStripView;

    invoke-virtual {v4, v3}, Lcom/airbnb/android/views/PhotoStripView;->setImageUrls(Ljava/util/List;)V

    .line 809
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mMemberCountNum:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v5}, Lcom/airbnb/android/models/groups/Group;->getMembersCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0012

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v6}, Lcom/airbnb/android/models/groups/Group;->getMembersCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "memberCountText":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mMemberCountText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 812
    return-void
.end method

.method private updateTabs()V
    .registers 3

    .prologue
    .line 648
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabs:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabs:Landroid/widget/TabHost;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->initializeTabHost(Landroid/widget/TabHost;Landroid/widget/TabHost;)V

    .line 649
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabs:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabs:Landroid/widget/TabHost;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->initializeTabHost(Landroid/widget/TabHost;Landroid/widget/TabHost;)V

    .line 650
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->setBadges()V

    .line 651
    return-void
.end method

.method private updateView()Landroid/view/View;
    .registers 4

    .prologue
    .line 404
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mView:Landroid/view/View;

    .line 405
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->updateHeader()V

    .line 407
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeroImage:Lcom/airbnb/android/views/AirImageView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getHeroImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirImageView;->setImageUrl(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;

    const v2, 0x7f0e0245

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 410
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v2, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$4;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPendingButton:Lcom/airbnb/android/views/StickyButton;

    const v2, 0x7f0e0266

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setTitle(I)V

    .line 426
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPendingButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v2, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$5;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$5;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->updateTabs()V

    .line 433
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->initializePostingBar(Landroid/view/View;)V

    .line 434
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onMembershipStatusChanged()V

    .line 436
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$6;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$6;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 449
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$7;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$7;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 469
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mShare:Landroid/view/MenuItem;

    if-eqz v1, :cond_5b

    .line 470
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mShare:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 472
    :cond_5b
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->fetchNextPage()V

    .line 473
    return-object v0
.end method


# virtual methods
.method protected createBadgedTabView(II)Landroid/view/View;
    .registers 4
    .param p1, "titleId"    # I
    .param p2, "badgeCount"    # I

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/airbnb/android/utils/GroupUtils;->createBadgedTabView(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createTabView(I)Landroid/view/View;
    .registers 5
    .param p1, "titleId"    # I

    .prologue
    .line 815
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Light:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    invoke-static {v0, v1, p1, v2}, Lcom/airbnb/android/utils/TabHelper;->createTabView(Landroid/content/Context;IILcom/airbnb/android/utils/TabHelper$TabStyle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUri:Lcom/airbnb/android/models/groups/GroupsUri;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsUri;->isForceBack()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 364
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->overrideParentIntent(Landroid/content/Intent;)V

    .line 366
    :cond_e
    return-void
.end method

.method public onContentCreatedEvent(Lcom/airbnb/android/fragments/groups/NewContentFragment$ContentCreatedEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/airbnb/android/fragments/groups/NewContentFragment$ContentCreatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p1, Lcom/airbnb/android/fragments/groups/NewContentFragment$ContentCreatedEvent;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 214
    .local v0, "content":Lcom/airbnb/android/models/groups/BaseContent;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 215
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->notifyDataSetChanged()V

    .line 216
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 222
    return-void
.end method

.method public onContentDeletedEvent(Lcom/airbnb/android/fragments/groups/BaseContentFragment$BaseContentDeletedEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/airbnb/android/fragments/groups/BaseContentFragment$BaseContentDeletedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 226
    iget-object v0, p1, Lcom/airbnb/android/fragments/groups/BaseContentFragment$BaseContentDeletedEvent;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 227
    .local v0, "content":Lcom/airbnb/android/models/groups/BaseContent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 228
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 229
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 230
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->notifyDataSetChanged()V

    .line 232
    :cond_15
    return-void
.end method

.method public onContentLoadedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;)V
    .registers 5
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p1, Lcom/airbnb/android/models/groups/GroupsEvent$BaseContentLoadedEvent;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 204
    .local v0, "content":Lcom/airbnb/android/models/groups/BaseContent;
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 205
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 206
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->notifyDataSetChanged()V

    .line 209
    :cond_15
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->setHasOptionsMenu(Z)V

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    .line 146
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 147
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri;->newCommunityHomeUri()Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/airbnb/android/activities/MainActivity;->intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->overrideParentIntent(Landroid/content/Intent;)V

    .line 148
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "groups_uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/GroupsUri;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUri:Lcom/airbnb/android/models/groups/GroupsUri;

    .line 149
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUri:Lcom/airbnb/android/models/groups/GroupsUri;

    if-nez v1, :cond_38

    .line 173
    :cond_37
    :goto_37
    return-void

    .line 152
    :cond_38
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUri:Lcom/airbnb/android/models/groups/GroupsUri;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getDrilldownLevel()Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    move-result-object v0

    .line 153
    .local v0, "drilldownLevel":Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;
    sget-object v1, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$19;->$SwitchMap$com$airbnb$android$models$groups$GroupsUri$GroupDrilldownLevel:[I

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_96

    .line 169
    :goto_49
    if-eqz p1, :cond_37

    .line 170
    const-string/jumbo v1, "group"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/models/groups/Group;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 171
    const-string/jumbo v1, "group_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroupId:I

    goto :goto_37

    .line 155
    :pswitch_60
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_49

    .line 158
    :pswitch_68
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUri:Lcom/airbnb/android/models/groups/GroupsUri;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getGroupId()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroupId:I

    .line 159
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUri:Lcom/airbnb/android/models/groups/GroupsUri;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/GroupsUri;->getGroup()Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    goto :goto_49

    .line 162
    :pswitch_79
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUri:Lcom/airbnb/android/models/groups/GroupsUri;

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_49

    .line 165
    :pswitch_87
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUri:Lcom/airbnb/android/models/groups/GroupsUri;

    invoke-static {v1, v2}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_49

    .line 153
    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_60
        :pswitch_68
        :pswitch_79
        :pswitch_87
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 566
    const v2, 0x7f100008

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 567
    const v2, 0x7f08053c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    .line 568
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    const v2, 0x7f080537

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mShare:Landroid/view/MenuItem;

    .line 570
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mShare:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 571
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    if-eqz v2, :cond_43

    .line 572
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mUnJoin:Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v3}, Lcom/airbnb/android/models/groups/Group;->isPending()Z

    move-result v3

    if-eqz v3, :cond_3b

    :cond_3a
    move v0, v1

    :cond_3b
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 573
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mShare:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 575
    :cond_43
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 576
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v2, 0x1020012

    const/4 v4, 0x0

    .line 370
    const v0, 0x7f030099

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mView:Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeroImage:Lcom/airbnb/android/views/AirImageView;

    .line 372
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinButton:Lcom/airbnb/android/views/StickyButton;

    .line 373
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mPendingButton:Lcom/airbnb/android/views/StickyButton;

    .line 374
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabFrame:Landroid/widget/FrameLayout;

    .line 375
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mStickyTabs:Landroid/widget/TabHost;

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->createHeaderView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 377
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    const v1, 0x7f08033e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabFrame:Landroid/widget/FrameLayout;

    .line 378
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mListHeaderTabs:Landroid/widget/TabHost;

    .line 379
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/LoaderListView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 380
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->finishLoaderImmediate()V

    .line 381
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    .line 383
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 384
    new-instance v0, Lcom/airbnb/android/adapters/groups/ContentAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/adapters/groups/ContentAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    .line 385
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedType:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/groups/ContentAdapter;->setFeedType(Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;)V

    .line 386
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mContentAdapter:Lcom/airbnb/android/adapters/groups/ContentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 387
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 388
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mFeedListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b00b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 390
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->createFooterView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mLoadingFooter:Landroid/view/View;

    .line 391
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->createBottomPaddingFooterView()V

    .line 392
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->createTabs()V

    .line 393
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->findOrFetchGroup()V

    .line 394
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onDestroy()V

    .line 186
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public onGroupLoadFailed()V
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 236
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_9

    .line 237
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 239
    :cond_9
    return-void
.end method

.method public onGroupLoadFailedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadFailedEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadFailedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onGroupLoadFailed()V

    .line 199
    return-void
.end method

.method public onGroupLoadedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;)V
    .registers 3
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 191
    iget-object v0, p1, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 192
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroupId:I

    .line 193
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onGroupLoaded()V

    .line 194
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 580
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_4c

    .line 602
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_c
    return v2

    .line 582
    :sswitch_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 583
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e0280

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e085b

    new-instance v5, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$12;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$12;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0e00b0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 594
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 595
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_c

    .line 598
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/Dialog;
    :sswitch_40
    const-string/jumbo v3, "tap_share"

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v3, v4}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V

    .line 599
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->onSharePressed()V

    goto :goto_c

    .line 580
    :sswitch_data_4c
    .sparse-switch
        0x7f080537 -> :sswitch_40
        0x7f08053c -> :sswitch_d
    .end sparse-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 287
    invoke-super {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onResume()V

    .line 288
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinedSincePause:Z

    if-eqz v0, :cond_d

    .line 289
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->showPostJoinMessage()V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mJoinedSincePause:Z

    .line 292
    :cond_d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 179
    const-string/jumbo v0, "group"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 180
    const-string/jumbo v0, "group_id"

    iget v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroupId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method public showLegalDisclaimerDialog()V
    .registers 10

    .prologue
    const v8, 0x7f0e027a

    .line 477
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 478
    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_6c

    .line 479
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e027b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0e002f

    new-instance v7, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$9;

    invoke-direct {v7, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$9;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$8;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$8;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 498
    .local v2, "dialog":Landroid/app/Dialog;
    new-instance v5, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$10;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$10;-><init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 505
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 506
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 507
    const v5, 0x102000b

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 508
    .local v3, "msgTxt":Landroid/widget/TextView;
    const v5, 0x4154cccd

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 509
    const-string/jumbo v5, "sans-serif-light"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 510
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 511
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(I)V

    .line 512
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    .line 513
    .local v4, "padding":I
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 515
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "dialog":Landroid/app/Dialog;
    .end local v3    # "msgTxt":Landroid/widget/TextView;
    .end local v4    # "padding":I
    :cond_6c
    return-void
.end method
