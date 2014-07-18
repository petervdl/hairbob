.class public Lcom/airbnb/android/views/groups/ContentStatusCounts;
.super Landroid/widget/LinearLayout;
.source "ContentStatusCounts.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/Lightenable;


# instance fields
.field private mCommentCount:I

.field protected mCommentCountTV:Landroid/widget/TextView;

.field private mDividerTV:Landroid/widget/TextView;

.field private mGoingCount:I

.field protected mGoingCountTV:Landroid/widget/TextView;

.field private mGoingDividerTV:Landroid/widget/TextView;

.field private mIsReplies:Z

.field private mLightened:Z

.field private mLikeCount:I

.field protected mLikeCountTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCount:I

    .line 22
    iput v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    .line 23
    iput v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCount:I

    .line 24
    iput-boolean v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mIsReplies:Z

    .line 25
    iput-boolean v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLightened:Z

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030119

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/R$styleable;->Lightenable:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->setupViews(Landroid/content/res/TypedArray;)V

    .line 33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    return-void
.end method

.method private renderComments()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 122
    iget v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    if-lez v1, :cond_4f

    .line 123
    const-string/jumbo v0, ""

    .line 124
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mIsReplies:Z

    if-eqz v1, :cond_33

    .line 125
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000c

    iget v3, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_28
    iget-object v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCountTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCountTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    .end local v0    # "text":Ljava/lang/String;
    :goto_32
    return-void

    .line 127
    .restart local v0    # "text":Ljava/lang/String;
    :cond_33
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000d

    iget v3, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 133
    .end local v0    # "text":Ljava/lang/String;
    :cond_4f
    iget-object v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCountTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_32
.end method

.method private renderDivider()V
    .registers 3

    .prologue
    .line 86
    iget v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCount:I

    if-lez v0, :cond_f

    iget v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    if-lez v0, :cond_f

    .line 87
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mDividerTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :goto_e
    return-void

    .line 89
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mDividerTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e
.end method

.method private renderGoing()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 112
    iget v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCount:I

    if-lez v1, :cond_2c

    .line 113
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0010

    iget v3, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCount:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCountTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCountTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    .end local v0    # "text":Ljava/lang/String;
    :goto_2b
    return-void

    .line 117
    :cond_2c
    iget-object v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCountTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b
.end method

.method private renderGoingDivider()V
    .registers 3

    .prologue
    .line 94
    iget v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCount:I

    if-lez v0, :cond_13

    iget v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    if-gtz v0, :cond_c

    iget v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCount:I

    if-lez v0, :cond_13

    .line 95
    :cond_c
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingDividerTV:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    :goto_12
    return-void

    .line 97
    :cond_13
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingDividerTV:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12
.end method

.method private renderLikes()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 102
    iget v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCount:I

    if-lez v1, :cond_2c

    .line 103
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000e

    iget v3, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCount:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCountTV:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCountTV:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    .end local v0    # "text":Ljava/lang/String;
    :goto_2b
    return-void

    .line 107
    :cond_2c
    iget-object v1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCountTV:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2b
.end method

.method private setupViews(Landroid/content/res/TypedArray;)V
    .registers 4
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v1, 0x0

    .line 41
    const v0, 0x7f080306

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCountTV:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f080307

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingDividerTV:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f080308

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCountTV:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f080309

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mDividerTV:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f08030a

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCountTV:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLightened:Z

    .line 47
    iget-boolean v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLightened:Z

    if-eqz v0, :cond_45

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->lighten()V

    .line 50
    :cond_45
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCount:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCount:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public lighten()V
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLightened:Z

    .line 144
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCountTV:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->lightenText(Landroid/widget/TextView;)V

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingDividerTV:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->lightenText(Landroid/widget/TextView;)V

    .line 146
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCountTV:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->lightenText(Landroid/widget/TextView;)V

    .line 147
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mDividerTV:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->lightenText(Landroid/widget/TextView;)V

    .line 148
    iget-object v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCountTV:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->lightenText(Landroid/widget/TextView;)V

    .line 149
    return-void
.end method

.method protected onCountsChanged()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method

.method public setNumComments(I)V
    .registers 3
    .param p1, "commentCount"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mIsReplies:Z

    .line 63
    iput p1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    .line 64
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderDivider()V

    .line 65
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderGoingDivider()V

    .line 66
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderComments()V

    .line 67
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->onCountsChanged()V

    .line 68
    return-void
.end method

.method public setNumGoing(I)V
    .registers 2
    .param p1, "goingCount"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mGoingCount:I

    .line 80
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderGoingDivider()V

    .line 81
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderGoing()V

    .line 82
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->onCountsChanged()V

    .line 83
    return-void
.end method

.method public setNumLikes(I)V
    .registers 2
    .param p1, "likeCount"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mLikeCount:I

    .line 72
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderDivider()V

    .line 73
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderGoingDivider()V

    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderLikes()V

    .line 75
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->onCountsChanged()V

    .line 76
    return-void
.end method

.method public setNumReplies(I)V
    .registers 3
    .param p1, "replyCount"    # I

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mIsReplies:Z

    .line 54
    iput p1, p0, Lcom/airbnb/android/views/groups/ContentStatusCounts;->mCommentCount:I

    .line 55
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderDivider()V

    .line 56
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderGoingDivider()V

    .line 57
    invoke-direct {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->renderComments()V

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/android/views/groups/ContentStatusCounts;->onCountsChanged()V

    .line 59
    return-void
.end method
