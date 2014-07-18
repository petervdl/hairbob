.class public Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "EditLocationFragment.java"


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAddress:Landroid/widget/TextView;

.field private mDirections:Landroid/view/View;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mMapView:Lcom/airbnb/android/views/StaticMapView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method private centerMap()V
    .registers 6

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 98
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mMapView:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/views/StaticMapView;->addMarkerToMap(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 99
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mMapView:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/airbnb/android/views/StaticMapView;->centerMap(Lcom/google/android/gms/maps/model/LatLng;I)V

    .line 100
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mMapView:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/StaticMapView;->freeze()V

    .line 101
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 35
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;-><init>()V

    .line 36
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method

.method private setupDirections(Landroid/view/View;)V
    .registers 6
    .param p1, "directions"    # Landroid/view/View;

    .prologue
    .line 104
    const v2, 0x7f0800b7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 105
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x7f0e04ca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 106
    const v2, 0x7f080215

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, "desc":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getDirections()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 108
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getDirections()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    :goto_3b
    return-void

    .line 111
    :cond_3c
    const v2, 0x7f0e04c9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_3b
.end method

.method private updateListing()V
    .registers 3

    .prologue
    .line 136
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mAddress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mMapView:Lcom/airbnb/android/views/StaticMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/StaticMapView;->thaw()V

    .line 139
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->centerMap()V

    .line 141
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mDirections:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 142
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mDirections:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->setupDirections(Landroid/view/View;)V

    .line 144
    :cond_1c
    return-void
.end method


# virtual methods
.method public listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 3
    .param p1, "update"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 45
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->updateListing()V

    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 121
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    const v2, 0x7f0300bd

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f080212

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mAddress:Landroid/widget/TextView;

    .line 53
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mAddress:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getFormattedAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const v2, 0x7f080214

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mDirections:Landroid/view/View;

    .line 56
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mDirections:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->setupDirections(Landroid/view/View;)V

    .line 58
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mDirections:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v2, 0x7f080213

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/StaticMapView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mMapView:Lcom/airbnb/android/views/StaticMapView;

    .line 68
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mMapView:Lcom/airbnb/android/views/StaticMapView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StaticMapView;->setup(Lcom/airbnb/android/models/Listing;)V

    .line 69
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->centerMap()V

    .line 70
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mMapView:Lcom/airbnb/android/views/StaticMapView;

    new-instance v3, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/StaticMapView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v2, 0x7f080211

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "addressLayout":Landroid/view/View;
    new-instance v2, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 93
    return-object v1
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 125
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 127
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    const v1, 0x7f0e0751

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setActionBarTitle(I)V

    .line 128
    return-void
.end method

.method protected updateViews(Lcom/airbnb/android/models/Listing;)V
    .registers 2
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->updateListing()V

    .line 133
    return-void
.end method
