.class public Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "CompanionOnboardingTravellersFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 9
    invoke-static {p0, p1, p2}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;Ljava/lang/Object;)V

    .line 12
    const v1, 0x7f08016b

    const-string/jumbo v2, "field \'mHeaderTextView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mHeaderTextView:Lcom/airbnb/android/views/AirTextView;

    .line 14
    const v1, 0x7f08016c

    const-string/jumbo v2, "field \'mExpandedGridView\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/ExpandedGridView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

    .line 16
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-static {p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$$ViewInjector;->reset(Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;)V

    .line 21
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mHeaderTextView:Lcom/airbnb/android/views/AirTextView;

    .line 22
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

    .line 23
    return-void
.end method
