.class public Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "FullDescriptionFragment.java"


# static fields
.field private static final ARG_LISTED:Ljava/lang/String; = "hasListed"

.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mHasBeenListed:Z

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;
    .registers 5
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "hasBeenListed"    # Z

    .prologue
    .line 29
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;-><init>()V

    .line 30
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    const-string/jumbo v2, "hasListed"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    return-object v1
.end method

.method private setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "title"    # I
    .param p3, "subtitle"    # I
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "ordinal"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .prologue
    .line 90
    move-object v0, p1

    check-cast v0, Lcom/airbnb/android/views/GroupedCell;

    .line 91
    .local v0, "cell":Lcom/airbnb/android/views/GroupedCell;
    if-nez p4, :cond_12

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/GroupedCell;->setContent(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment$1;

    invoke-direct {v1, p0, p5, p4}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    return-void

    .line 91
    :cond_12
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "listing"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    .line 44
    .local v0, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setListingObject(Lcom/airbnb/android/models/Listing;)V

    .line 45
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "hasListed"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mHasBeenListed:Z

    .line 46
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "impressions"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v1

    if-eqz v1, :cond_46

    const-string/jumbo v1, "ml_post_list"

    :goto_3a
    aput-object v1, v2, v3

    const/4 v1, 0x3

    const-string/jumbo v3, "detailed_description"

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 48
    return-void

    .line 46
    :cond_46
    const-string/jumbo v1, "ml_pre_list"

    goto :goto_3a
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    const v0, 0x7f0300af

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    const v1, 0x7f0e0753

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setActionBarTitle(I)V

    .line 56
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->updateViews(Lcom/airbnb/android/models/Listing;)V

    .line 58
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 107
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    const v1, 0x7f0e0753

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setActionBarTitle(I)V

    .line 108
    return-void
.end method

.method protected updateViews(Lcom/airbnb/android/models/Listing;)V
    .registers 10
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const v7, 0x7f0801fc

    const/4 v6, 0x0

    .line 63
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mHasBeenListed:Z

    if-eqz v0, :cond_33

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e051a

    const v3, 0x7f0e0519

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Description:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V

    .line 65
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_33
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e048f

    const v3, 0x7f0e048e

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getSpace()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Details:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V

    .line 70
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0413

    const v3, 0x7f0e0412

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getAccess()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->GuestAccess:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V

    .line 72
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    const v1, 0x7f0801ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0415

    const v3, 0x7f0e0414

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getInteraction()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->GuestInteraction:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V

    .line 75
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    const v1, 0x7f080200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e043c

    const v3, 0x7f0e043b

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getNeighborhoodOverview()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->NeighborhoodOverview:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V

    .line 78
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    const v1, 0x7f080201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e043a

    const v3, 0x7f0e0439

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getTransit()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->GettingAround:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V

    .line 81
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    const v1, 0x7f080202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0411

    const v3, 0x7f0e0410

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getNotes()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->OtherThingsToNote:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V

    .line 84
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->mView:Landroid/view/View;

    const v1, 0x7f080203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e040f

    const v3, 0x7f0e040e

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getHouseRules()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->HouseRules:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->setupView(Landroid/view/View;IILjava/lang/String;Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;)V

    .line 86
    return-void
.end method
