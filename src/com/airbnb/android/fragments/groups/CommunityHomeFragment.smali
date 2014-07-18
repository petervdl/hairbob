.class public Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "CommunityHomeFragment.java"


# static fields
.field private static final KEY_MY_GROUPS:Ljava/lang/String; = "my_groups"

.field private static final KEY_TOP_RECOMMENDED_GROUPS:Ljava/lang/String; = "top_recommended_groups"


# instance fields
.field private mEnableInfiniteScroll:Z

.field private mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

.field private mGroupsListView:Landroid/widget/ListView;

.field private mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

.field private mHasAllRecommendedGroups:Z

.field private mHasIntroductionHeader:Z

.field private mInfiniteRecommendationSections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/android/models/groups/GroupsSection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLoadingFooter:Landroid/view/View;

.field private mMyGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation
.end field

.field private mTopRecommendedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    .line 58
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mEnableInfiniteScroll:Z

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mHasAllRecommendedGroups:Z

    .line 62
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mHasIntroductionHeader:Z

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mHasIntroductionHeader:Z

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mEnableInfiniteScroll:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->loadTopRecommendedGroups()V

    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mEnableInfiniteScroll:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mHasAllRecommendedGroups:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mLoadingFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->onScrollBottom()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->hideFooter(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/views/LoaderListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$702(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Lcom/airbnb/android/adapters/groups/GroupAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private checkIfAnyStaleUnjoinedGroup(Lcom/airbnb/android/models/groups/Group;)Z
    .registers 6
    .param p1, "updatedGroup"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    const/4 v2, 0x1

    .line 343
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->checkIfStaleUnjoinedGroup(Lcom/airbnb/android/models/groups/Group;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 351
    :goto_9
    return v2

    .line 346
    :cond_a
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 347
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;"
    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->checkIfStaleUnjoinedGroup(Lcom/airbnb/android/models/groups/Group;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_9

    .line 351
    .end local v0    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;"
    :cond_27
    const/4 v2, 0x0

    goto :goto_9
.end method

.method private checkIfStaleJoinedGroup(Lcom/airbnb/android/models/groups/Group;)Z
    .registers 4
    .param p1, "updatedGroup"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 329
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 330
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 331
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isPending()Z

    move-result v1

    if-nez v1, :cond_21

    .line 332
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 333
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :goto_1f
    const/4 v1, 0x1

    .line 339
    :goto_20
    return v1

    .line 335
    :cond_21
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f

    .line 339
    :cond_27
    const/4 v1, 0x0

    goto :goto_20
.end method

.method private checkIfStaleUnjoinedGroup(Lcom/airbnb/android/models/groups/Group;Ljava/util/List;)Z
    .registers 5
    .param p1, "updatedGroup"    # Lcom/airbnb/android/models/groups/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/groups/Group;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 355
    .local p2, "unjoinedGroups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 356
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_21

    .line 357
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 358
    :cond_13
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 359
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    :goto_1b
    const/4 v1, 0x1

    .line 365
    :goto_1c
    return v1

    .line 361
    :cond_1d
    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 365
    :cond_21
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method private createFooterViews()V
    .registers 4

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f030127

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mLoadingFooter:Landroid/view/View;

    .line 254
    return-void
.end method

.method private fetchNextPage()V
    .registers 4

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mHasAllRecommendedGroups:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    .line 261
    :goto_e
    return-void

    .line 260
    :cond_f
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->fetchPageUnsafe()V

    goto :goto_e
.end method

.method private fetchPageUnsafe()V
    .registers 4

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->showFooter()V

    .line 265
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->notifyDataSetChanged()V

    .line 266
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    new-instance v2, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$5;-><init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V

    invoke-static {v1, v2}, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->moreRecommendedGroupsRequest(Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;

    move-result-object v0

    .line 299
    .local v0, "recommendedRequest":Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/groups/InfiniteRecommendedGroupsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 300
    return-void
.end method

.method private hideFooter(Z)V
    .registers 4
    .param p1, "remove"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mLoadingFooter:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 177
    if-eqz p1, :cond_e

    .line 178
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 183
    :cond_d
    :goto_d
    return-void

    .line 180
    :cond_e
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mLoadingFooter:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d
.end method

.method private loadMyGroups()V
    .registers 3

    .prologue
    .line 219
    new-instance v1, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$4;-><init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V

    invoke-static {v1}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->myGroupsRequest(Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/MyGroupsRequest;

    move-result-object v0

    .line 245
    .local v0, "yoursRequest":Lcom/airbnb/android/requests/groups/MyGroupsRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/groups/MyGroupsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 246
    return-void
.end method

.method private loadTopRecommendedGroups()V
    .registers 3

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->showFooter()V

    .line 193
    new-instance v1, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$3;-><init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V

    invoke-static {v1}, Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;->topRecommendedGroupsRequest(Lcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;

    move-result-object v0

    .line 215
    .local v0, "recommendedRequest":Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;
    invoke-virtual {v0, p0}, Lcom/airbnb/android/requests/groups/TopRecommendedGroupsRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 216
    return-void
.end method

.method private markAsDisclaimerUneeded(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/groups/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/groups/Group;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Group;

    .line 324
    .local v0, "group":Lcom/airbnb/android/models/groups/Group;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/groups/Group;->setNeedsDisclaimer(Z)V

    goto :goto_4

    .line 326
    .end local v0    # "group":Lcom/airbnb/android/models/groups/Group;
    :cond_15
    return-void
.end method

.method private onScrollBottom()V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->fetchNextPage()V

    .line 250
    return-void
.end method

.method private showFooter()V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mLoadingFooter:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 187
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mLoadingFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    :cond_a
    return-void
.end method

.method private showGroupsFtueIfNeeded()V
    .registers 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeGroupsFtue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 171
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/activities/groups/GroupsFtue;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->startActivity(Landroid/content/Intent;)V

    .line 173
    :cond_15
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    .line 71
    new-instance v0, Lcom/airbnb/android/adapters/groups/GroupAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/adapters/groups/GroupAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    .line 72
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 74
    if-eqz p1, :cond_48

    .line 75
    const-string/jumbo v0, "my_groups"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    .line 76
    const-string/jumbo v0, "top_recommended_groups"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    .line 78
    :cond_48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 96
    const v3, 0x7f030078

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->showGroupsFtueIfNeeded()V

    .line 100
    const v3, 0x7f080167

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/LoaderListView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    .line 101
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;

    .line 102
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 103
    .local v1, "transparentSelector":Landroid/graphics/drawable/ColorDrawable;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->createFooterViews()V

    .line 105
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mLoadingFooter:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 106
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;

    new-instance v4, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 127
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->startLoader()V

    .line 130
    :cond_5c
    new-instance v0, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    new-instance v4, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;)V

    invoke-direct {v0, v3, v4}, Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;-><init>(Landroid/widget/FrameLayout;Landroid/widget/AbsListView$OnScrollListener;)V

    .line 148
    .local v0, "scrollListener":Lcom/airbnb/android/utils/StickyHeaderOnScrollListener;
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 150
    if-eqz p3, :cond_8c

    .line 151
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 152
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupsLoaderListView:Lcom/airbnb/android/views/LoaderListView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderListView;->finishLoader()V

    .line 154
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->resetGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 155
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->notifyDataSetChanged()V

    .line 156
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mEnableInfiniteScroll:Z

    .line 159
    :cond_8c
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 160
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->loadMyGroups()V

    .line 162
    :cond_97
    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 163
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->loadTopRecommendedGroups()V

    .line 166
    :cond_a2
    return-object v2
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onDestroy()V

    .line 91
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public onDisclaimerReadEvent(Lcom/airbnb/android/fragments/groups/GroupHomeFragment$DisclaimerReadEvent;)V
    .registers 8
    .param p1, "event"    # Lcom/airbnb/android/fragments/groups/GroupHomeFragment$DisclaimerReadEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 313
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->markAsDisclaimerUneeded(Ljava/util/List;)V

    .line 314
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->markAsDisclaimerUneeded(Ljava/util/List;)V

    .line 315
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 316
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;"
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->markAsDisclaimerUneeded(Ljava/util/List;)V

    goto :goto_14

    .line 318
    .end local v0    # "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Group;>;"
    :cond_24
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->resetGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 319
    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->notifyDataSetChanged()V

    .line 320
    return-void
.end method

.method public onGroupLoadedEvent(Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;)V
    .registers 7
    .param p1, "event"    # Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p1, Lcom/airbnb/android/models/groups/GroupsEvent$GroupLoadedEvent;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 305
    .local v0, "group":Lcom/airbnb/android/models/groups/Group;
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->checkIfStaleJoinedGroup(Lcom/airbnb/android/models/groups/Group;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->checkIfAnyStaleUnjoinedGroup(Lcom/airbnb/android/models/groups/Group;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 306
    :cond_e
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mInfiniteRecommendationSections:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->resetGroups(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 307
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mGroupAdapter:Lcom/airbnb/android/adapters/groups/GroupAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/groups/GroupAdapter;->notifyDataSetChanged()V

    .line 309
    :cond_1e
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 84
    const-string/jumbo v0, "my_groups"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mMyGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 85
    const-string/jumbo v0, "top_recommended_groups"

    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;->mTopRecommendedGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 86
    return-void
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 370
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 372
    const v0, 0x7f0e027e

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 374
    return-void
.end method
