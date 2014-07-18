.class public Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;
.super Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;
.source "CompanionOnboardingMarketFamiliarityFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$OnboardingTravellersOptionAdapter;,
        Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;
    }
.end annotation


# static fields
.field private static final ARG_MARKET_FAMILIARITY:Ljava/lang/String; = "market_familiarity"


# instance fields
.field mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

.field private mMarketFamiliarityOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

.field mMarketTextView:Lcom/airbnb/android/views/AirTextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;-><init>()V

    .line 98
    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;)Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;
    .param p1, "x1"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mMarketFamiliarityOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    return-object p1
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;-><init>()V

    .line 51
    .local v0, "fragment":Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;
    return-object v0
.end method


# virtual methods
.method protected getAnswers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mMarketFamiliarityOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mMarketFamiliarityOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->getStringResourceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method protected getQuestion()Ljava/lang/String;
    .registers 5

    .prologue
    .line 118
    const v1, 0x7f0e038f

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->getMarket()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    if-eqz p1, :cond_17

    .line 59
    const-string/jumbo v1, "market_familiarity"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "marketFamiliarityValue":I
    if-lez v0, :cond_17

    .line 61
    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mMarketFamiliarityOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    .line 64
    .end local v0    # "marketFamiliarityValue":I
    :cond_17
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 68
    const v1, 0x7f03007b

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 69
    .local v7, "view":Landroid/view/View;
    invoke-static {p0, v7}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->setupBackground()V

    .line 72
    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->setupStickyButton(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/activities/CompanionOnboardingActivity;

    .line 75
    .local v6, "activity":Lcom/airbnb/android/activities/CompanionOnboardingActivity;
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mMarketTextView:Lcom/airbnb/android/views/AirTextView;

    const v2, 0x7f0e0395

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/airbnb/android/activities/CompanionOnboardingActivity;->getMarket()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$OnboardingTravellersOptionAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030107

    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$OnboardingTravellersOptionAdapter;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;Landroid/content/Context;I[Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$1;)V

    .line 78
    .local v0, "adapter":Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$OnboardingTravellersOptionAdapter;
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/ExpandedGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

    new-instance v2, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$1;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ExpandedGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 86
    return-object v7
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mMarketFamiliarityOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    if-eqz v0, :cond_13

    .line 94
    const-string/jumbo v0, "market_familiarity"

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;->mMarketFamiliarityOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    :cond_13
    return-void
.end method
