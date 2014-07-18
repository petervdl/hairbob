.class public Lcom/airbnb/android/fragments/SentReferralsFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "SentReferralsFragment.java"


# static fields
.field private static final EARNED_REFERREES:Ljava/lang/String; = "earned_referrees"

.field private static final PENDING_REFEREES:Ljava/lang/String; = "pending_referrees"


# instance fields
.field private final EARNED:Ljava/lang/String;

.field private final PENDING:Ljava/lang/String;

.field mEarnedReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/android/adapters/ReferreeArrayAdapter",
            "<",
            "Lcom/airbnb/android/models/Referree;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyState:Landroid/view/View;

.field mPendingReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/android/adapters/ReferreeArrayAdapter",
            "<",
            "Lcom/airbnb/android/models/Referree;",
            ">;"
        }
    .end annotation
.end field

.field private mReferralListView:Landroid/widget/ListView;

.field private mReferralView:Landroid/view/View;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 36
    const-string/jumbo v0, "pending"

    iput-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->PENDING:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, "earned"

    iput-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->EARNED:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/SentReferralsFragment;)Landroid/widget/ListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SentReferralsFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mReferralListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private bindAdaptersToView()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mReferralListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mPendingReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mEarnedReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->notifyDataSetChanged()V

    .line 77
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mPendingReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->notifyDataSetChanged()V

    .line 79
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mTabHost:Landroid/widget/TabHost;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->setupTabHost(Landroid/widget/TabHost;)V

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mPendingReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->getCount()I

    move-result v0

    if-ge v0, v2, :cond_34

    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mEarnedReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;->getCount()I

    move-result v0

    if-ge v0, v2, :cond_34

    .line 82
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mTabHost:Landroid/widget/TabHost;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mEmptyState:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_34
    return-void
.end method

.method public static instanceForReferrees(Ljava/util/List;Ljava/util/List;)Lcom/airbnb/android/fragments/SentReferralsFragment;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Referree;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Referree;",
            ">;)",
            "Lcom/airbnb/android/fragments/SentReferralsFragment;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "pendingReferrees":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Referree;>;"
    .local p1, "earnedReferrees":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Referree;>;"
    new-instance v1, Lcom/airbnb/android/fragments/SentReferralsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/SentReferralsFragment;-><init>()V

    .line 41
    .local v1, "f":Lcom/airbnb/android/fragments/SentReferralsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "pending_referrees"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 43
    const-string/jumbo v2, "earned_referrees"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method

.method private setupTabHost(Landroid/widget/TabHost;)V
    .registers 5
    .param p1, "tabs"    # Landroid/widget/TabHost;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 90
    const-string/jumbo v0, "pending"

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0e0617

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/SentReferralsFragment;->createTabView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/utils/SimpleTabFactory;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/utils/SimpleTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 92
    const-string/jumbo v0, "earned"

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f0e0607

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/SentReferralsFragment;->createTabView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/utils/SimpleTabFactory;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/utils/SimpleTabFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 95
    new-instance v0, Lcom/airbnb/android/fragments/SentReferralsFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/SentReferralsFragment$1;-><init>(Lcom/airbnb/android/fragments/SentReferralsFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 114
    return-void
.end method


# virtual methods
.method protected createTabView(I)Landroid/view/View;
    .registers 5
    .param p1, "titleId"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/TabHelper$TabStyle;->Dark:Lcom/airbnb/android/utils/TabHelper$TabStyle;

    invoke-static {v0, v1, p1, v2}, Lcom/airbnb/android/utils/TabHelper;->createTabView(Landroid/content/Context;IILcom/airbnb/android/utils/TabHelper$TabStyle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const v0, 0x7f0300ea

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 53
    .local v11, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pending_referrees"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 54
    .local v4, "pendingReferrees":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Referree;>;"
    new-instance v0, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0301ab

    const v3, 0x7f080452

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Z)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mPendingReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "earned_referrees"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 57
    .local v9, "earnedReferrees":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Referree;>;"
    new-instance v5, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0301ab

    const v8, 0x7f080452

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/airbnb/android/adapters/ReferreeArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;Z)V

    iput-object v5, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mEarnedReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    .line 60
    const v0, 0x1020012

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mTabHost:Landroid/widget/TabHost;

    .line 61
    const v0, 0x7f08029b

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mEmptyState:Landroid/view/View;

    .line 63
    const v0, 0x7f08029a

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mReferralView:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mReferralView:Landroid/view/View;

    const v1, 0x7f08029a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mReferralListView:Landroid/widget/ListView;

    .line 66
    iget-object v0, p0, Lcom/airbnb/android/fragments/SentReferralsFragment;->mEarnedReferreeArrayAdapter:Lcom/airbnb/android/adapters/ReferreeArrayAdapter;

    if-eqz v0, :cond_73

    .line 67
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SentReferralsFragment;->bindAdaptersToView()V

    .line 70
    :cond_73
    return-object v11
.end method
