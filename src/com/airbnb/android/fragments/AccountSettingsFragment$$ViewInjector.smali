.class public Lcom/airbnb/android/fragments/AccountSettingsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "AccountSettingsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/AccountSettingsFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080118

    const-string/jumbo v2, "field \'mPushNotifsCheck\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCheck;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    .line 12
    const v1, 0x7f080119

    const-string/jumbo v2, "field \'mGroupsPushNotifsCheck\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCheck;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    .line 14
    const v1, 0x7f08011a

    const-string/jumbo v2, "field \'mPushNotifsSoundCheck\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCheck;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsSoundCheck:Lcom/airbnb/android/views/GroupedCheck;

    .line 16
    const v1, 0x7f08011c

    const-string/jumbo v2, "field \'mCurrencySettingsCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencySettingsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 18
    const v1, 0x7f08011b

    const-string/jumbo v2, "field \'mPayoutSettingsCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPayoutSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 20
    const v1, 0x7f080122

    const-string/jumbo v2, "field \'mLogOutCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mLogOutCell:Lcom/airbnb/android/views/GroupedCell;

    .line 22
    const v1, 0x7f080121

    const-string/jumbo v2, "field \'mDebugSettingsCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mDebugSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 24
    const v1, 0x7f080120

    const-string/jumbo v2, "field \'mHelpCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mHelpCell:Lcom/airbnb/android/views/GroupedCell;

    .line 26
    const v1, 0x7f08011d

    const-string/jumbo v2, "field \'mGoogleSettingsCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 28
    const v1, 0x7f08011e

    const-string/jumbo v2, "field \'mInviteFriendsCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 29
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mInviteFriendsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 30
    const v1, 0x7f08011f

    const-string/jumbo v2, "field \'mReferralCodeCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 31
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mReferralCodeCell:Lcom/airbnb/android/views/GroupedCell;

    .line 32
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/AccountSettingsFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/AccountSettingsFragment;

    .prologue
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGroupsPushNotifsCheck:Lcom/airbnb/android/views/GroupedCheck;

    .line 37
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPushNotifsSoundCheck:Lcom/airbnb/android/views/GroupedCheck;

    .line 38
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mCurrencySettingsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 39
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mPayoutSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 40
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mLogOutCell:Lcom/airbnb/android/views/GroupedCell;

    .line 41
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mDebugSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 42
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mHelpCell:Lcom/airbnb/android/views/GroupedCell;

    .line 43
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mGoogleSettingsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 44
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mInviteFriendsCell:Lcom/airbnb/android/views/GroupedCell;

    .line 45
    iput-object v0, p0, Lcom/airbnb/android/fragments/AccountSettingsFragment;->mReferralCodeCell:Lcom/airbnb/android/views/GroupedCell;

    .line 46
    return-void
.end method
