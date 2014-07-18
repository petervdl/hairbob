.class public Lcom/airbnb/android/views/groups/FeedCardFooterView;
.super Landroid/widget/LinearLayout;
.source "FeedCardFooterView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Lightenable;


# instance fields
.field private mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

.field private mContent:Lcom/airbnb/android/models/groups/BaseContent;

.field private mLightened:Z

.field private mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLightened:Z

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030110

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/FeedCardFooterView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/R$styleable;->Lightenable:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 29
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/FeedCardFooterView;->setupViews(Landroid/content/res/TypedArray;)V

    .line 30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    return-void
.end method

.method private setupViews(Landroid/content/res/TypedArray;)V
    .registers 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLightened:Z

    .line 35
    const v0, 0x7f0802ed

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/FeedCardFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    .line 36
    const v0, 0x7f0802e4

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/FeedCardFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/groups/AuthorView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

    .line 37
    iget-boolean v0, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLightened:Z

    if-eqz v0, :cond_24

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/FeedCardFooterView;->lighten()V

    .line 40
    :cond_24
    return-void
.end method


# virtual methods
.method public lighten()V
    .registers 2

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLightened:Z

    .line 63
    iget-object v0, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    invoke-virtual {v0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->lighten()V

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/groups/AuthorView;->lighten()V

    .line 65
    return-void
.end method

.method public setContent(Lcom/airbnb/android/models/groups/BaseContent;Lcom/airbnb/android/models/groups/Group;Landroid/support/v4/app/FragmentManager;)V
    .registers 8
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p2, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p3, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    .line 44
    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iget-object v2, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/BaseContent;->getLikes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumLikes(I)V

    .line 45
    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    iget-object v2, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/BaseContent;->getDiscussionSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumComments(I)V

    .line 47
    instance-of v1, p1, Lcom/airbnb/android/models/groups/Event;

    if-eqz v1, :cond_30

    move-object v0, p1

    .line 48
    check-cast v0, Lcom/airbnb/android/models/groups/Event;

    .line 49
    .local v0, "event":Lcom/airbnb/android/models/groups/Event;
    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    invoke-virtual {v0}, Lcom/airbnb/android/models/groups/Event;->getRegistrations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setNumGoing(I)V

    .line 51
    .end local v0    # "event":Lcom/airbnb/android/models/groups/Event;
    :cond_30
    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    invoke-virtual {v1}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 52
    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setVisibility(I)V

    .line 57
    :goto_3f
    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mAuthorView:Lcom/airbnb/android/views/groups/AuthorView;

    iget-object v2, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mContent:Lcom/airbnb/android/models/groups/BaseContent;

    const-string/jumbo v3, "group_home"

    invoke-virtual {v1, v2, p2, v3, p3}, Lcom/airbnb/android/views/groups/AuthorView;->setAuthorable(Lcom/airbnb/android/models/groups/Authorable;Lcom/airbnb/android/models/groups/Group;Ljava/lang/String;Landroid/support/v4/app/FragmentManager;)V

    .line 58
    return-void

    .line 54
    :cond_4a
    iget-object v1, p0, Lcom/airbnb/android/views/groups/FeedCardFooterView;->mLikeCommentCount:Lcom/airbnb/android/views/groups/ContentStatusCounts;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setVisibility(I)V

    goto :goto_3f
.end method
