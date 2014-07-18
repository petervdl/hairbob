.class public Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "PreListManageListingFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08041a

    const-string/jumbo v2, "field \'mLocalLaws\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLaws:Landroid/widget/TextView;

    .line 12
    const v1, 0x7f080438

    const-string/jumbo v2, "field \'mLocalLawsLearnMoreText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLawsLearnMoreText:Landroid/widget/TextView;

    .line 14
    const v1, 0x7f080439

    const-string/jumbo v2, "field \'mLocalLawsSubText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLawsSubText:Landroid/widget/TextView;

    .line 16
    const v1, 0x7f080024

    const-string/jumbo v2, "field \'mProgressBar\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StickyStepProgressBar;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mProgressBar:Lcom/airbnb/android/views/StickyStepProgressBar;

    .line 18
    const v1, 0x7f08043a

    const-string/jumbo v2, "field \'mPhotoCheckBox\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/CheckBox;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPhotoCheckBox:Landroid/widget/CheckBox;

    .line 20
    const v1, 0x7f0803e5

    const-string/jumbo v2, "field \'mTitleSelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/CheckedLYSChoice;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTitleSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    .line 22
    const v1, 0x7f08041f

    const-string/jumbo v2, "field \'mSummarySelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/CheckedLYSChoice;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mSummarySelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    .line 24
    const v1, 0x7f080435

    const-string/jumbo v2, "field \'mPriceSelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/CheckedLYSChoice;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    .line 26
    const v1, 0x7f080436

    const-string/jumbo v2, "field \'mAddressSelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/CheckedLYSChoice;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    .line 28
    const v1, 0x7f080255

    const-string/jumbo v2, "field \'mListButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/StickyButton;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    .line 30
    const v1, 0x7f080437

    const-string/jumbo v2, "field \'mOptionalDetails\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mOptionalDetails:Landroid/view/View;

    .line 32
    const v1, 0x7f080204

    const-string/jumbo v2, "field \'mScrollView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 34
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    .prologue
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLaws:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLawsLearnMoreText:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mLocalLawsSubText:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mProgressBar:Lcom/airbnb/android/views/StickyStepProgressBar;

    .line 41
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPhotoCheckBox:Landroid/widget/CheckBox;

    .line 42
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mTitleSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    .line 43
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mSummarySelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    .line 44
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mPriceSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    .line 45
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mAddressSelector:Lcom/airbnb/android/views/CheckedLYSChoice;

    .line 46
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mListButton:Lcom/airbnb/android/views/StickyButton;

    .line 47
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mOptionalDetails:Landroid/view/View;

    .line 48
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 49
    return-void
.end method
