.class public Lcom/airbnb/android/fragments/InviteFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "InviteFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/InviteFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/InviteFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0801cd

    const-string/jumbo v2, "field \'mInviteFriendsText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsText:Landroid/widget/TextView;

    .line 12
    const v1, 0x7f08018f

    const-string/jumbo v2, "field \'mInviteFriendsParagraph\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsParagraph:Landroid/widget/TextView;

    .line 14
    const v1, 0x7f0801cc

    const-string/jumbo v2, "field \'mBtnInviteFriends\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/InviteFragment;->mBtnInviteFriends:Landroid/view/View;

    .line 16
    const v1, 0x7f0801ce

    const-string/jumbo v2, "field \'mTermsAndConditionsLink\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/InviteFragment;->mTermsAndConditionsLink:Landroid/widget/TextView;

    .line 18
    const v1, 0x7f080026

    const-string/jumbo v2, "field \'mLoaderFrame\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/LoaderFrame;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/InviteFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 20
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/InviteFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/InviteFragment;

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsText:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mInviteFriendsParagraph:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mBtnInviteFriends:Landroid/view/View;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mTermsAndConditionsLink:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/InviteFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    .line 28
    return-void
.end method
