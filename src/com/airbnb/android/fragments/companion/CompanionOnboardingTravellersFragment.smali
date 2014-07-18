.class public Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;
.super Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;
.source "CompanionOnboardingTravellersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$OnboardingTravellersOptionAdapter;,
        Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;
    }
.end annotation


# static fields
.field private static final ARG_TRAVELLERS_OPTION:Ljava/lang/String; = "travellers_option"


# instance fields
.field mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

.field mHeaderTextView:Lcom/airbnb/android/views/AirTextView;

.field private mTravellersOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;)Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;
    .param p1, "x1"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mTravellersOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    return-object p1
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;-><init>()V

    .line 51
    .local v0, "fragment":Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;
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
    .line 122
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mTravellersOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mTravellersOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    invoke-virtual {v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->getStringResourceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->getString(I)Ljava/lang/String;

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
    .registers 2

    .prologue
    .line 117
    const v0, 0x7f0e03bc

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->getString(I)Ljava/lang/String;

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
    const-string/jumbo v1, "travellers_option"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 60
    .local v0, "travellerOptionValue":I
    if-lez v0, :cond_17

    .line 61
    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mTravellersOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .line 64
    .end local v0    # "travellerOptionValue":I
    :cond_17
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 68
    const v1, 0x7f03007b

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 69
    .local v6, "view":Landroid/view/View;
    invoke-static {p0, v6}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->setupBackground()V

    .line 72
    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->setupStickyButton(Z)V

    .line 74
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$OnboardingTravellersOptionAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030107

    invoke-static {}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$OnboardingTravellersOptionAdapter;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;Landroid/content/Context;I[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$1;)V

    .line 75
    .local v0, "adapter":Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$OnboardingTravellersOptionAdapter;
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/ExpandedGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mExpandedGridView:Lcom/airbnb/android/views/ExpandedGridView;

    new-instance v2, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$1;-><init>(Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ExpandedGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mHeaderTextView:Lcom/airbnb/android/views/AirTextView;

    const v2, 0x7f0e0397

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirTextView;->setText(I)V

    .line 85
    return-object v6
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/companion/BaseCompanionOnboardingFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mTravellersOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    if-eqz v0, :cond_13

    .line 93
    const-string/jumbo v0, "travellers_option"

    iget-object v1, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;->mTravellersOption:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    :cond_13
    return-void
.end method
