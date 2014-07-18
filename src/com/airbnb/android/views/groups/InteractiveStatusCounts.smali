.class public Lcom/airbnb/android/views/groups/InteractiveStatusCounts;
.super Lcom/airbnb/android/views/groups/ContentStatusCounts;
.source "InteractiveStatusCounts.java"


# instance fields
.field private mFollowDividerTV:Landroid/widget/TextView;

.field private mFollowTV:Landroid/widget/TextView;

.field private mFollowingSet:Z

.field private mUnfollowTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/groups/ContentStatusCounts;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowingSet:Z

    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->setupViews()V

    .line 18
    return-void
.end method

.method private renderFollowDivider()V
    .registers 3

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowingSet:Z

    if-eqz v0, :cond_11

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowDividerTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_11
    :goto_11
    return-void

    .line 62
    :cond_12
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowDividerTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_11
.end method

.method private setupViews()V
    .registers 2

    .prologue
    .line 21
    const v0, 0x7f08030c

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowTV:Landroid/widget/TextView;

    .line 22
    const v0, 0x7f08030d

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mUnfollowTV:Landroid/widget/TextView;

    .line 23
    const v0, 0x7f08030b

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowDividerTV:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->styleTextAsLink(Landroid/widget/TextView;)V

    .line 25
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mUnfollowTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->styleTextAsLink(Landroid/widget/TextView;)V

    .line 26
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mLikeCountTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->styleTextAsLink(Landroid/widget/TextView;)V

    .line 27
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mCommentCountTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->styleTextAsLink(Landroid/widget/TextView;)V

    .line 28
    return-void
.end method

.method private styleTextAsLink(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    return-void
.end method

.method private undoLinkStyle(Landroid/widget/TextView;)V
    .registers 4
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    return-void
.end method


# virtual methods
.method protected onCountsChanged()V
    .registers 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->onCountsChanged()V

    .line 82
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->renderFollowDivider()V

    .line 83
    return-void
.end method

.method public setCommentOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mCommentCountTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method public setFollowEnable(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mUnfollowTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 70
    if-eqz p1, :cond_17

    .line 71
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mUnfollowTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->styleTextAsLink(Landroid/widget/TextView;)V

    .line 72
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->styleTextAsLink(Landroid/widget/TextView;)V

    .line 77
    :goto_16
    return-void

    .line 74
    :cond_17
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mUnfollowTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->undoLinkStyle(Landroid/widget/TextView;)V

    .line 75
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->undoLinkStyle(Landroid/widget/TextView;)V

    goto :goto_16
.end method

.method public setFollowingOnClickListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "follow"    # Landroid/view/View$OnClickListener;
    .param p2, "unfollow"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mUnfollowTV:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->styleTextAsLink(Landroid/widget/TextView;)V

    .line 42
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mUnfollowTV:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->styleTextAsLink(Landroid/widget/TextView;)V

    .line 43
    return-void
.end method

.method public setIsFollowing(Z)V
    .registers 5
    .param p1, "isFollowing"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowingSet:Z

    .line 47
    if-eqz p1, :cond_16

    .line 48
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mUnfollowTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    :goto_12
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->renderFollowDivider()V

    .line 55
    return-void

    .line 51
    :cond_16
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mUnfollowTV:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mFollowTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12
.end method

.method public setLikeOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/views/groups/InteractiveStatusCounts;->mLikeCountTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method
