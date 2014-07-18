.class public Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;
.source "SpaceTypeSelectionFragment.java"


# instance fields
.field private mSpaceTypesAdapter:Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter;

.field private mSpaceTypesList:Lcom/airbnb/android/views/LinearListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;
    .registers 1

    .prologue
    .line 25
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0e048d

    const/4 v6, 0x0

    .line 36
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string/jumbo v5, "impressions"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "lys"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "home_type"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 37
    const v3, 0x7f0300b4

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 39
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0801f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 41
    .local v0, "str":Landroid/text/Spanned;
    if-eqz v0, :cond_65

    .line 42
    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 47
    :goto_41
    const v3, 0x7f080205

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/LinearListView;

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;->mSpaceTypesList:Lcom/airbnb/android/views/LinearListView;

    .line 48
    new-instance v3, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter;

    invoke-direct {v3}, Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter;-><init>()V

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;->mSpaceTypesAdapter:Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter;

    .line 49
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;->mSpaceTypesList:Lcom/airbnb/android/views/LinearListView;

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;->mSpaceTypesAdapter:Lcom/airbnb/android/adapters/managelisting/SpaceTypeAdapter;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;->mSpaceTypesList:Lcom/airbnb/android/views/LinearListView;

    new-instance v4, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 62
    return-object v2

    .line 44
    :cond_65
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_41
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/SpaceTypeSelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;

    const v1, 0x7f0e0490

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;->setActionBarTitle(I)V

    .line 32
    return-void
.end method
