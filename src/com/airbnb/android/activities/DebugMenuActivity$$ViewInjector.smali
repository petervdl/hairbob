.class public Lcom/airbnb/android/activities/DebugMenuActivity$$ViewInjector;
.super Ljava/lang/Object;
.source "DebugMenuActivity$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/activities/DebugMenuActivity;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/activities/DebugMenuActivity;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f0800ab

    const-string/jumbo v2, "field \'mSwitchAccountLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountLayout:Landroid/view/View;

    .line 12
    const v1, 0x7f0800ac

    const-string/jumbo v2, "field \'mSwitchServerLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    iput-object v0, p1, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchServerLayout:Landroid/view/View;

    .line 14
    const v1, 0x7f0800ad

    const-string/jumbo v2, "field \'mOverrideTrebuchetLayout\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    iput-object v0, p1, Lcom/airbnb/android/activities/DebugMenuActivity;->mOverrideTrebuchetLayout:Landroid/view/View;

    .line 16
    const v1, 0x7f0800ae

    const-string/jumbo v2, "field \'mShakeFeedbackCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    check-cast v0, Lcom/airbnb/android/views/GroupedCheck;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/activities/DebugMenuActivity;->mShakeFeedbackCell:Lcom/airbnb/android/views/GroupedCheck;

    .line 18
    const v1, 0x7f0800af

    const-string/jumbo v2, "field \'mChinaCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCheck;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/activities/DebugMenuActivity;->mChinaCell:Lcom/airbnb/android/views/GroupedCheck;

    .line 20
    const v1, 0x7f0800b0

    const-string/jumbo v2, "field \'mNoGmsCell\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCheck;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/activities/DebugMenuActivity;->mNoGmsCell:Lcom/airbnb/android/views/GroupedCheck;

    .line 22
    const v1, 0x7f0800b1

    const-string/jumbo v2, "field \'mResetCompanionOnboarding\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/activities/DebugMenuActivity;->mResetCompanionOnboarding:Lcom/airbnb/android/views/GroupedCell;

    .line 24
    return-void
.end method

.method public static reset(Lcom/airbnb/android/activities/DebugMenuActivity;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/activities/DebugMenuActivity;

    .prologue
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchAccountLayout:Landroid/view/View;

    .line 28
    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mSwitchServerLayout:Landroid/view/View;

    .line 29
    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mOverrideTrebuchetLayout:Landroid/view/View;

    .line 30
    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mShakeFeedbackCell:Lcom/airbnb/android/views/GroupedCheck;

    .line 31
    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mChinaCell:Lcom/airbnb/android/views/GroupedCheck;

    .line 32
    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mNoGmsCell:Lcom/airbnb/android/views/GroupedCheck;

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/activities/DebugMenuActivity;->mResetCompanionOnboarding:Lcom/airbnb/android/views/GroupedCell;

    .line 34
    return-void
.end method
