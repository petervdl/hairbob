.class public Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "PostListManageListingFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08041d

    const-string/jumbo v2, "field \'mTitleLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTitleLayout:Landroid/view/View;

    .line 12
    const v1, 0x7f0803e5

    const-string/jumbo v2, "field \'mTitleText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTitleText:Landroid/widget/TextView;

    .line 14
    const v1, 0x7f08041e

    const-string/jumbo v2, "field \'mSummaryLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mSummaryLayout:Landroid/view/View;

    .line 16
    const v1, 0x7f08041f

    const-string/jumbo v2, "field \'mSummaryText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mSummaryText:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f080222

    const-string/jumbo v2, "field \'mPriceList\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceList:Lcom/airbnb/android/views/LinearListView;

    .line 20
    const v1, 0x7f080415

    const-string/jumbo v2, "field \'mInstantBookListHeader\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookListHeader:Landroid/widget/TextView;

    .line 22
    const v1, 0x7f080416

    const-string/jumbo v2, "field \'mInstantBookList\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookList:Lcom/airbnb/android/views/GroupedCell;

    .line 24
    const v1, 0x7f080223

    const-string/jumbo v2, "field \'mDetailsList\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsList:Lcom/airbnb/android/views/LinearListView;

    .line 26
    const v1, 0x7f080204

    const-string/jumbo v2, "field \'mScrollView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 28
    const v1, 0x7f080417

    const-string/jumbo v2, "field \'mUnlistCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mUnlistCell:Lcom/airbnb/android/views/GroupedCell;

    .line 30
    const v1, 0x7f080207

    const-string/jumbo v2, "field \'mStickyListButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mStickyListButton:Lcom/airbnb/android/views/StickyButton;

    .line 32
    const v1, 0x7f080418

    const-string/jumbo v2, "field \'mDeleteCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDeleteCell:Lcom/airbnb/android/views/GroupedCell;

    .line 34
    const v1, 0x7f080419

    const-string/jumbo v2, "field \'mPreviewListingButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 35
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPreviewListingButton:Landroid/widget/TextView;

    .line 36
    const v1, 0x7f08041a

    const-string/jumbo v2, "field \'mLocalLaws\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 37
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mLocalLaws:Landroid/widget/TextView;

    .line 38
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    .prologue
    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTitleLayout:Landroid/view/View;

    .line 42
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mTitleText:Landroid/widget/TextView;

    .line 43
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mSummaryLayout:Landroid/view/View;

    .line 44
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mSummaryText:Landroid/widget/TextView;

    .line 45
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPriceList:Lcom/airbnb/android/views/LinearListView;

    .line 46
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookListHeader:Landroid/widget/TextView;

    .line 47
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mInstantBookList:Lcom/airbnb/android/views/GroupedCell;

    .line 48
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDetailsList:Lcom/airbnb/android/views/LinearListView;

    .line 49
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 50
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mUnlistCell:Lcom/airbnb/android/views/GroupedCell;

    .line 51
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mStickyListButton:Lcom/airbnb/android/views/StickyButton;

    .line 52
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mDeleteCell:Lcom/airbnb/android/views/GroupedCell;

    .line 53
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mPreviewListingButton:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->mLocalLaws:Landroid/widget/TextView;

    .line 55
    return-void
.end method
