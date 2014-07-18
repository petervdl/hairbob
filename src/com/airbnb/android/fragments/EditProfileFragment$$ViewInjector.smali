.class public Lcom/airbnb/android/fragments/EditProfileFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "EditProfileFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/EditProfileFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/EditProfileFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08019b

    const-string/jumbo v2, "field \'mScrollView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/ScrollView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 12
    const v1, 0x7f08019c

    const-string/jumbo v2, "field \'mProfileImage\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    .line 14
    const v1, 0x7f0800ff

    const-string/jumbo v2, "field \'mUserNameTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileFragment;->mUserNameTextView:Lcom/airbnb/android/views/AirTextView;

    .line 16
    const v1, 0x7f080101

    const-string/jumbo v2, "field \'mTxtAboutMe\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileFragment;->mTxtAboutMe:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f080100

    const-string/jumbo v2, "field \'mBtnEditName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileFragment;->mBtnEditName:Landroid/view/View;

    .line 20
    const v1, 0x7f080102

    const-string/jumbo v2, "field \'mBtnEditAboutMe\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileFragment;->mBtnEditAboutMe:Landroid/view/View;

    .line 22
    const v1, 0x7f080103

    const-string/jumbo v2, "field \'mPrivateSections\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSections:Lcom/airbnb/android/views/LinearListView;

    .line 24
    const v1, 0x7f080104

    const-string/jumbo v2, "field \'mOptionalSections\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LinearListView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSections:Lcom/airbnb/android/views/LinearListView;

    .line 26
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/EditProfileFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/EditProfileFragment;

    .prologue
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mProfileImage:Lcom/airbnb/android/views/AirImageView;

    .line 31
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mUserNameTextView:Lcom/airbnb/android/views/AirTextView;

    .line 32
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mTxtAboutMe:Landroid/widget/TextView;

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mBtnEditName:Landroid/view/View;

    .line 34
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mBtnEditAboutMe:Landroid/view/View;

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mPrivateSections:Lcom/airbnb/android/views/LinearListView;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/EditProfileFragment;->mOptionalSections:Lcom/airbnb/android/views/LinearListView;

    .line 37
    return-void
.end method
