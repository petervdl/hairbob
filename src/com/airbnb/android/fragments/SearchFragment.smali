.class public Lcom/airbnb/android/fragments/SearchFragment;
.super Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;
.source "SearchFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/airbnb/android/interfaces/SearchInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/SearchFragment$11;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/airbnb/android/interfaces/SearchInterface;"
    }
.end annotation


# static fields
.field public static final ARG_AUTO_START_SEARCH:Ljava/lang/String; = "auto_start_search"

.field private static final ARG_LOCATION_SEARCH:Ljava/lang/String; = "location_search"

.field private static final DELAY_AUTOCOMPLETE_MILLIS:I = 0x1f4

.field public static final INTENT_ACTION_LOADED_SEARCH_RESULTS:Ljava/lang/String; = ".intent.action.LOADED_SEARCH_RESULTS"

.field private static final INTENT_PARAM_CHECKIN:Ljava/lang/String; = "checkin"

.field private static final INTENT_PARAM_CHECKOUT:Ljava/lang/String; = "checkout"

.field private static final INTENT_PARAM_GUESTS:Ljava/lang/String; = "guests"

.field private static final REQUEST_CODE_FILTERS:I = 0xea

.field public static final REQUEST_CODE_LMB_FILTERS:I = 0xeb

.field private static final SEARCH_INFO_CURSOR_LOADER_ID:I = 0x0

.field private static final SEARCH_PLACES_CURSOR_LOADER_ID:I = 0x1

.field public static final SEARCH_REQUEST_TAG:Ljava/lang/String; = "search_request_tag"

.field public static final TAG:Ljava/lang/String;

.field private static final TAG_DIALOG_FRAGMENT:Ljava/lang/String; = "dialog"


# instance fields
.field private mActionExpandListenerSet:Z

.field private mActionViewSetup:Z

.field private mDrawerAction:Z

.field private mHasCurrentLocation:Z

.field private mHistoryHeaderView:Landroid/widget/LinearLayout;

.field private mIsLocationSearch:Z

.field private mIsSearchBarExpanded:Z

.field private mIsSearchMenuItemsInitialized:Z

.field private mLmbCalloutContainer:Landroid/view/View;

.field private mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSearchAutoCompleteAdapter:Landroid/widget/CursorAdapter;

.field private mSearchBar:Landroid/view/MenuItem;

.field protected mSearchFilterContainer:Landroid/view/View;

.field private mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;

.field protected mSearchHistoryListView:Landroid/widget/ListView;

.field private mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

.field private mSearchMethod:Ljava/lang/String;

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShouldNotChangeState:Z

.field private mViewCreated:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-class v0, Lcom/airbnb/android/fragments/SearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/fragments/SearchFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;-><init>()V

    .line 97
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mViewCreated:Z

    .line 98
    iput-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mActionExpandListenerSet:Z

    .line 119
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/SearchFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mShouldNotChangeState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/models/SearchInfo;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/airbnb/android/fragments/SearchFragment;Lcom/airbnb/android/requests/SearchRequest;)Lcom/airbnb/android/requests/SearchRequest;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;
    .param p1, "x1"    # Lcom/airbnb/android/requests/SearchRequest;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/utils/LocationHelper;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/airbnb/android/fragments/SearchFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mHasCurrentLocation:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/airbnb/android/fragments/SearchFragment;)Lcom/airbnb/android/adapters/SearchHistoryAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/widget/LinearLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mHistoryHeaderView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLmbCalloutContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/fragments/SearchFragment;->onLocationSelected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/SearchFragment;->logSearchQueries(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/SearchFragment;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/widget/SearchView;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/SearchFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;->querySearchAutocomplete()V

    return-void
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/SearchFragment;)Landroid/widget/CursorAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchAutoCompleteAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/airbnb/android/fragments/SearchFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mDrawerAction:Z

    return v0
.end method

