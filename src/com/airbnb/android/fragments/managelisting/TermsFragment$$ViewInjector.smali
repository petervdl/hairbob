.class public Lcom/airbnb/android/fragments/managelisting/TermsFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "TermsFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/managelisting/TermsFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/managelisting/TermsFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 10
    const v1, 0x7f08022b

    const-string/jumbo v2, "field \'mMinimumNightStay\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 11
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mMinimumNightStay:Lcom/airbnb/android/views/GroupedCell;

    .line 12
    const v1, 0x7f08022c

    const-string/jumbo v2, "field \'mMaximumNightStay\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mMaximumNightStay:Lcom/airbnb/android/views/GroupedCell;

    .line 14
    const v1, 0x7f08022d

    const-string/jumbo v2, "field \'mCheckinTime\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCheckinTime:Lcom/airbnb/android/views/GroupedCell;

    .line 16
    const v1, 0x7f08022e

    const-string/jumbo v2, "field \'mCheckoutTime\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCheckoutTime:Lcom/airbnb/android/views/GroupedCell;

    .line 18
    const v1, 0x7f08022f

    const-string/jumbo v2, "field \'mCancellationPolicy\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCancellationPolicy:Lcom/airbnb/android/views/GroupedCell;

    .line 20
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/managelisting/TermsFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    .prologue
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mMinimumNightStay:Lcom/airbnb/android/views/GroupedCell;

    .line 24
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mMaximumNightStay:Lcom/airbnb/android/views/GroupedCell;

    .line 25
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCheckinTime:Lcom/airbnb/android/views/GroupedCell;

    .line 26
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCheckoutTime:Lcom/airbnb/android/views/GroupedCell;

    .line 27
    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->mCancellationPolicy:Lcom/airbnb/android/views/GroupedCell;

    .line 28
    return-void
.end method
