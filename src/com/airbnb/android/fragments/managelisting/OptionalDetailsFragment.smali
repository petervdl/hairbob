.class public Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "OptionalDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$4;
    }
.end annotation


# static fields
.field private static final ARGS_LISTING:Ljava/lang/String; = "listing"


# instance fields
.field private mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

.field private mDetailsItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

.field private mDetailsList:Lcom/airbnb/android/views/LinearListView;

.field private mDetailsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPriceItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

.field private mPriceList:Lcom/airbnb/android/views/LinearListView;

.field private mPriceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    .line 38
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    .line 69
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;)Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;)Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    return-object v0
.end method

.method private buildPriceMap(Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceMap:Ljava/util/HashMap;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceMap:Ljava/util/HashMap;

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->LongTermPrices:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingWeeklyPriceNative()I

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getListingMonthlyPriceNative()I

    move-result v0

    if-eqz v0, :cond_24

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void

    .line 180
    :cond_24
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 111
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;-><init>()V

    .line 112
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 114
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 116
    return-object v1
.end method

.method private refreshPriceListView()V
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->setPriceMap(Ljava/util/HashMap;)V

    .line 192
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;->notifyDataSetChanged()V

    .line 193
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->setListingObject(Lcom/airbnb/android/models/Listing;)V

    .line 124
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 129
    const v5, 0x7f0300c1

    const/4 v6, 0x0

    invoke-virtual {p1, v5, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 131
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v2

    .line 133
    .local v2, "listing":Lcom/airbnb/android/models/Listing;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceMap:Ljava/util/HashMap;

    .line 134
    invoke-direct {p0, v2}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->buildPriceMap(Lcom/airbnb/android/models/Listing;)V

    .line 136
    const-class v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-static {v5}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 137
    .local v3, "priceData":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;>;"
    sget-object v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 138
    sget-object v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v3, v5}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 139
    new-instance v5, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceMap:Ljava/util/HashMap;

    invoke-direct {v5, v6, v7, v3}, Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/EnumSet;)V

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    .line 142
    const v5, 0x7f080222

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/LinearListView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceList:Lcom/airbnb/android/views/LinearListView;

    .line 143
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceList:Lcom/airbnb/android/views/LinearListView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 144
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPriceList:Lcom/airbnb/android/views/LinearListView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mPricingAdapter:Lcom/airbnb/android/adapters/managelisting/ListingPricingAdapter;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsMap:Ljava/util/HashMap;

    .line 147
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsMap:Ljava/util/HashMap;

    sget-object v6, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getStreetAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsMap:Ljava/util/HashMap;

    sget-object v6, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const v7, 0x7f0e0559

    invoke-virtual {p0, v7}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/airbnb/android/models/Listing;->getNumberAmenitiesAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-class v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-static {v5}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 152
    .local v1, "detailsData":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;>;"
    sget-object v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 153
    sget-object v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->HouseManual:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 154
    sget-object v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 155
    sget-object v5, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v1, v5}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 156
    new-instance v5, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsMap:Ljava/util/HashMap;

    invoke-direct {v5, v6, v7, v1}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Ljava/util/EnumSet;)V

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    .line 159
    const v5, 0x7f080223

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/LinearListView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsList:Lcom/airbnb/android/views/LinearListView;

    .line 160
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsList:Lcom/airbnb/android/views/LinearListView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsItemOnClickListener:Lcom/airbnb/android/views/LinearListView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/LinearListView;->setOnItemClickListener(Lcom/airbnb/android/views/LinearListView$OnItemClickListener;)V

    .line 161
    iget-object v5, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsList:Lcom/airbnb/android/views/LinearListView;

    iget-object v6, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/LinearListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    const v5, 0x7f080224

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "deleteButton":Landroid/view/View;
    new-instance v5, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$3;

    invoke-direct {v5, p0, v2}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    return-object v4
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onResume()V

    .line 187
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->getListing()Lcom/airbnb/android/models/Listing;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->updateViews(Lcom/airbnb/android/models/Listing;)V

    .line 188
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 207
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 209
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    const v1, 0x7f0e075a

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->setActionBarTitle(I)V

    .line 210
    return-void
.end method

.method protected updateViews(Lcom/airbnb/android/models/Listing;)V
    .registers 5
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->buildPriceMap(Lcom/airbnb/android/models/Listing;)V

    .line 198
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->refreshPriceListView()V

    .line 200
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsMap:Ljava/util/HashMap;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const v2, 0x7f0e0559

    invoke-virtual {p0, v2}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/airbnb/android/models/Listing;->getNumberAmenitiesAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->setDetailsMap(Ljava/util/HashMap;)V

    .line 202
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->mDetailsAdapter:Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/managelisting/ListingDetailsAdapter;->notifyDataSetChanged()V

    .line 203
    return-void
.end method
