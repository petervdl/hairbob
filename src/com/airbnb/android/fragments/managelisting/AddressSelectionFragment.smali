.class public Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "AddressSelectionFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ARGS_IS_LYS:Ljava/lang/String; = "is_lys"

.field private static final ARGS_LOCATION:Ljava/lang/String; = "location"

.field private static final ARGS_PROPERTY_TYPE:Ljava/lang/String; = "property_type"

.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field private static final SEARCH_PLACES_CURSOR_LOADER_ID:I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mAddress:Landroid/widget/TextView;

.field private mAirMapView:Lcom/airbnb/android/views/AirMapView;

.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

.field private mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

.field private mNoAddressLayout:Landroid/view/View;

.field mNoAddressLayoutHeight:I

.field private mNoAddressView:Landroid/view/View;

.field private mSearchQuery:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/utils/LocationHelper;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/views/AirMapView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Landroid/widget/AutoCompleteTextView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->emptyAddressFields()V

    return-void
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mSearchQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)Lcom/airbnb/android/requests/ExternalStringRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    return-object v0
.end method

.method static synthetic access$802(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;Lcom/airbnb/android/requests/ExternalStringRequest;)Lcom/airbnb/android/requests/ExternalStringRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/ExternalStringRequest;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    return-object p1
.end method

.method private emptyAddressFields()V
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/Listing;->setStreetAddress(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static newInstance(Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;ZLcom/google/android/gms/maps/model/LatLng;)Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;
    .registers 7
    .param p0, "selection"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    .param p1, "isListYourSpace"    # Z
    .param p2, "listingLocation"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 89
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;-><init>()V

    .line 90
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "is_lys"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    if-eqz p0, :cond_1c

    .line 93
    const-string/jumbo v2, "property_type"

    invoke-virtual {p0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->ordinal()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 95
    :cond_1c
    const-string/jumbo v2, "location"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 96
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v1
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 81
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;-><init>()V

    .line 82
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 85
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->setHasOptionsMenu(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 107
    new-instance v0, Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/LocationHelper;-><init>(Landroid/content/Context;Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    .line 117
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 12
    .param p1, "arg0"    # I
    .param p2, "arg1"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 214
    iget-object v8, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mSearchQuery:Ljava/lang/String;

    .line 215
    .local v8, "searchQuery":Ljava/lang/String;
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->getLastLocation()Landroid/location/Location;

    move-result-object v7

    .line 216
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_36

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 222
    :cond_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://.contentproviders.PlacesSearchSuggestionProvider/address/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 224
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_COLUMNS_ADDRESS:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 16
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 264
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 267
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/SearchManager;

    .line 268
    .local v9, "searchManager":Landroid/app/SearchManager;
    new-instance v10, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 269
    .local v10, "searchView":Landroid/widget/SearchView;
    const v0, 0x7f080532

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 271
    .local v8, "searchItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 272
    new-instance v0, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030131

    const/4 v3, 0x0

    new-array v4, v12, [Ljava/lang/String;

    const-string/jumbo v5, "suggest_text_1"

    aput-object v5, v4, v6

    const-string/jumbo v5, "suggest_text_2"

    aput-object v5, v4, v11

    new-array v5, v12, [I

    fill-array-data v5, :array_98

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    .line 276
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    invoke-virtual {v10, v0}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 283
    :try_start_62
    const-class v0, Landroid/widget/SearchView;

    const-string/jumbo v1, "mQueryTextView"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 284
    .local v7, "f":Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 285
    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    :try_end_77
    .catch Ljava/lang/NoSuchFieldException; {:try_start_62 .. :try_end_77} :catch_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_62 .. :try_end_77} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_62 .. :try_end_77} :catch_91

    .line 294
    .end local v7    # "f":Ljava/lang/reflect/Field;
    :goto_77
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$5;-><init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V

    invoke-virtual {v10, v0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 326
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$6;-><init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V

    invoke-virtual {v10, v0}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 394
    invoke-static {v8, v10}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 395
    invoke-static {v8}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    .line 397
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 398
    return-void

    .line 290
    :catch_91
    move-exception v0

    goto :goto_77

    .line 288
    :catch_93
    move-exception v0

    goto :goto_77

    .line 286
    :catch_95
    move-exception v0

    goto :goto_77

    .line 272
    nop

    :array_98
    .array-data 4
        0x7f0800b7
        0x7f080215
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 121
    const v1, 0x7f0300d3

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 123
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/AirMapView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    .line 125
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$2;

    invoke-direct {v4, p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V

    invoke-virtual {v1, v2, v3, v5, v4}, Lcom/airbnb/android/views/AirMapView;->onCreateView(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;ZLcom/airbnb/android/views/AirMapView$MapCallbacks;)V

    .line 138
    const v1, 0x7f080253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;

    .line 139
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 150
    const v1, 0x7f080254

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressView:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressView:Landroid/view/View;

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment$4;-><init>(Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    return-object v0
.end method

.method public onDestroyView()V
    .registers 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onDestroyView()V

    .line 188
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/AirMapView;->onDestroyView()V

    .line 189
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v2, 0x0

    const/4 v3, -0x2

    .line 229
    if-eqz p2, :cond_4e

    .line 230
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_20

    .line 231
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_1a

    .line 233
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    .line 246
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 250
    :goto_1f
    return-void

    .line 235
    :cond_20
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 236
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v1, :cond_1a

    .line 238
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_48

    .line 239
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/AirMapView;->getHeight()I

    move-result v0

    .line 240
    .local v0, "height":I
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    iget v2, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayoutHeight:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    goto :goto_1a

    .line 242
    .end local v0    # "height":I
    :cond_48
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v3}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    goto :goto_1a

    .line 248
    :cond_4e
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mNoAddressLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1f
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 255
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f08040d

    if-ne v1, v2, :cond_42

    .line 403
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "ml_pre_list"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "location"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "locate_me_click"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v1}, Lcom/airbnb/android/utils/LocationHelper;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    .line 405
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_47

    .line 406
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/AirMapView;->animateCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 411
    .end local v0    # "location":Landroid/location/Location;
    :cond_42
    :goto_42
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 408
    .restart local v0    # "location":Landroid/location/Location;
    :cond_47
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e0403

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_42
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onPause()V

    .line 195
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    if-eqz v1, :cond_10

    .line 196
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/ExternalStringRequest;->cancel()V

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mGeocoderRequest:Lcom/airbnb/android/requests/ExternalStringRequest;

    .line 200
    :cond_10
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 201
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 202
    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 205
    :cond_1d
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mCursorAdapter:Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/managelisting/AddressAutoCompleteAdapter;->notifyDataSetInvalidated()V

    .line 206
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 170
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 172
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->connectLocationClient()V

    .line 174
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0e075d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 175
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 181
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->disconnectLocationClient()V

    .line 182
    return-void
.end method

.method public updateListing(Lcom/airbnb/android/models/Listing;)V
    .registers 4
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 259
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mAddress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getFormattedAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method
