.class public Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;
.super Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;
.source "CompanionOnboardingInterestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$OnboardingInterestAdapter;,
        Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    }
.end annotation


# static fields
.field private static final ARG_COMPANION_INTEREST_VALUES:Ljava/lang/String; = "companion_interest_values"


# instance fields
.field mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

.field private mSelectedInterests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->mSelectedInterests:Ljava/util/List;

    return-object v0
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;
    .registers 1

    .prologue
    .line 57
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;-><init>()V

    .line 58
    .local v0, "fragment":Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;
    return-object v0
.end method


# virtual methods
.method protected getAnswers()Ljava/util/List;
    .registers 5
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
    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v2, "interestsAsStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->mSelectedInterests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 141
    .local v1, "interest":Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    # getter for: Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->mStringResourceId:I
    invoke-static {v1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->access$200(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 144
    .end local v1    # "interest":Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    :cond_23
    return-object v2
.end method

.method protected getQuestion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    const v0, 0x7f0e038b

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->mSelectedInterests:Ljava/util/List;

    .line 66
    if-eqz p1, :cond_33

    .line 67
    const-string/jumbo v3, "companion_interest_values"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    .local v0, "companionInterestValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 69
    .local v2, "value":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->mSelectedInterests:Ljava/util/List;

    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 72
    .end local v0    # "companionInterestValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Ljava/lang/Integer;
    :cond_33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 76
    const v1, 0x7f03007a

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 77
    .local v6, "view":Landroid/view/View;
    invoke-static {p0, v6}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->setupBackground()V

    .line 80
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->setupStickyButton(Z)V

    .line 82
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$OnboardingInterestAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030108

    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$OnboardingInterestAdapter;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;Landroid/content/Context;I[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$1;)V

    .line 83
    .local v0, "adapter":Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$OnboardingInterestAdapter;
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/ExpandedGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

    new-instance v2, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$1;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ExpandedGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    return-object v6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "companionInterestsValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;->mSelectedInterests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 109
    .local v2, "interest":Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    invoke-virtual {v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 111
    .end local v2    # "interest":Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    :cond_26
    const-string/jumbo v3, "companion_interest_values"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 112
    return-void
.end method