.method static synthetic access$902(Lcom/airbnb/android/fragments/SearchFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SearchFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mDrawerAction:Z

    return p1
.end method

.method private connectLocationClient()V
    .registers 4

    .prologue
    .line 976
    new-instance v0, Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/SearchFragment$10;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/SearchFragment$10;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/LocationHelper;-><init>(Landroid/content/Context;Lcom/airbnb/android/utils/LocationHelper$LocationHelperCallbacks;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    .line 1003
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->connectLocationClient()V

    .line 1004
    return-void
.end method

.method private fadeMenuItems(F)V
    .registers 7
    .param p1, "slideOffset"    # F

    .prologue
    .line 370
    iget-boolean v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchMenuItemsInitialized:Z

    if-eqz v3, :cond_32

    .line 371
    const v3, 0x3f733333

    cmpg-float v3, p1, v3

    if-gez v3, :cond_19

    .line 372
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    if-nez v3, :cond_19

    .line 373
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 377
    :cond_19
    const/high16 v3, 0x3f800000

    sub-float v0, v3, p1

    .line 378
    .local v0, "diff":F
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 379
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    .line 380
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 388
    .end local v0    # "diff":F
    .end local v2    # "view":Landroid/view/View;
    :cond_32
    :goto_32
    return-void

    .line 382
    .restart local v0    # "diff":F
    :cond_33
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 383
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_32

    .line 384
    const/high16 v3, 0x437f0000

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_32
.end method

.method private getCalendarFromParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .registers 9
    .param p1, "dateParam"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 603
    invoke-static {p1}, Lcom/airbnb/android/utils/DateHelper;->getCalendarFromString(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 604
    .local v0, "cal":Ljava/util/Calendar;
    if-nez v0, :cond_29

    .line 606
    const-string/jumbo v1, "android_eng"

    const/4 v2, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "type"

    const-string/jumbo v5, "search_deep_link"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "unexpected_date_format"

    invoke-virtual {v3, v4, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 609
    :cond_29
    return-object v0
.end method

.method private launchNewLocationBasedSearch()V
    .registers 4

    .prologue
    .line 840
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 841
    sget-object v0, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Fetching:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 842
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/LocationHelper;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/fragments/SearchFragment;->setupLocationSearch(Landroid/location/Location;)V

    .line 843
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->launchNewListingLoadingTask()V

    .line 848
    :goto_19
    return-void

    .line 845
    :cond_1a
    const v0, 0x7f0e01ac

    const v1, 0x7f0e0403

    const v2, 0x7f0e0563

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->createSingleButtonDialog(III)Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/ZenDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_19
.end method

.method private logSearchQueries(Ljava/lang/String;)V
    .registers 13
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1024
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1025
    .local v3, "now":J
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.airbnb.android"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-wide v1, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 1027
    .local v1, "installTime":J
    cmp-long v6, v3, v1

    if-lez v6, :cond_58

    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v1

    cmp-long v6, v3, v6

    if-gez v6, :cond_58

    .line 1028
    const-string/jumbo v6, "android_eng"

    const/4 v7, 0x0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v8

    const-string/jumbo v9, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v8

    const-string/jumbo v9, "is_first"

    iget-object v10, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    invoke-virtual {v10}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->getCount()I

    move-result v10

    if-nez v10, :cond_46

    const/4 v5, 0x1

    :cond_46
    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v9, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    const-string/jumbo v8, "query"

    invoke-virtual {v5, v8, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_58} :catch_59

    .line 1036
    .end local v1    # "installTime":J
    .end local v3    # "now":J
    :cond_58
    :goto_58
    return-void

    .line 1033
    :catch_59
    move-exception v0

    .line 1034
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_58
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/SearchFragment;
    .registers 2

    .prologue
    .line 122
    new-instance v0, Lcom/airbnb/android/fragments/SearchFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/SearchFragment;-><init>()V

    .line 123
    .local v0, "fragment":Lcom/airbnb/android/fragments/SearchFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    return-object v0
.end method

.method public static newInstanceForAutoSearch()Lcom/airbnb/android/fragments/SearchFragment;
    .registers 4

    .prologue
    .line 128
    invoke-static {}, Lcom/airbnb/android/fragments/SearchFragment;->newInstance()Lcom/airbnb/android/fragments/SearchFragment;

    move-result-object v1

    .line 129
    .local v1, "fragment":Lcom/airbnb/android/fragments/SearchFragment;
    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 130
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "auto_start_search"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 132
    return-object v1
.end method

.method private onLocationSelected(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 468
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->clearLocation()V

    .line 469
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/SearchFragment;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method private querySearchAutocomplete()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 473
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 474
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 475
    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 476
    invoke-virtual {v0, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 485
    :cond_17
    :goto_17
    return-void

    .line 478
    :cond_18
    invoke-virtual {v0, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_17

    .line 481
    :cond_1c
    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 482
    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    goto :goto_17
.end method

.method private setActionViewState()V
    .registers 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchMenuItemsInitialized:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    if-ne v0, v1, :cond_14

    .line 558
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 562
    :cond_13
    :goto_13
    return-void

    .line 559
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchMenuItemsInitialized:Z

    if-eqz v0, :cond_13

    .line 560
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_13
.end method

.method private setOnActionExpandListener()V
    .registers 3

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchMenuItemsInitialized:Z

    if-nez v0, :cond_5

    .line 522
    :goto_4
    return-void

    .line 492
    :cond_5
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    new-instance v1, Lcom/airbnb/android/fragments/SearchFragment$6;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SearchFragment$6;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 521
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mActionExpandListenerSet:Z

    goto :goto_4
.end method

.method private setStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;I)V
    .registers 9
    .param p1, "startTime"    # Ljava/util/Calendar;
    .param p2, "endTime"    # Ljava/util/Calendar;
    .param p3, "duration"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/airbnb/android/utils/CalendarHelper;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 754
    :cond_18
    if-eqz p1, :cond_b0

    if-eqz p2, :cond_b0

    .line 755
    const-string/jumbo v0, "apply_dates_click"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "old_checkin"

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v3}, Lcom/airbnb/android/models/SearchInfo;->getCheckinTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "new_checkin"

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "old_checkout"

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v3}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "new_checkout"

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackFiltersAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 762
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_b0

    .line 763
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Search"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "click_change_date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/MixPanelHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/MixPanelHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/MixPanelHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v2}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/utils/MixPanelHelper;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 770
    :cond_b0
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/SearchInfo;->setCheckinDate(Ljava/util/Calendar;)V

    .line 771
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    .line 773
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mViewCreated:Z

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getSearchTerm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 774
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->loadListings()V

    .line 777
    :cond_cd
    return-void
.end method

.method private setupActionView()V
    .registers 4

    .prologue
    .line 407
    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    .line 408
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 409
    .local v0, "searchManager":Landroid/app/SearchManager;
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 411
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchAutoCompleteAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V

    .line 413
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/airbnb/android/fragments/SearchFragment$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/SearchFragment$4;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 443
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/airbnb/android/fragments/SearchFragment$5;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/SearchFragment$5;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V

    .line 459
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 461
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mViewCreated:Z

    if-eqz v1, :cond_52

    .line 462
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;->setOnActionExpandListener()V

    .line 464
    :cond_52
    return-void
.end method

.method private setupLocationSearch(Landroid/location/Location;)V
    .registers 8
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 852
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    .line 853
    .local v0, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->clearSearchTerm()V

    .line 854
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/models/SearchInfo;->setLocation(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 855
    return-void
.end method


# virtual methods
.method protected clearListings()V
    .registers 3

    .prologue
    .line 956
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->clearListings()V

    .line 957
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->updateActionBar()V

    .line 959
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v0

    new-instance v1, Lcom/airbnb/android/fragments/SearchFragment$9;

    invoke-direct {v1, p0}, Lcom/airbnb/android/fragments/SearchFragment$9;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 967
    return-void
.end method

.method public doSearch()V
    .registers 1

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->launchNewListingLoadingTask()V

    .line 677
    return-void
.end method

.method public doSearch(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 613
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->clearListings()V

    .line 615
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 616
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "Search"

    aput-object v1, v0, v2

    const-string/jumbo v1, "click_current_location"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 617
    const-string/jumbo v0, "use_current_location"

    invoke-static {v0}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackSearchAction(Ljava/lang/String;)V

    .line 618
    const-string/jumbo v0, "current_location"

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchMethod:Ljava/lang/String;

    .line 633
    :cond_26
    :goto_26
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->setMenuState()V

    .line 635
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 636
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/SearchInfo;->setSearchTerm(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->loadListings()V

    .line 639
    return-void

    .line 619
    :cond_37
    const-string/jumbo v0, "android.intent.action.VIEW"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 620
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "Search"

    aput-object v1, v0, v2

    const-string/jumbo v1, "click_autocomplete_location"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 621
    const-string/jumbo v0, "use_autocomplete_result"

    invoke-static {v0}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackSearchAction(Ljava/lang/String;)V

    .line 622
    const-string/jumbo v0, "autocomplete"

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchMethod:Ljava/lang/String;

    goto :goto_26

    .line 623
    :cond_5b
    const-string/jumbo v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 624
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "Search"

    aput-object v1, v0, v2

    const-string/jumbo v1, "type_search"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 625
    const-string/jumbo v0, "use_typed_location"

    invoke-static {v0}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackSearchAction(Ljava/lang/String;)V

    .line 626
    const-string/jumbo v0, "type"

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchMethod:Ljava/lang/String;

    goto :goto_26

    .line 627
    :cond_7f
    const-string/jumbo v0, "android.intent.action.PICK"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 628
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "Search"

    aput-object v1, v0, v2

    const-string/jumbo v1, "click_from_history"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 629
    const-string/jumbo v0, "use_saved_search"

    invoke-static {v0}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackSearchAction(Ljava/lang/String;)V

    .line 630
    const-string/jumbo v0, "history"

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchMethod:Ljava/lang/String;

    goto :goto_26
.end method

.method public doWebIntentSearch(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .param p1, "queryParam"    # Ljava/lang/String;
    .param p2, "intentData"    # Landroid/net/Uri;

    .prologue
    const/16 v6, 0x2d

    .line 565
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/SearchFragment;->mViewCreated:Z

    if-eqz v4, :cond_1b

    .line 566
    sget-object v4, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Fetching:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 568
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 570
    iget-boolean v4, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchMenuItemsInitialized:Z

    if-eqz v4, :cond_1b

    .line 571
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 575
    :cond_1b
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v4}, Lcom/airbnb/android/models/SearchInfo;->clearAllFilters()V

    .line 577
    const-string/jumbo v4, "--"

    const-string/jumbo v5, ", "

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 578
    .local v3, "query":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v4, v3}, Lcom/airbnb/android/models/SearchInfo;->setSearchTerm(Ljava/lang/String;)V

    .line 580
    const-string/jumbo v4, "checkin"

    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    .local v0, "checkinParam":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 582
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/airbnb/android/fragments/SearchFragment;->getCalendarFromParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/models/SearchInfo;->setCheckinDate(Ljava/util/Calendar;)V

    .line 584
    :cond_55
    const-string/jumbo v4, "checkout"

    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 585
    .local v1, "checkoutParam":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6f

    .line 586
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/airbnb/android/fragments/SearchFragment;->getCalendarFromParam(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    .line 588
    :cond_6f
    const-string/jumbo v4, "guests"

    invoke-virtual {p2, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    .local v2, "guestsParam":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_89

    .line 590
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/airbnb/android/models/SearchInfo;->setGuestCount(I)V

    .line 592
    :cond_89
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->loadListings()V

    .line 593
    return-void
.end method

.method protected enableListingsResult(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->isWideMode()Z

    move-result v2

    if-nez v2, :cond_13

    .line 528
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mBrowsableViewPager:Lcom/airbnb/android/views/BrowsableViewPager;

    if-eqz p1, :cond_11

    :goto_d
    invoke-virtual {v2, v0}, Lcom/airbnb/android/views/BrowsableViewPager;->setVisibility(I)V

    .line 532
    :goto_10
    return-void

    :cond_11
    move v0, v1

    .line 528
    goto :goto_d

    .line 530
    :cond_13
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mContentFrame:Landroid/view/View;

    if-eqz p1, :cond_1b

    :goto_17
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_1b
    move v0, v1

    goto :goto_17
.end method

.method protected getBrowsableType()Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;
    .registers 2

    .prologue
    .line 137
    sget-object v0, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;->Search:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableType;

    return-object v0
.end method

.method protected getCameFrom()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1010
    const-string/jumbo v0, "search"

    return-object v0
.end method

.method protected getDatesString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 947
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    .line 948
    .local v0, "searchInfo":Lcom/airbnb/android/models/SearchInfo;
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 949
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckinDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getCheckoutDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/utils/DateHelper;->getStringDateSpan(Landroid/content/Context;Ljava/util/Calendar;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    .line 951
    :goto_26
    return-object v1

    :cond_27
    const-string/jumbo v1, ""

    goto :goto_26
.end method

.method protected getLayoutId()I
    .registers 2

    .prologue
    .line 142
    const v0, 0x7f0300e5

    return v0
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 859
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchQuery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v0}, Lcom/airbnb/android/models/SearchInfo;->getSearchTerm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected launchNewListingLoadingTask()V
    .registers 5

    .prologue
    .line 680
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/SearchRequest;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 681
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/SearchRequest;->cancel()V

    .line 684
    :cond_11
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/fragments/SearchFragment$7;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/SearchFragment$7;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/volley/RequestQueue;->cancelAll(Lcom/android/volley/RequestQueue$RequestFilter;)V

    .line 693
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    .line 695
    new-instance v0, Lcom/airbnb/android/fragments/SearchFragment$8;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/SearchFragment$8;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    .line 742
    .local v0, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/SearchRequest;>;"
    new-instance v1, Lcom/airbnb/android/requests/SearchRequest;

    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Lcom/airbnb/android/requests/SearchRequest;-><init>(Lcom/airbnb/android/models/SearchInfo;ILcom/airbnb/android/requests/RequestListener;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    .line 743
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    const-string/jumbo v2, "search_request_tag"

    invoke-virtual {v1, v2}, Lcom/airbnb/android/requests/SearchRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    .line 745
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/SearchRequest;->willMissCache()Z

    move-result v1

    if-eqz v1, :cond_55

    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Fetching:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    :goto_4c
    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 747
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchRequest:Lcom/airbnb/android/requests/SearchRequest;

    invoke-virtual {v1, p0}, Lcom/airbnb/android/requests/SearchRequest;->executeLifecycle(Lcom/airbnb/android/interfaces/RequestLifecycleManager;)V

    .line 748
    return-void

    .line 745
    :cond_55
    sget-object v1, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->FetchingCached:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    goto :goto_4c
.end method

.method public loadListings()V
    .registers 4

    .prologue
    .line 822
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchInfo;->getSearchTerm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 823
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/contentproviders/SearchInfoDatabaseHandler;->saveSearchInfo(Lcom/airbnb/android/models/SearchInfo;)Z

    .line 825
    :cond_19
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mBrowsableSectionsAdapter:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;

    sget-object v2, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->Photo:Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;

    invoke-virtual {v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter$BrowsableSection;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/adapters/BrowsableSectionsAdapter;->getCachedFragment(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;

    .line 826
    .local v0, "f":Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;
    if-eqz v0, :cond_2c

    .line 827
    invoke-virtual {v0}, Lcom/airbnb/android/fragments/BrowsableListingsPhotoFragment;->cancelAdditionalLoading()V

    .line 830
    :cond_2c
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsLocationSearch:Z

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchInfo;->getSearchTerm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 832
    :cond_3c
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->launchNewListingLoadingTask()V

    .line 837
    :goto_3f
    return-void

    .line 835
    :cond_40
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;->launchNewLocationBasedSearch()V

    goto :goto_3f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 869
    const/4 v9, -0x1

    if-ne p2, v9, :cond_6

    .line 870
    sparse-switch p1, :sswitch_data_7c

    .line 903
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 904
    :goto_9
    return-void

    .line 872
    :sswitch_a
    const/4 v6, 0x0

    .line 873
    .local v6, "startCalendar":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 874
    .local v1, "endCalendar":Ljava/util/Calendar;
    const-string/jumbo v9, "start_time"

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 875
    .local v7, "startTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_38

    .line 876
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 877
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 878
    const-string/jumbo v9, "end_time"

    const-wide/16 v10, -0x1

    invoke-virtual {p3, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 879
    .local v2, "endTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-lez v9, :cond_38

    .line 880
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 881
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 884
    .end local v2    # "endTime":J
    :cond_38
    const-string/jumbo v9, "duration"

    const/4 v10, 0x1

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 885
    .local v0, "duration":I
    const-string/jumbo v9, "from_search_filter"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 886
    .local v4, "fromSearchFilter":Z
    if-eqz v4, :cond_64

    .line 887
    invoke-direct {p0, v6, v1, v0}, Lcom/airbnb/android/fragments/SearchFragment;->setStayDuration(Ljava/util/Calendar;Ljava/util/Calendar;I)V

    .line 892
    :goto_4d
    const-string/jumbo v9, "search_action"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 893
    .local v5, "searchAction":Ljava/lang/String;
    iget-object v9, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v9}, Lcom/airbnb/android/models/SearchInfo;->getSearchTerm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6f

    .end local v5    # "searchAction":Ljava/lang/String;
    :goto_60
    invoke-virtual {p0, v9, v5}, Lcom/airbnb/android/fragments/SearchFragment;->doSearch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 889
    :cond_64
    iget-object v9, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v9, v6}, Lcom/airbnb/android/models/SearchInfo;->setCheckinDate(Ljava/util/Calendar;)V

    .line 890
    iget-object v9, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v9, v1}, Lcom/airbnb/android/models/SearchInfo;->setCheckoutDate(Ljava/util/Calendar;)V

    goto :goto_4d

    .line 893
    .restart local v5    # "searchAction":Ljava/lang/String;
    :cond_6f
    const-string/jumbo v5, "android.intent.action.VIEW"

    goto :goto_60

    .line 896
    .end local v0    # "duration":I
    .end local v1    # "endCalendar":Ljava/util/Calendar;
    .end local v4    # "fromSearchFilter":Z
    .end local v5    # "searchAction":Ljava/lang/String;
    .end local v6    # "startCalendar":Ljava/util/Calendar;
    .end local v7    # "startTime":J
    :sswitch_73
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->loadListings()V

    goto :goto_9

    .line 899
    :sswitch_77
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->launchNewListingLoadingTask()V

    goto :goto_9

    .line 870
    nop

    :sswitch_data_7c
    .sparse-switch
        0x65 -> :sswitch_a
        0xea -> :sswitch_73
        0xeb -> :sswitch_77
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onAttach(Landroid/app/Activity;)V

    .line 250
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mActionViewSetup:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchMenuItemsInitialized:Z

    if-eqz v0, :cond_12

    .line 251
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;->setupActionView()V

    .line 253
    :cond_12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 147
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "search_came_from"

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getCameFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    .line 153
    new-instance v0, Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030160

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "query"

    aput-object v5, v4, v6

    new-array v5, v8, [I

    const v7, 0x7f0803a3

    aput v7, v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    .line 157
    new-instance v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f03015f

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "suggest_text_1"

    aput-object v5, v4, v6

    new-array v5, v8, [I

    const v7, 0x7f0803a2

    aput v7, v5, v6

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchAutoCompleteAdapter:Landroid/widget/CursorAdapter;

    .line 160
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
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

    .line 781
    packed-switch p1, :pswitch_data_40

    move-object v0, v4

    .line 791
    :goto_5
    return-object v0

    .line 783
    :pswitch_6
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/airbnb/android/contentproviders/SearchInfoProvider;->URI_SEARCH_INFO:Landroid/net/Uri;

    sget-object v3, Lcom/airbnb/android/models/SearchInfo$SearchInfoContract;->FIELDS:[Ljava/lang/String;

    const-string/jumbo v6, "last_update DESC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 787
    :pswitch_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://.contentproviders.PlacesSearchSuggestionProvider/search_no_location/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 788
    .local v2, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/airbnb/android/contentproviders/PlacesSearchSuggestionProvider;->SEARCH_SUGGEST_MY_LOCATION_COLUMNS:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 781
    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_6
        :pswitch_18
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v1, 0x1

    .line 327
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 328
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->shouldShowSearchBarMenu()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 329
    const v0, 0x7f10001b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 331
    const v0, 0x7f080532

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    .line 332
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchMenuItemsInitialized:Z

    .line 335
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 336
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;->setupActionView()V

    .line 337
    iput-boolean v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mActionViewSetup:Z

    .line 340
    :cond_26
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;->setActionViewState()V

    .line 342
    :cond_29
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f080291

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryListView:Landroid/widget/ListView;

    .line 167
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 168
    const v2, 0x7f0301bc

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mHistoryHeaderView:Landroid/widget/LinearLayout;

    .line 169
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mHistoryHeaderView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 171
    const-string/jumbo v2, "discover"

    const-string/jumbo v3, "last_minute_bookings"

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 173
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mHistoryHeaderView:Landroid/widget/LinearLayout;

    const v3, 0x7f0804b2

    invoke-static {v2, v3}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLmbCalloutContainer:Landroid/view/View;

    .line 174
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLmbCalloutContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLmbCalloutContainer:Landroid/view/View;

    const v3, 0x7f0200d0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 177
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLmbCalloutContainer:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/SearchFragment$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SearchFragment$1;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    :cond_57
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryListView:Landroid/widget/ListView;

    new-instance v3, Lcom/airbnb/android/fragments/SearchFragment$2;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SearchFragment$2;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 200
    const v2, 0x7f080292

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchFilterContainer:Landroid/view/View;

    .line 202
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchFilterContainer:Landroid/view/View;

    new-instance v3, Lcom/airbnb/android/fragments/SearchFragment$3;

    invoke-direct {v3, p0}, Lcom/airbnb/android/fragments/SearchFragment$3;-><init>(Lcom/airbnb/android/fragments/SearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 226
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_96

    .line 227
    const-string/jumbo v2, "location_search"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsLocationSearch:Z

    .line 229
    const-string/jumbo v2, "auto_start_search"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 230
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->launchNewListingLoadingTask()V

    .line 234
    :cond_96
    iput-boolean v5, p0, Lcom/airbnb/android/fragments/SearchFragment;->mViewCreated:Z

    .line 239
    iget-boolean v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mActionExpandListenerSet:Z

    if-nez v2, :cond_9f

    .line 240
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;->setOnActionExpandListener()V

    .line 243
    :cond_9f
    return-object v1
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 314
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onDestroy()V

    .line 315
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "search_came_from"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/utils/Strap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-void
.end method

.method public onDrawerClosed()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 392
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onDrawerClosed()V

    .line 393
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchMenuItemsInitialized:Z

    if-eqz v1, :cond_29

    .line 394
    iget-boolean v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchBarExpanded:Z

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->isSwapping()Z

    move-result v1

    if-nez v1, :cond_24

    .line 395
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mDrawerAction:Z

    .line 396
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 397
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 398
    .local v0, "view":Landroid/view/View;
    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 400
    .end local v0    # "view":Landroid/view/View;
    :cond_24
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    :cond_29
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mDrawerOpen:Z

    .line 404
    return-void
.end method

.method public onDrawerOpened()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 346
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onDrawerOpened()V

    .line 347
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchMenuItemsInitialized:Z

    if-eqz v0, :cond_34

    .line 348
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mDrawerAction:Z

    .line 349
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mIsSearchBarExpanded:Z

    .line 350
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 351
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchBar:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 353
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 354
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 358
    :cond_34
    iput-boolean v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mDrawerOpen:Z

    .line 359
    return-void
.end method

.method public onDrawerSlide(F)V
    .registers 2
    .param p1, "slideOffset"    # F

    .prologue
    .line 363
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onDrawerSlide(F)V

    .line 364
    iput p1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSlideOffset:F

    .line 366
    invoke-direct {p0, p1}, Lcom/airbnb/android/fragments/SearchFragment;->fadeMenuItems(F)V

    .line 367
    return-void
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
    .line 796
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 805
    :goto_7
    return-void

    .line 798
    :pswitch_8
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    invoke-virtual {v0, p2}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 799
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    goto :goto_7

    .line 802
    :pswitch_13
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchAutoCompleteAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_7

    .line 796
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/support/v4/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/SearchFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v1, 0x0

    .line 809
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    .line 819
    :goto_8
    return-void

    .line 811
    :pswitch_9
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 812
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    goto :goto_8

    .line 815
    :pswitch_14
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchAutoCompleteAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_8

    .line 809
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_9
        :pswitch_14
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 545
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 551
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 547
    :pswitch_c
    new-instance v0, Lcom/airbnb/android/events/OptionItemSelectedEvent;

    invoke-direct {v0}, Lcom/airbnb/android/events/OptionItemSelectedEvent;-><init>()V

    .line 548
    .local v0, "event":Lcom/airbnb/android/events/OptionItemSelectedEvent;
    sget-object v1, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 549
    const/4 v1, 0x1

    goto :goto_b

    .line 545
    :pswitch_data_18
    .packed-switch 0x7f080532
        :pswitch_c
    .end packed-switch
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onResume()V

    .line 275
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getSearchInfo()Lcom/airbnb/android/models/SearchInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    .line 277
    iput-boolean v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mShouldNotChangeState:Z

    .line 278
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;->setActionViewState()V

    .line 279
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    invoke-virtual {p0, v1}, Lcom/airbnb/android/fragments/SearchFragment;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 282
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    sget-object v2, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->Results:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    if-ne v1, v2, :cond_4a

    .line 283
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "airbnb_prefs"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "currency"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "selectedCurrency":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchInfo;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v1}, Lcom/airbnb/android/models/SearchInfo;->getCurrencyType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 285
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->loadListings()V

    .line 289
    .end local v0    # "selectedCurrency":Ljava/lang/String;
    :cond_4a
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->updateActionBar()V

    .line 290
    return-void
.end method

.method public onStart()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 257
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onStart()V

    .line 259
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 260
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 261
    invoke-virtual {v0, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 266
    :goto_12
    invoke-direct {p0}, Lcom/airbnb/android/fragments/SearchFragment;->connectLocationClient()V

    .line 267
    return-void

    .line 263
    :cond_16
    invoke-virtual {v0, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_12
.end method

.method public onStop()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 294
    invoke-super {p0}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->onStop()V

    .line 296
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    .line 297
    .local v1, "lm":Landroid/support/v4/app/LoaderManager;
    invoke-virtual {v1, v3}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 298
    invoke-virtual {v1, v3}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 301
    :cond_12
    invoke-virtual {v1, v4}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 302
    invoke-virtual {v1, v4}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 306
    :cond_1b
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 307
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v2, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLocationHelper:Lcom/airbnb/android/utils/LocationHelper;

    invoke-virtual {v2}, Lcom/airbnb/android/utils/LocationHelper;->disconnectLocationClient()V

    .line 310
    return-void
.end method

.method public setListingsData(Ljava/util/List;I)V
    .registers 3
    .param p2, "totalListingCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Listing;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 971
    .local p1, "listings":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Listing;>;"
    invoke-super {p0, p1, p2}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->setListingsData(Ljava/util/List;I)V

    .line 972
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->updateActionBar()V

    .line 973
    return-void
.end method

.method protected setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V
    .registers 10
    .param p1, "state"    # Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 643
    iget-boolean v5, p0, Lcom/airbnb/android/fragments/SearchFragment;->mShouldNotChangeState:Z

    if-eqz v5, :cond_9

    .line 672
    :goto_8
    return-void

    .line 646
    :cond_9
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase;->setState(Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;)V

    .line 647
    sget-object v5, Lcom/airbnb/android/fragments/SearchFragment$11;->$SwitchMap$com$airbnb$android$fragments$BrowsableListingsFragmentBase$BrowsableState:[I

    invoke-virtual {p1}, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_62

    .line 671
    :goto_17
    iput-object p1, p0, Lcom/airbnb/android/fragments/SearchFragment;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    goto :goto_8

    .line 649
    :pswitch_1a
    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchFilterContainer:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, "numSearchHistory":I
    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    if-eqz v5, :cond_2d

    .line 652
    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryAdapter:Lcom/airbnb/android/adapters/SearchHistoryAdapter;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/SearchHistoryAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 653
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_4a

    move v1, v3

    .line 655
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2d
    :goto_2d
    if-nez v1, :cond_4f

    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLmbCalloutContainer:Landroid/view/View;

    if-nez v5, :cond_4f

    iget-boolean v5, p0, Lcom/airbnb/android/fragments/SearchFragment;->mHasCurrentLocation:Z

    if-nez v5, :cond_4f

    move v2, v4

    .line 656
    .local v2, "showEmptyResults":Z
    :goto_38
    iget-object v5, p0, Lcom/airbnb/android/fragments/SearchFragment;->mEmptyResults:Lcom/airbnb/android/views/EmptyResults;

    if-nez v2, :cond_51

    :goto_3c
    invoke-static {v5, v4}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 657
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchHistoryListView:Landroid/widget/ListView;

    invoke-static {v3, v2}, Lcom/airbnb/android/utils/MiscUtils;->setGoneIf(Landroid/view/View;Z)V

    .line 658
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    invoke-virtual {v3}, Lcom/airbnb/android/models/SearchInfo;->clearAllFilters()V

    goto :goto_17

    .line 653
    .end local v2    # "showEmptyResults":Z
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_4a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_2d

    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_4f
    move v2, v3

    .line 655
    goto :goto_38

    .restart local v2    # "showEmptyResults":Z
    :cond_51
    move v4, v3

    .line 656
    goto :goto_3c

    .line 663
    .end local v1    # "numSearchHistory":I
    .end local v2    # "showEmptyResults":Z
    :pswitch_53
    iget-object v3, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchFilterContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    .line 666
    :pswitch_59
    invoke-virtual {p0, v4}, Lcom/airbnb/android/fragments/SearchFragment;->setMenuItemsVisibility(Z)V

    .line 667
    iget-object v4, p0, Lcom/airbnb/android/fragments/SearchFragment;->mSearchFilterContainer:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17

    .line 647
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_53
        :pswitch_53
        :pswitch_59
    .end packed-switch
.end method

.method protected setupActionBar(Landroid/app/ActionBar;)V
    .registers 3
    .param p1, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    const/4 v0, 0x0

    .line 908
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 909
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 910
    return-void
.end method

.method protected shouldShowSearchBarMenu()Z
    .registers 2

    .prologue
    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method protected showLoadingSpinner(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 536
    if-eqz p1, :cond_8

    .line 537
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 541
    :goto_7
    return-void

    .line 539
    :cond_8
    iget-object v0, p0, Lcom/airbnb/android/fragments/SearchFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    goto :goto_7
.end method

.method protected updateActionBar()V
    .registers 14

    .prologue
    const v8, 0x7f0e075c

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 913
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 914
    .local v1, "activity":Landroid/app/Activity;
    if-eqz v1, :cond_24

    .line 915
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 916
    .local v0, "actionBar":Landroid/app/ActionBar;
    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchFragment;->mListings:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1d

    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchFragment;->mCurrentState:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    sget-object v7, Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;->NewFetch:Lcom/airbnb/android/fragments/BrowsableListingsFragmentBase$BrowsableState;

    if-ne v6, v7, :cond_25

    .line 917
    :cond_1d
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 918
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 944
    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_24
    :goto_24
    return-void

    .line 920
    .restart local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_25
    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchFragment;->mListings:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v5

    .line 921
    .local v5, "title":Ljava/lang/String;
    const/4 v4, 0x0

    .line 922
    .local v4, "subtitle":Ljava/lang/String;
    iget-object v6, p0, Lcom/airbnb/android/fragments/SearchFragment;->mListings:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_38
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/Listing;

    .line 923
    .local v3, "listing":Lcom/airbnb/android/models/Listing;
    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 924
    invoke-virtual {p0, v8}, Lcom/airbnb/android/fragments/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 930
    .end local v3    # "listing":Lcom/airbnb/android/models/Listing;
    :cond_52
    iget v6, p0, Lcom/airbnb/android/fragments/SearchFragment;->mTotalListingsCount:I

    if-lez v6, :cond_63

    .line 931
    iget v6, p0, Lcom/airbnb/android/fragments/SearchFragment;->mTotalListingsCount:I

    const/16 v7, 0x3e8

    if-le v6, v7, :cond_6d

    .line 933
    const v6, 0x7f0e06c2

    invoke-virtual {p0, v6}, Lcom/airbnb/android/fragments/SearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 939
    :cond_63
    :goto_63
    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 940
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 941
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 935
    :cond_6d
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d003f

    iget v8, p0, Lcom/airbnb/android/fragments/SearchFragment;->mTotalListingsCount:I

    new-array v9, v12, [Ljava/lang/Object;

    iget v10, p0, Lcom/airbnb/android/fragments/SearchFragment;->mTotalListingsCount:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_63
.end method
