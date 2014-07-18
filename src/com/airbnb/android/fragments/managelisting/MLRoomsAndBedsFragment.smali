.class public Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "MLRoomsAndBedsFragment.java"


# static fields
.field private static final ARGS_LISTING:Ljava/lang/String; = "listing"


# instance fields
.field mBathroomsCounter:Lcom/airbnb/android/views/GroupedCounterFloats;

.field mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

.field mBedsCounter:Lcom/airbnb/android/views/GroupedCounter;

.field mGuestsCounter:Lcom/airbnb/android/views/GroupedCounter;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field mPropertyTypeSelector:Lcom/airbnb/android/views/GroupedCell;

.field private mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

.field mRoomTypeSelector:Lcom/airbnb/android/views/GroupedCell;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    return-object v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;
    .param p1, "x1"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->showOrHideRoomCounter()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 47
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;-><init>()V

    .line 48
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method

.method private showOrHideRoomCounter()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 137
    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->EntireHome:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    if-ne v2, v3, :cond_15

    move v0, v1

    .line 138
    .local v0, "showBedroomsCounter":Z
    :goto_8
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-static {v2, v0}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 139
    if-nez v0, :cond_14

    .line 140
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 142
    :cond_14
    return-void

    .line 137
    .end local v0    # "showBedroomsCounter":Z
    :cond_15
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 60
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "impressions"

    aput-object v2, v1, v0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "ml_post_list"

    :goto_2e
    aput-object v0, v1, v2

    const/4 v0, 0x3

    const-string/jumbo v2, "rooms_and_beds"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 63
    return-void

    .line 60
    :cond_3a
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_2e
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    const v1, 0x7f0300c2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 76
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getPropertyTypeId()I

    move-result v1

    invoke-static {v1}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->getTypeFromKey(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 77
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyTypeSelector:Lcom/airbnb/android/views/GroupedCell;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyType:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    iget v2, v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mTitleId:I

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    .line 78
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mPropertyTypeSelector:Lcom/airbnb/android/views/GroupedCell;

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getRoomTypeKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    .line 102
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomTypeSelector:Lcom/airbnb/android/views/GroupedCell;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomType:Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;

    iget v2, v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mTitleId:I

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setContent(I)V

    .line 103
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mRoomTypeSelector:Lcom/airbnb/android/views/GroupedCell;

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mGuestsCounter:Lcom/airbnb/android/views/GroupedCounter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPersonCapacity()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 128
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mBedroomsCounter:Lcom/airbnb/android/views/GroupedCounter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getBedrooms()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 129
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mBedsCounter:Lcom/airbnb/android/views/GroupedCounter;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getBedCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCounter;->setSelectedValue(I)V

    .line 130
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mBathroomsCounter:Lcom/airbnb/android/views/GroupedCounterFloats;

    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getBathrooms()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/GroupedCounterFloats;->setSelectedValueFloat(F)V

    .line 131
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->showOrHideRoomCounter()V

    .line 133
    return-object v0
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 147
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 148
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 149
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 150
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 151
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 152
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 154
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 171
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 173
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 174
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 176
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 178
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    const v1, 0x7f0e0488

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setActionBarTitle(I)V

    .line 69
    return-void
.end method
