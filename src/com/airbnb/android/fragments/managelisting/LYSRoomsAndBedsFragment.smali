.class public Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;
.source "LYSRoomsAndBedsFragment.java"


# static fields
.field private static final ARGS_PROPERTY_TYPE:Ljava/lang/String; = "property_type"

.field private static final ARGS_SPACE_TYPE:Ljava/lang/String; = "space_type"


# instance fields
.field mBathroomsCounter:Lcom/airbnb/android/views/GroupedCounterFloats;

.field mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

.field mBedroomsLayout:Landroid/view/View;

.field mBedsCounter:Lcom/airbnb/android/views/GroupedCounter;

.field mMaxGuestsCounter:Lcom/airbnb/android/views/GroupedCounter;

.field private mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field private mSpaceType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

.field private mStickyButton:Lcom/airbnb/android/views/StickyButton;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/Integer;)Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;
    .registers 6
    .param p0, "spaceType"    # Ljava/lang/String;
    .param p1, "propertyTypeId"    # Ljava/lang/Integer;

    .prologue
    .line 40
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;-><init>()V

    .line 41
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "space_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "property_type"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 44
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string/jumbo v1, "impressions"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string/jumbo v2, "lys"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "rooms_and_beds"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->setHasOptionsMenu(Z)V

    .line 55
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const v3, 0x7f0300b2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 67
    .local v2, "view":Landroid/view/View;
    invoke-static {p0, v2}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 69
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "space_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mSpaceType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    .line 71
    const v3, 0x7f0801f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 72
    .local v0, "prompt":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "property_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->getTypeFromKey(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 74
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    iget v3, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mRoomsAndBedsPromptId:I

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 75
    .local v1, "str":Landroid/text/Spanned;
    if-eqz v1, :cond_72

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_47
    sget-object v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->EntireHome:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    iget-object v3, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mServerDescKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mSpaceType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    iget-object v4, v4, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 82
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mBedroomsLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    :cond_5c
    const v3, 0x7f0801fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/views/StickyButton;

    iput-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 86
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    new-instance v4, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;)V

    invoke-virtual {v3, v4}, Lcom/airbnb/android/views/StickyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    return-object v2

    .line 78
    :cond_72
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    iget v3, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mRoomsAndBedsPromptId:I

    invoke-virtual {p0, v3}, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_47
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseListYourSpaceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LYSRoomsAndBedsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;

    const v1, 0x7f0e0488

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions;->setActionBarTitle(I)V

    .line 61
    return-void
.end method
