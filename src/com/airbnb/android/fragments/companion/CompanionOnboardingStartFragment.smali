.class public Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;
.super Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;
.source "CompanionOnboardingStartFragment.java"


# instance fields
.field mCompanionOneHalo:Lcom/airbnb/android/views/HaloImageView;

.field mCompanionOneName:Lcom/airbnb/android/views/AirTextView;

.field mCompanionTermsText:Lcom/airbnb/android/views/AirTextView;

.field mCompanionThreeHalo:Lcom/airbnb/android/views/HaloImageView;

.field mCompanionThreeName:Lcom/airbnb/android/views/AirTextView;

.field mCompanionTwoHalo:Lcom/airbnb/android/views/HaloImageView;

.field mCompanionTwoName:Lcom/airbnb/android/views/AirTextView;

.field mStartBanner:Lcom/airbnb/android/views/AirTextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;
    .registers 1

    .prologue
    .line 33
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;-><init>()V

    .line 34
    .local v0, "fragment":Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 39
    const v3, 0x7f03007c

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 40
    .local v2, "view":Landroid/view/View;
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 42
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->setupBackground()V

    .line 43
    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->setupStickyButton(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    invoke-virtual {v3}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->getMarket()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "market":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mStartBanner:Lcom/airbnb/android/views/AirTextView;

    const v4, 0x7f0e0396

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const-string/jumbo v3, "San Francisco"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 50
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionOneHalo:Lcom/airbnb/android/views/HaloImageView;

    const v4, 0x7f02020a

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setStaticDrawable(I)V

    .line 51
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTwoHalo:Lcom/airbnb/android/views/HaloImageView;

    const v4, 0x7f02020b

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setStaticDrawable(I)V

    .line 52
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionThreeHalo:Lcom/airbnb/android/views/HaloImageView;

    const v4, 0x7f02020c

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setStaticDrawable(I)V

    .line 55
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionOneName:Lcom/airbnb/android/views/AirTextView;

    const-string/jumbo v4, "Crissy"

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTwoName:Lcom/airbnb/android/views/AirTextView;

    const-string/jumbo v4, "Alex"

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionThreeName:Lcom/airbnb/android/views/AirTextView;

    const-string/jumbo v4, "Kristen"

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :goto_65
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment$1;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;)V

    .line 86
    .local v0, "listener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTermsText:Lcom/airbnb/android/views/AirTextView;

    const v4, 0x7f0e0372

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/airbnb/android/utils/ClickableLinkUtils;->setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 88
    return-object v2

    .line 60
    .end local v0    # "listener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    :cond_77
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionOneHalo:Lcom/airbnb/android/views/HaloImageView;

    const v4, 0x7f020225

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setStaticDrawable(I)V

    .line 61
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTwoHalo:Lcom/airbnb/android/views/HaloImageView;

    const v4, 0x7f020226

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setStaticDrawable(I)V

    .line 62
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionThreeHalo:Lcom/airbnb/android/views/HaloImageView;

    const v4, 0x7f020227

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/HaloImageView;->setStaticDrawable(I)V

    .line 65
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionOneName:Lcom/airbnb/android/views/AirTextView;

    const-string/jumbo v4, "Bekki"

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionTwoName:Lcom/airbnb/android/views/AirTextView;

    const-string/jumbo v4, "Jason"

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingStartFragment;->mCompanionThreeName:Lcom/airbnb/android/views/AirTextView;

    const-string/jumbo v4, "Amy"

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_65
.end method
