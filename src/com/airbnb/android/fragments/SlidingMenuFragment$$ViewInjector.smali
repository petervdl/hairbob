.class public Lcom/airbnb/android/fragments/SlidingMenuFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "SlidingMenuFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/SlidingMenuFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/SlidingMenuFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080404

    const-string/jumbo v2, "field \'mSlidingMenuListView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/ListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    .line 12
    const v1, 0x7f0804fa

    const-string/jumbo v2, "field \'mSignInItem\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSignInItem:Landroid/view/View;

    .line 14
    const v1, 0x7f0804fb

    const-string/jumbo v2, "field \'mProfileItem\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mProfileItem:Landroid/view/View;

    .line 16
    const v1, 0x7f0804fd

    const-string/jumbo v2, "field \'mUserAvatar\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserAvatar:Lcom/airbnb/android/views/HaloImageView;

    .line 18
    const v1, 0x7f0804ab

    const-string/jumbo v2, "field \'mUserName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserName:Landroid/widget/TextView;

    .line 20
    const v1, 0x7f0804ff

    const-string/jumbo v2, "field \'mVerifyMyIdButton\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/Button;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mVerifyMyIdButton:Landroid/widget/Button;

    .line 22
    const v1, 0x7f080500

    const-string/jumbo v2, "field \'mArrow\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/ImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mArrow:Landroid/widget/ImageView;

    .line 24
    const v1, 0x7f0804f9

    const-string/jumbo v2, "field \'mFooterContainer\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/FrameLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mFooterContainer:Landroid/widget/FrameLayout;

    .line 26
    const v1, 0x7f0804fc

    const-string/jumbo v2, "field \'mUserProfileItem\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserProfileItem:Landroid/view/View;

    .line 28
    const v1, 0x7f0804fe

    const-string/jumbo v2, "field \'mSettingsItem\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSettingsItem:Landroid/view/View;

    .line 30
    const v1, 0x7f0802d6

    const-string/jumbo v2, "field \'mListFrame\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/FrameLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mListFrame:Landroid/widget/FrameLayout;

    .line 32
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .prologue
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSlidingMenuListView:Landroid/widget/ListView;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSignInItem:Landroid/view/View;

    .line 37
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mProfileItem:Landroid/view/View;

    .line 38
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserAvatar:Lcom/airbnb/android/views/HaloImageView;

    .line 39
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserName:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mVerifyMyIdButton:Landroid/widget/Button;

    .line 41
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mArrow:Landroid/widget/ImageView;

    .line 42
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mFooterContainer:Landroid/widget/FrameLayout;

    .line 43
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mUserProfileItem:Landroid/view/View;

    .line 44
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mSettingsItem:Landroid/view/View;

    .line 45
    iput-object v0, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment;->mListFrame:Landroid/widget/FrameLayout;

    .line 46
    return-void
.end method
