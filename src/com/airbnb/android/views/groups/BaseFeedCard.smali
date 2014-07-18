.class public abstract Lcom/airbnb/android/views/groups/BaseFeedCard;
.super Landroid/widget/LinearLayout;
.source "BaseFeedCard.java"


# instance fields
.field private mContent:Lcom/airbnb/android/models/groups/BaseContent;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mGroup"    # Lcom/airbnb/android/models/groups/Group;
    .param p3, "mContent"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p3, p0, Lcom/airbnb/android/views/groups/BaseFeedCard;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 32
    iput-object p2, p0, Lcom/airbnb/android/views/groups/BaseFeedCard;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/BaseFeedCard;->setupViews()V

    .line 34
    return-void
.end method

.method public static of(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)Lcom/airbnb/android/views/groups/BaseFeedCard;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 24
    new-instance v0, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;-><init>(Landroid/content/Context;Lcom/airbnb/android/models/groups/Group;)V

    .line 25
    .local v0, "visitor":Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;
    invoke-virtual {p2, v0}, Lcom/airbnb/android/models/groups/BaseContent;->accept(Lcom/airbnb/android/models/groups/GroupContentVisitor;)V

    .line 26
    invoke-virtual {v0}, Lcom/airbnb/android/views/groups/FeedCardInstantiationVisitor;->getView()Lcom/airbnb/android/views/groups/BaseFeedCard;

    move-result-object v1

    return-object v1
.end method

.method private setupViews()V
    .registers 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/BaseFeedCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/BaseFeedCard;->getLayout()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/BaseFeedCard;->onSetLayout()V

    .line 39
    return-void
.end method


# virtual methods
.method protected getLayout()I
    .registers 2

    .prologue
    .line 42
    const v0, 0x7f03010f

    return v0
.end method

.method protected abstract onSetContent(Lcom/airbnb/android/models/groups/BaseContent;)V
.end method

.method protected abstract onSetLayout()V
.end method

.method public setContent(Lcom/airbnb/android/models/groups/BaseContent;Landroid/support/v4/app/FragmentManager;)V
    .registers 3
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 55
    iput-object p2, p0, Lcom/airbnb/android/views/groups/BaseFeedCard;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 56
    iput-object p1, p0, Lcom/airbnb/android/views/groups/BaseFeedCard;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 57
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/groups/BaseFeedCard;->onSetContent(Lcom/airbnb/android/models/groups/BaseContent;)V

    .line 58
    return-void
.end method

.method protected final setContentLayout(I)V
    .registers 5
    .param p1, "contentLayout"    # I

    .prologue
    .line 46
    const v1, 0x7f0802ea

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/groups/BaseFeedCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 47
    .local v0, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/BaseFeedCard;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method protected final setupDefaultChrome()V
    .registers 5

    .prologue
    .line 61
    const v1, 0x7f0802eb

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/groups/BaseFeedCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/groups/FeedCardFooterView;

    .line 62
    .local v0, "footer":Lcom/airbnb/android/views/groups/FeedCardFooterView;
    iget-object v1, p0, Lcom/airbnb/android/views/groups/BaseFeedCard;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    iget-object v2, p0, Lcom/airbnb/android/views/groups/BaseFeedCard;->mGroup:Lcom/airbnb/android/models/groups/Group;

    iget-object v3, p0, Lcom/airbnb/android/views/groups/BaseFeedCard;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/airbnb/android/views/groups/FeedCardFooterView;->setContent(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/models/groups/Group;Landroid/support/v4/app/FragmentManager;)V

    .line 63
    return-void
.end method
