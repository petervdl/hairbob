.class public Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$$ViewInjector;
.super Ljava/lang/Object;
.source "CompanionOnboardingStartFragment$$ViewInjector.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;Ljava/lang/Object;)V
    .registers 6
    .param p0, "finder"    # Lbutterknife/ButterKnife$Finder;
    .param p1, "target"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;
    .param p2, "source"    # Ljava/lang/Object;

    .prologue
    .line 9
    invoke-static {p0, p1, p2}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$$ViewInjector;->inject(Lbutterknife/ButterKnife$Finder;Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;Ljava/lang/Object;)V

    .line 12
    const v1, 0x7f08016d

    const-string/jumbo v2, "field \'mStartBanner\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 13
    .local v0, "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mStartBanner:Lcom/airbnb/android/views/AirTextView;

    .line 14
    const v1, 0x7f08016e

    const-string/jumbo v2, "field \'mCompanionOneHalo\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 15
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionOneHalo:Lcom/airbnb/android/views/HaloImageView;

    .line 16
    const v1, 0x7f08016f

    const-string/jumbo v2, "field \'mCompanionOneName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 17
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionOneName:Lcom/airbnb/android/views/AirTextView;

    .line 18
    const v1, 0x7f080170

    const-string/jumbo v2, "field \'mCompanionTwoHalo\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 19
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTwoHalo:Lcom/airbnb/android/views/HaloImageView;

    .line 20
    const v1, 0x7f080171

    const-string/jumbo v2, "field \'mCompanionTwoName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 21
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTwoName:Lcom/airbnb/android/views/AirTextView;

    .line 22
    const v1, 0x7f080172

    const-string/jumbo v2, "field \'mCompanionThreeHalo\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 23
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/HaloImageView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionThreeHalo:Lcom/airbnb/android/views/HaloImageView;

    .line 24
    const v1, 0x7f080173

    const-string/jumbo v2, "field \'mCompanionThreeName\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 25
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionThreeName:Lcom/airbnb/android/views/AirTextView;

    .line 26
    const v1, 0x7f080174

    const-string/jumbo v2, "field \'mCompanionTermsText\'"

    invoke-virtual {p0, p2, v1, v2}, Lbutterknife/ButterKnife$Finder;->findRequiredView(Ljava/lang/Object;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 27
    .restart local v0    # "view":Landroid/view/View;
    check-cast v0, Lcom/airbnb/android/views/AirTextView;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTermsText:Lcom/airbnb/android/views/AirTextView;

    .line 28
    return-void
.end method

.method public static reset(Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;)V
    .registers 2
    .param p0, "target"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-static {p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment$$ViewInjector;->reset(Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;)V

    .line 33
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mStartBanner:Lcom/airbnb/android/views/AirTextView;

    .line 34
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionOneHalo:Lcom/airbnb/android/views/HaloImageView;

    .line 35
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionOneName:Lcom/airbnb/android/views/AirTextView;

    .line 36
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTwoHalo:Lcom/airbnb/android/views/HaloImageView;

    .line 37
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTwoName:Lcom/airbnb/android/views/AirTextView;

    .line 38
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionThreeHalo:Lcom/airbnb/android/views/HaloImageView;

    .line 39
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionThreeName:Lcom/airbnb/android/views/AirTextView;

    .line 40
    iput-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTermsText:Lcom/airbnb/android/views/AirTextView;

    .line 41
    return-void
.end method
