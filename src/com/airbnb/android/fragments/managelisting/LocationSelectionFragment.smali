.class public Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;
.super Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;
.source "LocationSelectionFragment.java"

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
.field private static final ARG_LISTING:Ljava/lang/String; = "listing"

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mAddress:Landroid/widget/TextView;

.field private mAirMapView:Lcom/airbnb/android/views/AirMapView;

.field private mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

.field private mEditText:Landroid/widget/AutoCompleteTextView;

.field private mListing:Lcom/airbnb/android/models/Listing;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const-class v0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)Lcom/airbnb/android/views/AirMapView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;Lcom/google/android/gms/maps/model/LatLng;)Z
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;
    .param p1, "x1"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->hasUserSetLocation(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v0

    return v0
.end method

.method private hasUserSetLocation(Lcom/google/android/gms/maps/model/LatLng;)Z
    .registers 9
    .param p1, "location"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const/4 v0, 0x1

    const-wide v5, 0x3f40624dd2f1a9fcL

    .line 170
    if-eqz p1, :cond_2b

    .line 171
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-lez v1, :cond_1a

    .line 180
    :cond_19
    :goto_19
    return v0

    .line 175
    :cond_1a
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-gtz v1, :cond_19

    .line 180
    :cond_2b
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;
    .registers 4
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 47
    new-instance v1, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;-><init>()V

    .line 48
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "listing"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 50
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->setArguments(Landroid/os/Bundle;)V

    .line 51
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "listing"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    .line 63
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->setHasOptionsMenu(Z)V

    .line 66
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
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

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://.contentproviders.PlacesSearchSuggestionProvider/cities/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 199
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_COLUMNS:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHasSetLocation()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 112
    const v1, 0x7f100016

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 113
    const v1, 0x7f08054e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 114
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x7f0e0175

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 117
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 70
    const v2, 0x7f0300bf

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f080211

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "addressLayout":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const v2, 0x7f080219

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mAddress:Landroid/widget/TextView;

    .line 76
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mAddress:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getFormattedAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    new-instance v2, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$1;-><init>(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v2, 0x7f080095

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/views/AirMapView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    .line 93
    iget-object v2, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$2;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$2;-><init>(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)V

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/airbnb/android/views/AirMapView;->onCreateView(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;ZLcom/airbnb/android/views/AirMapView$MapCallbacks;)V

    .line 106
    return-object v1
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 4
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
    .line 204
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 205
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 209
    .local p1, "arg0":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 210
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f08054e

    if-ne v3, v4, :cond_30

    .line 123
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3, v2}, Lcom/airbnb/android/models/Listing;->setLocationExact(Z)V

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, "userSetLocation":Z
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mAirMapView:Lcom/airbnb/android/views/AirMapView;

    invoke-virtual {v3}, Lcom/airbnb/android/views/AirMapView;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 127
    .local v0, "location":Lcom/google/android/gms/maps/model/LatLng;
    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->hasUserSetLocation(Lcom/google/android/gms/maps/model/LatLng;)Z

    move-result v1

    .line 128
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/models/Listing;->setLatitude(D)V

    .line 129
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/models/Listing;->setLongitude(D)V

    .line 131
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mTransitions:Lcom/airbnb/android/interfaces/ManageListingTransitions;

    iget-object v4, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-interface {v3, v4, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions;->updateLocation(Lcom/airbnb/android/models/Listing;ZZ)V

    .line 134
    .end local v0    # "location":Lcom/google/android/gms/maps/model/LatLng;
    .end local v1    # "userSetLocation":Z
    :goto_2f
    return v2

    :cond_30
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_2f
.end method

.method public onStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStart()V

    .line 141
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 143
    .local v0, "actionbar":Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHasSetLocation()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 145
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 146
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 147
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 148
    const v1, 0x7f03005b

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 149
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment$3;-><init>(Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :goto_33
    return-void

    .line 161
    :cond_34
    const v1, 0x7f0e0751

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_33
.end method

.method public onStop()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-super {p0}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onStop()V

    .line 187
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 188
    .local v0, "actionbar":Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 190
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 191
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 192
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method
