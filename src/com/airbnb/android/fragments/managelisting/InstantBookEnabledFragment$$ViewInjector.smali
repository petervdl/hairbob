.class public Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "InstantBookEnabledFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f080216

    const-string/jumbo v2, "field \'mEnableIBCheckbox\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCheck;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mEnableIBCheckbox:Lcom/airbnb/android/views/GroupedCheck;

    .line 12
    const v1, 0x7f080217

    const-string/jumbo v2, "field \'mWhoCanBookSelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mWhoCanBookSelector:Lcom/airbnb/android/views/GroupedCell;

    .line 14
    const v1, 0x7f080218

    const-string/jumbo v2, "field \'mAdvanceNoticeSelector\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNoticeSelector:Lcom/airbnb/android/views/GroupedCell;

    .line 16
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    .prologue
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mEnableIBCheckbox:Lcom/airbnb/android/views/GroupedCheck;

    .line 20
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mWhoCanBookSelector:Lcom/airbnb/android/views/GroupedCell;

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->mAdvanceNoticeSelector:Lcom/airbnb/android/views/GroupedCell;

    .line 22
    return-void
.end method
