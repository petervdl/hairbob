.class public Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;
.source "PropertyTypeSelectionFragment.java"


# static fields
.field private static final ARGS_SPACE_TYPE:Ljava/lang/String; = "space_type"


# instance fields
.field private mOtherPropertyTypesList:Lcom/airbnb/android/views/LinearListView;

.field private mPrompt:Landroid/widget/TextView;

.field private mPropertyTypesAdapter:Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;

.field private mPropertyTypesList:Lcom/airbnb/android/views/LinearListView;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPrompt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Lcom/airbnb/android/views/LinearListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mOtherPropertyTypesList:Lcom/airbnb/android/views/LinearListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Lcom/airbnb/android/views/LinearListView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPropertyTypesList:Lcom/airbnb/android/views/LinearListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)Landroid/widget/ScrollView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;)Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;
    .registers 5
    .param p0, "spaceType"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    .prologue
    .line 37
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;-><init>()V

    .line 38
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "space_type"

    invoke-virtual {p0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 14
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 53
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v6, v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v6, v5, v8

    const/4 v6, 0x1

    const-string/jumbo v7, "impressions"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "lys"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string/jumbo v7, "property_type"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 54
    const v5, 0x7f0300b0

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 56
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "space_type"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->getType(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v2

    .line 57
    .local v2, "spaceType":Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    const v5, 0x7f0801f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPrompt:Landroid/widget/TextView;

    .line 58
    iget v5, v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mPromptId:I

    invoke-virtual {p0, v5}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 59
    .local v3, "str":Landroid/text/Spanned;
    if-eqz v3, :cond_bb

    .line 60
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPrompt:Landroid/widget/TextView;

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 65
    :goto_54
    const v5, 0x7f080204

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 67
    const v5, 0x7f08040e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/LinearListView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPropertyTypesList:Lcom/airbnb/android/views/LinearListView;

    .line 68
    const v5, 0x7f080412

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/LinearListView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mOtherPropertyTypesList:Lcom/airbnb/android/views/LinearListView;

    .line 69
    new-instance v5, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;-><init>(Landroid/content/Context;Ljava/lang/Boolean;Z)V

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPropertyTypesAdapter:Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;

    .line 70
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPropertyTypesList:Lcom/airbnb/android/views/LinearListView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPropertyTypesAdapter:Lcom/airbnb/android/adapters/managelisting/PropertyTypeAdapter;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPropertyTypesList:Lcom/airbnb/android/views/LinearListView;

    new-instance v6, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 83
    const v5, 0x7f08040f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "other":Landroid/view/View;
    new-instance v5, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;

    invoke-direct {v5, p0, v1, v4}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v5, 0x7f080410

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, "collapsedMoreOptionsTextView":Landroid/widget/TextView;
    const v5, 0x7f020150

    const v6, 0x7f0a002b

    invoke-static {v5, v6}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v0, v9, v9, v5, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    return-object v4

    .line 62
    .end local v0    # "collapsedMoreOptionsTextView":Landroid/widget/TextView;
    .end local v1    # "other":Landroid/view/View;
    :cond_bb
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mPrompt:Landroid/widget/TextView;

    iget v6, v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mPromptId:I

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_54
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 48
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/PropertyTypeSelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;

    const v1, 0x7f0e0460

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;->setActionBarTitle(I)V

    .line 49
    return-void
.end method
