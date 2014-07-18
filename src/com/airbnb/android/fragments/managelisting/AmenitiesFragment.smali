.class public Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "AmenitiesFragment.java"


# static fields
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field public static final TAG:Ljava/lang/String;

.field private static final sExtraAmenities:[Lcom/airbnb/android/models/Amenities;

.field private static final sMostCommonAmenities:[Lcom/airbnb/android/models/Amenities;

.field private static final sSpecialFeatures:[Lcom/airbnb/android/models/Amenities;


# instance fields
.field private mExtrasAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

.field private mExtrasAmenitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/AmenitiesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mExtrasAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mMostCommonAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

.field private mMostCommonAmenitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/AmenitiesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMostCommonAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

.field private mSpecialFeaturesAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

.field private mSpecialFeaturesAmenitiesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/AmenitiesItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialFeaturesAmenitiesListView:Lcom/airbnb/android/views/LinearListView;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/airbnb/android/models/Amenities;

    sget-object v1, Lcom/airbnb/android/models/Amenities;->Essentials:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/models/Amenities;->Shampoo:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/models/Amenities;->TV:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/models/Amenities;->Heating:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/models/Amenities;->Kitchen:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/Amenities;->AC:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Internet:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/models/Amenities;->WirelessInternet:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->sMostCommonAmenities:[Lcom/airbnb/android/models/Amenities;

    .line 31
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/airbnb/android/models/Amenities;

    sget-object v1, Lcom/airbnb/android/models/Amenities;->Jacuzzi:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/models/Amenities;->Pool:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/models/Amenities;->Breakfast:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/models/Amenities;->Gym:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/models/Amenities;->Fireplace:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Washer:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Dryer:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/models/Amenities;->FreeParking:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Elevator:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->sExtraAmenities:[Lcom/airbnb/android/models/Amenities;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/airbnb/android/models/Amenities;

    sget-object v1, Lcom/airbnb/android/models/Amenities;->FamilyFriendly:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/models/Amenities;->EventFriendly:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/models/Amenities;->HandicapAccessible:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/models/Amenities;->AllowsSmoking:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/models/Amenities;->AllowsPets:Lcom/airbnb/android/models/Amenities;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HasPets:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->sSpecialFeatures:[Lcom/airbnb/android/models/Amenities;

    .line 36
    const-class v0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAmenitiesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAmenitiesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAmenitiesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 55
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;-><init>()V

    .line 56
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 69
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

    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "ml_post_list"

    :goto_2e
    aput-object v0, v1, v2

    const/4 v0, 0x3

    const-string/jumbo v2, "amenities"

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 71
    return-void

    .line 69
    :cond_3a
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_2e
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 75
    const v8, 0x7f0300ac

    invoke-virtual {p1, v8, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 77
    .local v7, "view":Landroid/view/View;
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v8}, Lcom/airbnb/android/models/Listing;->getAmenitiesIds()[I

    move-result-object v8

    invoke-static {v8}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->toIntegerList([I)Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "enabledAmenitiesIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAmenitiesList:Ljava/util/List;

    .line 81
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->sMostCommonAmenities:[Lcom/airbnb/android/models/Amenities;

    .local v0, "arr$":[Lcom/airbnb/android/models/Amenities;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1d
    if-ge v2, v3, :cond_38

    aget-object v5, v0, v2

    .line 82
    .local v5, "sMostCommonAmenitie":Lcom/airbnb/android/models/Amenities;
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAmenitiesList:Ljava/util/List;

    new-instance v9, Lcom/airbnb/android/models/AmenitiesItem;

    iget v10, v5, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v9, v5, v10}, Lcom/airbnb/android/models/AmenitiesItem;-><init>(Lcom/airbnb/android/models/Amenities;Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 85
    .end local v5    # "sMostCommonAmenitie":Lcom/airbnb/android/models/Amenities;
    :cond_38
    new-instance v8, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAmenitiesList:Ljava/util/List;

    invoke-direct {v8, v9, v11, v11, v10}, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    .line 87
    const v8, 0x7f0801f6

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/views/LinearListView;

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

    .line 88
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

    iget-object v9, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    invoke-virtual {v8, v9}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mMostCommonAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

    new-instance v9, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$1;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)V

    invoke-virtual {v8, v9}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 101
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAmenitiesList:Ljava/util/List;

    .line 103
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->sExtraAmenities:[Lcom/airbnb/android/models/Amenities;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_6c
    if-ge v2, v3, :cond_87

    aget-object v4, v0, v2

    .line 104
    .local v4, "sExtraAmenity":Lcom/airbnb/android/models/Amenities;
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAmenitiesList:Ljava/util/List;

    new-instance v9, Lcom/airbnb/android/models/AmenitiesItem;

    iget v10, v4, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v9, v4, v10}, Lcom/airbnb/android/models/AmenitiesItem;-><init>(Lcom/airbnb/android/models/Amenities;Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .line 107
    .end local v4    # "sExtraAmenity":Lcom/airbnb/android/models/Amenities;
    :cond_87
    new-instance v8, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAmenitiesList:Ljava/util/List;

    invoke-direct {v8, v9, v11, v11, v10}, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    .line 109
    const v8, 0x7f0801f7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/views/LinearListView;

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

    .line 110
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

    iget-object v9, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    invoke-virtual {v8, v9}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mExtrasAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

    new-instance v9, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$2;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)V

    invoke-virtual {v8, v9}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 123
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAmenitiesList:Ljava/util/List;

    .line 125
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->sSpecialFeatures:[Lcom/airbnb/android/models/Amenities;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_bb
    if-ge v2, v3, :cond_d6

    aget-object v6, v0, v2

    .line 126
    .local v6, "specialFeature":Lcom/airbnb/android/models/Amenities;
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAmenitiesList:Ljava/util/List;

    new-instance v9, Lcom/airbnb/android/models/AmenitiesItem;

    iget v10, v6, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-direct {v9, v6, v10}, Lcom/airbnb/android/models/AmenitiesItem;-><init>(Lcom/airbnb/android/models/Amenities;Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 129
    .end local v6    # "specialFeature":Lcom/airbnb/android/models/Amenities;
    :cond_d6
    new-instance v8, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAmenitiesList:Ljava/util/List;

    invoke-direct {v8, v9, v11, v11, v10}, Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    .line 131
    const v8, 0x7f0801f8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/airbnb/android/views/LinearListView;

    iput-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

    .line 132
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

    iget-object v9, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAdapter:Lcom/airbnb/android/adapters/managelisting/AmenitiesAdapter;

    invoke-virtual {v8, v9}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->mSpecialFeaturesAmenitiesListView:Lcom/airbnb/android/views/LinearListView;

    new-instance v9, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$3;

    invoke-direct {v9, p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)V

    invoke-virtual {v8, v9}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 145
    return-object v7
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 152
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 153
    .local v0, "actionbar":Landroid/app/ActionBar;
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 154
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 156
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 159
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    return-void
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 183
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 185
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 186
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 188
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 189
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 190
    return-void
.end method
