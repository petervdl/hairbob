.class public Lcom/airbnb/android/fragments/groups/GroupMembersFragment;
.super Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
.source "GroupMembersFragment.java"


# static fields
.field private static final ARGS_GROUP:Ljava/lang/String; = "group"


# instance fields
.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mHasAllMembers:Z

.field private mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLoadingFooter:Landroid/view/View;

.field private mMembersListView:Landroid/widget/ListView;

.field private mMembershipAdapter:Lcom/airbnb/android/adapters/groups/MembershipAdapter;

.field private mMemberships:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mHasAllMembers:Z

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMemberships:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->onScrollBottom()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mLoadingFooter:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembersListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupMembersFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mHasAllMembers:Z

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Lcom/airbnb/android/adapters/groups/MembershipAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembershipAdapter:Lcom/airbnb/android/adapters/groups/MembershipAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private createFooterView()Landroid/view/View;
    .registers 4

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f030127

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fetchNextPage()V
    .registers 4

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mHasAllMembers:Z

    if-eqz v0, :cond_5

    .line 119
    :cond_4
    :goto_4
    return-void

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->fetchPageUnsafe()V

    goto :goto_4
.end method

.method private fetchPageUnsafe()V
    .registers 6

    .prologue
    .line 122
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembersListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mLoadingFooter:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 123
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembershipAdapter:Lcom/airbnb/android/adapters/groups/MembershipAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/groups/MembershipAdapter;->notifyDataSetChanged()V

    .line 124
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMemberships:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$3;-><init>(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)V

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/requests/groups/MembersRequest;->membersRequest(IILcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/groups/MembersRequest;

    move-result-object v0

    .line 148
    .local v0, "recommendedRequest":Lcom/airbnb/android/requests/groups/MembersRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/groups/MembersRequest;->execute()V

    .line 149
    return-void
.end method

.method private getInitialMemberships()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Membership;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getOrganizerMemberships()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 62
    .local v0, "memberships":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Membership;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Group;->getMemberships()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 63
    .local v1, "otherMemberships":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/airbnb/android/models/groups/Membership;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 65
    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/GroupMembersFragment;
    .registers 4
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "group"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    new-instance v1, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;-><init>()V

    .line 46
    .local v1, "fragment":Lcom/airbnb/android/fragments/groups/GroupMembersFragment;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method

.method private onScrollBottom()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->fetchNextPage()V

    .line 110
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "group"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Group;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 55
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->getInitialMemberships()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMemberships:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Lcom/airbnb/android/adapters/groups/MembershipAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMemberships:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/groups/MembershipAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembershipAdapter:Lcom/airbnb/android/adapters/groups/MembershipAdapter;

    .line 57
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    const v1, 0x7f0e0251

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->setActionBarTitle(I)V

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 70
    const v1, 0x7f03009a

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->createFooterView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mLoadingFooter:Landroid/view/View;

    .line 72
    const v1, 0x7f0801b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembersListView:Landroid/widget/ListView;

    .line 73
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembersListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mLoadingFooter:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 74
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembersListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembershipAdapter:Lcom/airbnb/android/adapters/groups/MembershipAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembersListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupMembersFragment;->mMembersListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/GroupMembersFragment$2;-><init>(Lcom/airbnb/android/fragments/groups/GroupMembersFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 105
    return-object v0
.end method
