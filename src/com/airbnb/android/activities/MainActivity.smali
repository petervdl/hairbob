.class public Lcom/airbnb/android/activities/MainActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;
.implements Lcom/airbnb/android/fragments/TOSDialogFragment$TOSDialogListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/MainActivity$14;,
        Lcom/airbnb/android/activities/MainActivity$DummySectionFragment;
    }
.end annotation


# static fields
.field private static final ACTIVITY_START_DELAY:I = 0xfa

.field public static final CURRENCY_CHANGE:Ljava/lang/String; = "currency_change"

.field private static final DISCOVER_AFTER_REFERRAL:Ljava/lang/String; = "DiscoverAfterReferral"

.field private static final DRAWER_CONTENT_SHRINK_AMOUNT:F = 0.05f

.field private static final EXTRA_GROUPS_URI:Ljava/lang/String; = "groups_uri"

.field private static final FETCH_DOMAINS_DELAY:I = 0x7d0

.field private static final FRAGMENT_CURRENCIES:Ljava/lang/String; = "currency_dialog"

.field private static final HOSPITALITY_FROM_WHY_HOST_FTUE:Ljava/lang/String; = "HospitailityFromWhyHost"

.field private static final IGNORE_GROUPS:Ljava/lang/String; = "ignore_groups"

.field private static final LOGIN_REQUEST:I = 0x1

.field private static final NAVIGATE_TO_GROUPS:Ljava/lang/String; = "GroupsDeepLink"

.field private static final SAVED_INSTANCE_MENU_ITEM:Ljava/lang/String; = "menu_item"

.field private static final SAVED_STATE_FRAGMENT_INSTANCE_STATE_KEYS:Ljava/lang/String; = "fragment_instance_state_keys"

.field private static final SAVED_STATE_FRAGMENT_INSTANCE_STATE_VALUES:Ljava/lang/String; = "fragment_instance_state_keys_values"

.field private static final SHOW_DISCOVER:Ljava/lang/String; = "ShowDiscover"

.field private static final SHOW_HOSTHOME:Ljava/lang/String; = "showHostHome"

.field private static final SHOW_LISTINGS:Ljava/lang/String; = "ShowListings"

.field private static final SHOW_SEARCH:Ljava/lang/String; = "ShowSearch"

.field private static final SHOW_YOUR_TRIPS:Ljava/lang/String; = "showYourTrips"

.field public static final TAG:Ljava/lang/String;

.field private static final TAG_DIALOG_FRAGMENT:Ljava/lang/String; = "dialog"

.field private static final UPGRADE_DIALOG_MAX_CANCEL_COUNT:I = 0xa

.field private static final UPGRADE_DIALOG_REFRESH_MS:J = 0x5265c00L


# instance fields
.field private mActiveAccountRequest:Lcom/airbnb/android/requests/GetActiveAccountRequest;

.field private mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;

.field private mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerLayoutView:Landroid/widget/FrameLayout;

.field private mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

.field private mForce:Z

.field private mForceBack:Z

.field private mFragmentStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

.field private mGestureListener:Lcom/amazon/motiongestures/GestureListener;

.field private mGestureManager:Lcom/amazon/motiongestures/GestureManager;

.field private mIgnoreGroupsOnCreate:Z

.field private mIsResumed:Z

.field private mLoggedOut:Z

.field private mShakeHelper:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

.field private mShowDiscoverFtue:Z

.field private mShownTosDialog:Z

.field private mSlideOffset:F

.field private mTOSAcceptRequest:Lcom/airbnb/android/requests/AccountUpdateRequest;

.field private mUpgradeDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 153
    const-class v0, Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/MainActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/activities/MainActivity;->mSlideOffset:F

    .line 554
    new-instance v0, Lcom/airbnb/android/activities/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/airbnb/android/activities/MainActivity$3;-><init>(Lcom/airbnb/android/activities/MainActivity;)V

    iput-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mGestureListener:Lcom/amazon/motiongestures/GestureListener;

    .line 1427
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/MainActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->executePendingTransactions()V

    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/MainActivity;)Landroid/support/v4/widget/DrawerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/airbnb/android/activities/MainActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity;->mUpgradeDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/MainActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->loadDrawerView()V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/activities/MainActivity;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;

    .prologue
    .line 151
    iget v0, p0, Lcom/airbnb/android/activities/MainActivity;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/activities/MainActivity;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;
    .param p1, "x1"    # F

    .prologue
    .line 151
    iput p1, p0, Lcom/airbnb/android/activities/MainActivity;->mSlideOffset:F

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/activities/MainActivity;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayoutView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/activities/MainActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/airbnb/android/activities/MainActivity;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$600(Lcom/airbnb/android/activities/MainActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->handleUpgradeDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/airbnb/android/activities/MainActivity;)Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    return-object v0
.end method

.method static synthetic access$800(Lcom/airbnb/android/activities/MainActivity;Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;
    .param p1, "x1"    # Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .param p2, "x2"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/airbnb/android/activities/MainActivity;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/airbnb/android/activities/MainActivity;->mShownTosDialog:Z

    return v0
.end method

.method static synthetic access$902(Lcom/airbnb/android/activities/MainActivity;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/MainActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/airbnb/android/activities/MainActivity;->mShownTosDialog:Z

    return p1
.end method

.method private buildTrebuchet()V
    .registers 4

    .prologue
    .line 637
    new-instance v0, Lcom/airbnb/android/requests/CampaignsRequest;

    invoke-static {p0}, Lcom/airbnb/android/utils/LocationHelper;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/activities/MainActivity$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/MainActivity$4;-><init>(Lcom/airbnb/android/activities/MainActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/CampaignsRequest;-><init>(Landroid/location/Location;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/CampaignsRequest;->execute()V

    .line 661
    return-void
.end method

.method private checkForCrashes()V
    .registers 4

    .prologue
    .line 999
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1000
    invoke-static {}, Lcom/airbnb/android/utils/CrashUtils;->saveCrashes()V

    .line 1003
    :cond_9
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    const-string/jumbo v1, "2d6f75df8a0ee86c7b61db5b1c985568"

    new-instance v2, Lcom/airbnb/android/activities/MainActivity$9;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/MainActivity$9;-><init>(Lcom/airbnb/android/activities/MainActivity;)V

    invoke-static {v0, v1, v2}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/CrashManagerListener;)V

    .line 1010
    return-void
.end method

.method private checkForSignIn()V
    .registers 5

    .prologue
    .line 1446
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    .line 1447
    .local v0, "api":Lcom/airbnb/android/AirbnbApi;
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->hasCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1448
    new-instance v1, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    new-instance v2, Lcom/airbnb/android/activities/MainActivity$11;

    invoke-direct {v2, p0, v0}, Lcom/airbnb/android/activities/MainActivity$11;-><init>(Lcom/airbnb/android/activities/MainActivity;Lcom/airbnb/android/AirbnbApi;)V

    invoke-direct {v1, p0, v2}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mActiveAccountRequest:Lcom/airbnb/android/requests/GetActiveAccountRequest;

    .line 1477
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mActiveAccountRequest:Lcom/airbnb/android/requests/GetActiveAccountRequest;

    invoke-virtual {v1}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->execute()V

    .line 1479
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/requests/ReservationObjectRequest;->forUserId(JLcom/airbnb/android/requests/RequestListener;)Lcom/airbnb/android/requests/ReservationObjectRequest;

    .line 1481
    :cond_27
    return-void
.end method

.method private createUpdateDialog(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10
    .param p1, "versionName"    # Ljava/lang/String;
    .param p2, "cancelCount"    # I
    .param p3, "cancelCountKey"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1501
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mUpgradeDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_7

    .line 1537
    :goto_6
    return-void

    .line 1504
    :cond_7
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "App_Open"

    aput-object v2, v1, v5

    const-string/jumbo v2, "view_upgrade_dialog"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "impressions"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1506
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1507
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    const v1, 0x7f0e07a8

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_33
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e07a9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e00b0

    new-instance v3, Lcom/airbnb/android/activities/MainActivity$13;

    invoke-direct {v3, p0, p3, p2}, Lcom/airbnb/android/activities/MainActivity$13;-><init>(Lcom/airbnb/android/activities/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e07a3

    new-instance v3, Lcom/airbnb/android/activities/MainActivity$12;

    invoke-direct {v3, p0}, Lcom/airbnb/android/activities/MainActivity$12;-><init>(Lcom/airbnb/android/activities/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1534
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mUpgradeDialog:Landroid/app/Dialog;

    .line 1535
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mUpgradeDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_6

    .line 1507
    :cond_65
    const v1, 0x7f0e07a7

    invoke-virtual {p0, v1}, Lcom/airbnb/android/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_33
.end method

.method private disableAmazonGesture()V
    .registers 3

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->hasAmazonMotionGestures()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 550
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mGestureManager:Lcom/amazon/motiongestures/GestureManager;

    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mGestureListener:Lcom/amazon/motiongestures/GestureListener;

    invoke-virtual {v0, v1}, Lcom/amazon/motiongestures/GestureManager;->unregisterListener(Lcom/amazon/motiongestures/GestureListener;)V

    .line 552
    :cond_d
    return-void
.end method

.method private doTrack()V
    .registers 19

    .prologue
    .line 867
    const-string/jumbo v11, "AA2c268e4ffaf3cf553af5ffa3dee775d08c716271"

    invoke-static {v11}, Lcom/newrelic/agent/android/NewRelic;->withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/newrelic/agent/android/NewRelic;->withLocationServiceEnabled(Z)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/newrelic/agent/android/NewRelic;->usingSsl(Z)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/newrelic/agent/android/NewRelic;->withLoggingEnabled(Z)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/newrelic/agent/android/NewRelic;->start(Landroid/content/Context;)V

    .line 871
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/utils/LocationHelper;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v8

    .line 873
    .local v8, "lastLocation":Landroid/location/Location;
    const-string/jumbo v12, "mobile_location_print"

    const/4 v13, 0x0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v14

    const-string/jumbo v15, "lat"

    if-nez v8, :cond_119

    const-string/jumbo v11, ""

    :goto_31
    invoke-virtual {v14, v15, v11}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v14

    const-string/jumbo v15, "lng"

    if-nez v8, :cond_123

    const-string/jumbo v11, ""

    :goto_3d
    invoke-virtual {v14, v15, v11}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v14

    const-string/jumbo v15, "loc_time"

    if-nez v8, :cond_12d

    const-string/jumbo v11, ""

    :goto_49
    invoke-virtual {v14, v15, v11}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v11

    invoke-static {v12, v13, v11}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 879
    :try_start_50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;
    :try_end_57
    .catch Ljava/util/MissingResourceException; {:try_start_50 .. :try_end_57} :catch_137

    .line 886
    new-instance v3, Lcom/airbnb/android/activities/MainActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/airbnb/android/activities/MainActivity$7;-><init>(Lcom/airbnb/android/activities/MainActivity;)V

    .line 894
    .local v3, "dogHouse":Landroid/os/AsyncTask;
    sget-object v11, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    instance-of v13, v3, Landroid/os/AsyncTask;

    if-nez v13, :cond_139

    invoke-virtual {v3, v11, v12}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 896
    .end local v3    # "dogHouse":Landroid/os/AsyncTask;
    :goto_6a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 897
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 899
    .local v10, "uri":Landroid/net/Uri;
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    .line 900
    .local v1, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    const v11, 0x7f0e0213

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/airbnb/android/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v9

    .line 901
    .local v9, "tracker":Lcom/google/android/gms/analytics/Tracker;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 903
    if-eqz v10, :cond_b5

    .line 904
    const-string/jumbo v11, "utm_source"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_140

    .line 905
    const-class v11, Lcom/airbnb/android/activities/MainActivity;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 906
    new-instance v11, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v11}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-virtual {v11}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 912
    :cond_b5
    :goto_b5
    const/4 v11, 0x0

    sput-boolean v11, Lcom/yozio/android/Yozio;->YOZIO_ENABLE_LOGGING:Z

    .line 913
    new-instance v2, Landroid/content/Intent;

    const-class v11, Lcom/airbnb/android/activities/ClaimCouponActivity;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 914
    .local v2, "ccaIntent":Landroid/content/Intent;
    const-string/jumbo v11, "airbnb_prefs"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/airbnb/android/activities/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string/jumbo v12, "referrals_startup"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 916
    .local v6, "instantReferral":Z
    if-eqz v6, :cond_f8

    .line 917
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenAppIntroFtue(Landroid/content/Context;)V

    .line 918
    const-string/jumbo v11, "airbnb_prefs"

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lcom/airbnb/android/activities/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 919
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v11, "referrals_startup"

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 920
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 921
    invoke-static {}, Lcom/airbnb/android/analytics/ReferralsAnalytics;->trackReferredUserLanding()V

    .line 922
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 925
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_f8
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v11

    const v12, 0x7f0e0863

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/airbnb/android/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0e0864

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/airbnb/android/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/airbnb/android/activities/MainActivity$8;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v6, v2}, Lcom/airbnb/android/activities/MainActivity$8;-><init>(Lcom/airbnb/android/activities/MainActivity;ZLandroid/content/Intent;)V

    invoke-static {v11, v12, v13, v14}, Lcom/yozio/android/Yozio;->setAppKeyAndSecretKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/yozio/android/interfaces/GetMetaDataCallback;)V

    .line 963
    .end local v1    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v2    # "ccaIntent":Landroid/content/Intent;
    .end local v6    # "instantReferral":Z
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "tracker":Lcom/google/android/gms/analytics/Tracker;
    .end local v10    # "uri":Landroid/net/Uri;
    :goto_118
    return-void

    .line 873
    :cond_119
    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_31

    :cond_123
    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3d

    :cond_12d
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_49

    .line 880
    :catch_137
    move-exception v4

    .line 881
    .local v4, "e":Ljava/util/MissingResourceException;
    goto :goto_118

    .line 894
    .end local v4    # "e":Ljava/util/MissingResourceException;
    .restart local v3    # "dogHouse":Landroid/os/AsyncTask;
    :cond_139
    check-cast v3, Landroid/os/AsyncTask;

    .end local v3    # "dogHouse":Landroid/os/AsyncTask;
    invoke-static {v3, v11, v12}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6a

    .line 907
    .restart local v1    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v9    # "tracker":Lcom/google/android/gms/analytics/Tracker;
    .restart local v10    # "uri":Landroid/net/Uri;
    :cond_140
    const-string/jumbo v11, "referrer"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b5

    .line 908
    const-string/jumbo v11, "referrer"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/google/android/gms/analytics/Tracker;->setReferrer(Ljava/lang/String;)V

    goto/16 :goto_b5
.end method

.method private enableAmazonGesture()V
    .registers 5

    .prologue
    .line 542
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->hasAmazonMotionGestures()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 543
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/amazon/motiongestures/Gesture;->getGestureFromId(I)Lcom/amazon/motiongestures/Gesture;

    move-result-object v0

    .line 544
    .local v0, "tiltGesture":Lcom/amazon/motiongestures/Gesture;
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mGestureManager:Lcom/amazon/motiongestures/GestureManager;

    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mGestureListener:Lcom/amazon/motiongestures/GestureListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/motiongestures/GestureManager;->registerListener(Lcom/amazon/motiongestures/GestureListener;Lcom/amazon/motiongestures/Gesture;I)V

    .line 546
    .end local v0    # "tiltGesture":Lcom/amazon/motiongestures/Gesture;
    :cond_13
    return-void
.end method

.method private executePendingTransactions()V
    .registers 2

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz v0, :cond_c

    .line 1406
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 1407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 1409
    :cond_c
    return-void
.end method

.method private getDefaultMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .registers 4

    .prologue
    .line 1413
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    .line 1414
    .local v0, "api":Lcom/airbnb/android/AirbnbApi;
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v1

    .line 1415
    .local v1, "user":Lcom/airbnb/android/models/User;
    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->hasUpcomingTrips()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1416
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->YourTrips:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 1420
    :goto_10
    return-object v2

    .line 1417
    :cond_11
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/airbnb/android/models/User;->getListingsCount()I

    move-result v2

    if-lez v2, :cond_1c

    .line 1418
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HostHome:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    goto :goto_10

    .line 1420
    :cond_1c
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    goto :goto_10
.end method

.method private getGroupsContentIntent(ILjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 9
    .param p1, "contentId"    # I
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 803
    const-string/jumbo v4, "post_id"

    invoke-virtual {p3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "commentParam":Ljava/lang/String;
    if-eqz v1, :cond_34

    .line 805
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 806
    .local v0, "commentId":I
    const-string/jumbo v4, "reply_id"

    invoke-virtual {p3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, "replyParam":Ljava/lang/String;
    if-eqz v3, :cond_27

    .line 808
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 809
    .local v2, "replyId":I
    invoke-static {v0}, Lcom/airbnb/android/models/groups/GroupsUri;->newContentCommentDrilldownUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/airbnb/android/models/groups/GroupsUri;->addScrollToReply(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/airbnb/android/activities/groups/GroupCommentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v4

    .line 814
    .end local v0    # "commentId":I
    .end local v2    # "replyId":I
    .end local v3    # "replyParam":Ljava/lang/String;
    :goto_26
    return-object v4

    .line 811
    .restart local v0    # "commentId":I
    .restart local v3    # "replyParam":Ljava/lang/String;
    :cond_27
    invoke-static {p1, p2}, Lcom/airbnb/android/models/groups/GroupsUri;->newBaseContentDrilldownUri(ILjava/lang/String;)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/airbnb/android/models/groups/GroupsUri;->addScrollToComment(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_26

    .line 814
    .end local v0    # "commentId":I
    .end local v3    # "replyParam":Ljava/lang/String;
    :cond_34
    invoke-static {p1, p2}, Lcom/airbnb/android/models/groups/GroupsUri;->newBaseContentDrilldownUri(ILjava/lang/String;)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/airbnb/android/activities/groups/GroupContentActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_26
.end method

.method private getUpcomingTrips()V
    .registers 5

    .prologue
    .line 595
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 596
    new-instance v0, Lcom/airbnb/android/requests/GuestReservationsRequest;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/GuestReservationsRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;IZ)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GuestReservationsRequest;->execute()V

    .line 598
    :cond_15
    return-void
.end method

.method private handleGroupsWebIntent(Ljava/util/List;Landroid/net/Uri;)Z
    .registers 16
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 748
    sget-object v7, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->WEB_INTENT:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v7}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 749
    const-string/jumbo v7, "groups_web_intent"

    const-string/jumbo v8, "impressions"

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/GroupsAnalytics;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    .line 751
    .local v1, "api":Lcom/airbnb/android/AirbnbApi;
    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v7

    if-nez v7, :cond_34

    .line 752
    const v7, 0x7f0e0764

    invoke-virtual {p0, v7}, Lcom/airbnb/android/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v11}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7, v9}, Lcom/airbnb/android/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 754
    const-string/jumbo v7, "groups_web_intent"

    const-string/jumbo v8, "logged_out_redirect"

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/GroupsAnalytics;->track(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_33
    :goto_33
    return v9

    .line 756
    :cond_34
    const-string/jumbo v7, "groups"

    const-string/jumbo v8, "enabled"

    invoke-static {v7, v8, v11}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_4a

    .line 757
    const-string/jumbo v7, "groups_web_intent"

    const-string/jumbo v8, "no_access_redirect"

    invoke-static {v7, v8}, Lcom/airbnb/android/analytics/GroupsAnalytics;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    .line 762
    :cond_4a
    sget-object v7, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-direct {p0, v7, v9}, Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    .line 764
    const/4 v2, 0x0

    .line 765
    .local v2, "deepLink":Landroid/content/Intent;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 766
    .local v0, "allTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v7, "content"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 767
    const-string/jumbo v7, "event"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v12, :cond_a5

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/airbnb/android/activities/MainActivity;->stripTrailingS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 770
    const/4 v7, 0x2

    :try_start_78
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/airbnb/android/activities/MainActivity;->stripTrailingS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 771
    .local v5, "type":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 772
    .local v4, "id":I
    invoke-direct {p0, v4, v5, p2}, Lcom/airbnb/android/activities/MainActivity;->getGroupsContentIntent(ILjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_90
    .catch Ljava/lang/NumberFormatException; {:try_start_78 .. :try_end_90} :catch_9a

    move-result-object v2

    .line 795
    .end local v4    # "id":I
    .end local v5    # "type":Ljava/lang/String;
    :cond_91
    :goto_91
    if-eqz v2, :cond_33

    .line 796
    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 797
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->finish()V

    goto :goto_33

    .line 773
    :catch_9a
    move-exception v3

    .line 774
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/airbnb/android/activities/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 776
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_a5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v10, :cond_e6

    const-string/jumbo v7, "content"

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e6

    .line 778
    const/4 v7, 0x2

    :try_start_b9
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 779
    .local v6, "typeAndId":[Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 780
    .restart local v4    # "id":I
    const/4 v7, 0x0

    aget-object v5, v6, v7

    .line 781
    .restart local v5    # "type":Ljava/lang/String;
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    .line 782
    invoke-direct {p0, v4, v5, p2}, Lcom/airbnb/android/activities/MainActivity;->getGroupsContentIntent(ILjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_d9
    .catch Ljava/lang/NumberFormatException; {:try_start_b9 .. :try_end_d9} :catch_db

    move-result-object v2

    goto :goto_91

    .line 784
    .end local v4    # "id":I
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "typeAndId":[Ljava/lang/String;
    :catch_db
    move-exception v3

    .line 785
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/airbnb/android/activities/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 787
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_e6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_91

    .line 789
    const/4 v7, 0x1

    :try_start_ed
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 790
    .restart local v4    # "id":I
    invoke-static {v4}, Lcom/airbnb/android/models/groups/GroupsUri;->newGroupHomeUri(I)Lcom/airbnb/android/models/groups/GroupsUri;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/airbnb/android/activities/groups/GroupActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;
    :try_end_fe
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_fe} :catch_100

    move-result-object v2

    goto :goto_91

    .line 791
    .end local v4    # "id":I
    :catch_100
    move-exception v3

    .line 792
    .restart local v3    # "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/airbnb/android/activities/MainActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91
.end method

.method private handleSearchIntent(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 10
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "intentData"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 718
    sget-object v5, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Search:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-direct {p0, v5, v4}, Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    .line 719
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 720
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 721
    const v5, 0x7f080025

    invoke-virtual {v1, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 722
    .local v0, "f":Landroid/support/v4/app/Fragment;
    instance-of v5, v0, Lcom/airbnb/android/fragments/SearchFragment;

    if-nez v5, :cond_1a

    .line 737
    :goto_19
    return v3

    :cond_1a
    move-object v2, v0

    .line 725
    check-cast v2, Lcom/airbnb/android/fragments/SearchFragment;

    .line 727
    .local v2, "searchFragment":Lcom/airbnb/android/fragments/SearchFragment;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/airbnb/android/activities/MainActivity$5;

    invoke-direct {v6, p0, v2, p1, p2}, Lcom/airbnb/android/activities/MainActivity$5;-><init>(Lcom/airbnb/android/activities/MainActivity;Lcom/airbnb/android/fragments/SearchFragment;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 736
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    sget-object v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->DeepLinking:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v6, v6, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v6, v5, v3

    const-string/jumbo v3, "app_open"

    aput-object v3, v5, v4

    const/4 v3, 0x2

    const-string/jumbo v6, "search_intent"

    aput-object v6, v5, v3

    invoke-static {v5}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    move v3, v4

    .line 737
    goto :goto_19
.end method

.method private handleUpgradeDialog()V
    .registers 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 665
    const-string/jumbo v11, "latest_version"

    const-string/jumbo v12, "version_code"

    invoke-static {v11, v12, v13}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 666
    .local v7, "latestVersionCode":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "latest_version_code:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 667
    .local v8, "latestVersionKey":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cancel_count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "cancelCountKey":Ljava/lang/String;
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v11

    invoke-virtual {v11}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    .line 669
    .local v9, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v9, v1, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 670
    .local v0, "cancelCount":I
    const-wide/16 v11, 0x0

    invoke-interface {v9, v8, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 671
    .local v5, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 673
    .local v2, "currentTime":J
    :try_start_51
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    iget v10, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 674
    .local v10, "versionCode":I
    const-string/jumbo v11, "upgrade_dialog"

    invoke-static {v11}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_78

    if-le v7, v10, :cond_93

    sub-long v11, v2, v5

    const-wide/32 v13, 0x5265c00

    cmp-long v11, v11, v13

    if-lez v11, :cond_93

    const/16 v11, 0xa

    if-ge v0, v11, :cond_93

    .line 676
    :cond_78
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11, v8, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 677
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 679
    const-string/jumbo v11, "latest_version"

    const-string/jumbo v12, "version_name"

    const-string/jumbo v13, ""

    invoke-static {v11, v12, v13}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v0, v1}, Lcom/airbnb/android/activities/MainActivity;->createUpdateDialog(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_93
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_93} :catch_94

    .line 684
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "versionCode":I
    :cond_93
    :goto_93
    return-void

    .line 681
    :catch_94
    move-exception v11

    goto :goto_93
.end method

.method private handleWebIntent()Z
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 692
    const/4 v1, 0x0

    .line 695
    .local v1, "hasWebIntent":Z
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 697
    .local v2, "intentData":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-static {v6}, Lcom/airbnb/android/utils/DeepLinkDispatch;->newInstance(Landroid/content/Intent;)Lcom/airbnb/android/utils/DeepLinkDispatch;

    move-result-object v0

    .line 698
    .local v0, "dispatch":Lcom/airbnb/android/utils/DeepLinkDispatch;
    if-eqz v2, :cond_2d

    .line 699
    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 700
    .local v3, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/airbnb/android/utils/MiscUtils;->detectAffiliateParams(Landroid/net/Uri;)V

    .line 701
    invoke-virtual {v0}, Lcom/airbnb/android/utils/DeepLinkDispatch;->getSearchQuery()Ljava/lang/String;

    move-result-object v4

    .line 702
    .local v4, "searchQuery":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 703
    invoke-direct {p0, v4, v2}, Lcom/airbnb/android/activities/MainActivity;->handleSearchIntent(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_2c

    .line 713
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "searchQuery":Ljava/lang/String;
    :goto_2b
    return v5

    .line 706
    .restart local v3    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "searchQuery":Ljava/lang/String;
    :cond_2c
    const/4 v1, 0x1

    .line 712
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "searchQuery":Ljava/lang/String;
    :cond_2d
    :goto_2d
    iget-boolean v6, p0, Lcom/airbnb/android/activities/MainActivity;->mForceBack:Z

    if-nez v6, :cond_33

    if-eqz v1, :cond_45

    :cond_33
    :goto_33
    iput-boolean v5, p0, Lcom/airbnb/android/activities/MainActivity;->mForceBack:Z

    move v5, v1

    .line 713
    goto :goto_2b

    .line 708
    .restart local v3    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "searchQuery":Ljava/lang/String;
    :cond_37
    const-string/jumbo v6, "groups"

    invoke-virtual {v0, v6}, Lcom/airbnb/android/utils/DeepLinkDispatch;->isPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 709
    invoke-direct {p0, v3, v2}, Lcom/airbnb/android/activities/MainActivity;->handleGroupsWebIntent(Ljava/util/List;Landroid/net/Uri;)Z

    move-result v1

    goto :goto_2d

    .line 712
    .end local v3    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "searchQuery":Ljava/lang/String;
    :cond_45
    const/4 v5, 0x0

    goto :goto_33
.end method

.method private hasAmazonMotionGestures()Z
    .registers 3

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.amazon.software.motiongestures"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static intentForAfterReferral(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    const-string/jumbo v1, "DiscoverAfterReferral"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    return-object v0
.end method

.method public static intentForClearTop(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 207
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 208
    return-object v0
.end method

.method public static intentForCompanion(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    const-string/jumbo v1, "showYourTrips"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    return-object v0
.end method

.method public static intentForDeepLinkActivity(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    return-object v0
.end method

.method public static intentForDefault(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static intentForDiscover(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    const-string/jumbo v1, "ShowDiscover"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    return-object v0
.end method

.method public static intentForGroups(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "groupsUri"    # Lcom/airbnb/android/models/groups/GroupsUri;

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "groups_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    const-string/jumbo v1, "GroupsDeepLink"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/GroupsUri;->isForceBack()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 257
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    :cond_1e
    return-object v0
.end method

.method public static intentForHospitality(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    const-string/jumbo v1, "HospitailityFromWhyHost"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    return-object v0
.end method

.method public static intentForHostHome(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    const-string/jumbo v1, "showHostHome"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    return-object v0
.end method

.method public static intentForListings(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 270
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 272
    const-string/jumbo v1, "ShowListings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    return-object v0
.end method

.method public static intentForSearch(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 227
    const-string/jumbo v1, "ShowSearch"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    return-object v0
.end method

.method private loadDrawerView()V
    .registers 4

    .prologue
    .line 570
    new-instance v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-direct {v0}, Lcom/airbnb/android/fragments/SlidingMenuFragment;-><init>()V

    .line 571
    .local v0, "slidingMenuFragment":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f080038

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 575
    return-void
.end method

.method private logStartupTime()V
    .registers 8

    .prologue
    .line 1037
    :try_start_0
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "startup_time"

    invoke-virtual {v3, v4}, Lcom/airbnb/android/utils/Strap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1038
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "startup_time"

    invoke-virtual {v3, v4}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1039
    .local v2, "time":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "startup_time"

    invoke-virtual {v3, v4}, Lcom/airbnb/android/utils/Strap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 1043
    .local v0, "startupTime":J
    const-string/jumbo v3, "android_eng"

    const/4 v4, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    const-string/jumbo v6, "startup_time"

    invoke-virtual {v5, v6, v0, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V
    :try_end_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 1048
    .end local v0    # "startupTime":J
    .end local v2    # "time":Ljava/lang/String;
    :cond_4c
    :goto_4c
    return-void

    .line 1045
    :catch_4d
    move-exception v3

    goto :goto_4c
.end method

.method private setSlideShrink(F)V
    .registers 13
    .param p1, "slideOffset"    # F

    .prologue
    const/high16 v6, 0x3f000000

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 578
    const v5, 0x7f080025

    invoke-virtual {p0, v5}, Lcom/airbnb/android/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 579
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_75

    .line 580
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v0, v6, v5

    .line 581
    .local v0, "cx":F
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v1, v6, v5

    .line 582
    .local v1, "cy":F
    const/high16 v5, 0x3f800000

    const v6, 0x3d4ccccd

    mul-float/2addr v6, p1

    sub-float v2, v5, v6

    .line 583
    .local v2, "scale":F
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 584
    .local v3, "set":Landroid/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const-string/jumbo v6, "pivotX"

    new-array v7, v8, [F

    aput v0, v7, v9

    aput v0, v7, v10

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v9

    const-string/jumbo v6, "pivotY"

    new-array v7, v8, [F

    aput v1, v7, v9

    aput v1, v7, v10

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v10

    const-string/jumbo v6, "scaleX"

    new-array v7, v8, [F

    aput v2, v7, v9

    aput v2, v7, v10

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x3

    const-string/jumbo v7, "scaleY"

    new-array v8, v8, [F

    aput v2, v8, v9

    aput v2, v8, v10

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 590
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 592
    .end local v0    # "cx":F
    .end local v1    # "cy":F
    .end local v2    # "scale":F
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    :cond_75
    return-void
.end method

.method private setupAmazonGesture()V
    .registers 2

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->hasAmazonMotionGestures()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 537
    invoke-static {p0}, Lcom/amazon/motiongestures/GestureManager;->createInstance(Landroid/app/Activity;)Lcom/amazon/motiongestures/GestureManager;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mGestureManager:Lcom/amazon/motiongestures/GestureManager;

    .line 539
    :cond_c
    return-void
.end method

.method private setupCurrencies()V
    .registers 4

    .prologue
    .line 819
    new-instance v0, Lcom/airbnb/android/requests/CurrenciesRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/airbnb/android/activities/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/MainActivity$6;-><init>(Lcom/airbnb/android/activities/MainActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/CurrenciesRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;

    .line 863
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrenciesRequest:Lcom/airbnb/android/requests/CurrenciesRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/CurrenciesRequest;->execute()V

    .line 864
    return-void
.end method

.method private showAppIntroFtueIfNeeded()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 621
    invoke-static {p0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeDiscoverFtue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 622
    iput-boolean v1, p0, Lcom/airbnb/android/activities/MainActivity;->mShowDiscoverFtue:Z

    .line 624
    :cond_9
    invoke-static {p0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeAppIntroFtue(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 625
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-nez v0, :cond_27

    .line 626
    invoke-static {p0, v1}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->intentForFirstTime(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/MainActivity;->mShowDiscoverFtue:Z

    .line 629
    invoke-static {p0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenDiscoverFtue(Landroid/content/Context;)V

    .line 634
    :cond_26
    :goto_26
    return-void

    .line 631
    :cond_27
    invoke-static {p0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markHasSeenAppIntroFtue(Landroid/content/Context;)V

    goto :goto_26
.end method

.method private stripTrailingS(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "plural"    # Ljava/lang/String;

    .prologue
    .line 741
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 742
    :cond_8
    const-string/jumbo v0, ""

    .line 744
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method private updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V
    .registers 22
    .param p1, "menuItem"    # Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .param p2, "force"    # Z

    .prologue
    .line 1253
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/airbnb/android/activities/MainActivity;->mForce:Z

    .line 1254
    const/4 v8, 0x0

    .line 1255
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 1256
    .local v2, "actionBar":Landroid/app/ActionBar;
    if-nez p1, :cond_10

    .line 1257
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getDefaultMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object p1

    .line 1260
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v10

    .line 1262
    .local v10, "manager":Landroid/support/v4/app/FragmentManager;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_1e

    if-eqz p2, :cond_71

    .line 1263
    :cond_1e
    const v15, 0x7f080025

    invoke-virtual {v10, v15}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 1265
    .local v6, "f":Landroid/support/v4/app/Fragment;
    if-eqz v6, :cond_4a

    .line 1266
    const-class v15, Lcom/airbnb/android/fragments/BaseDrawerFragment;

    invoke-virtual {v15, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_35

    move-object v5, v6

    .line 1267
    check-cast v5, Lcom/airbnb/android/fragments/BaseDrawerFragment;

    .line 1268
    .local v5, "drawerFragment":Lcom/airbnb/android/fragments/BaseDrawerFragment;
    invoke-virtual {v5}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->setSwapping()V

    .line 1271
    .end local v5    # "drawerFragment":Lcom/airbnb/android/fragments/BaseDrawerFragment;
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/airbnb/android/activities/MainActivity;->mLoggedOut:Z

    if-nez v15, :cond_72

    .line 1272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/airbnb/android/activities/MainActivity;->mFragmentStateMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10, v6}, Landroid/support/v4/app/FragmentManager;->saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    :cond_4a
    :goto_4a
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 1279
    .local v12, "next":Landroid/support/v4/app/Fragment;
    if-eqz v12, :cond_56

    if-eqz p2, :cond_78

    :cond_56
    const/4 v11, 0x1

    .line 1280
    .local v11, "newFragment":Z
    :goto_57
    if-eqz v11, :cond_68

    .line 1281
    sget-object v15, Lcom/airbnb/android/activities/MainActivity$14;->$SwitchMap$com$airbnb$android$adapters$SlidingMenuAdapter$SlidingMenuItem:[I

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_27e

    .line 1354
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1359
    :cond_68
    :goto_68
    if-eqz v8, :cond_209

    .line 1360
    if-eqz p2, :cond_1f3

    .line 1361
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1402
    .end local v6    # "f":Landroid/support/v4/app/Fragment;
    .end local v11    # "newFragment":Z
    .end local v12    # "next":Landroid/support/v4/app/Fragment;
    :cond_71
    :goto_71
    return-void

    .line 1274
    .restart local v6    # "f":Landroid/support/v4/app/Fragment;
    :cond_72
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/airbnb/android/activities/MainActivity;->mLoggedOut:Z

    goto :goto_4a

    .line 1279
    .restart local v12    # "next":Landroid/support/v4/app/Fragment;
    :cond_78
    const/4 v11, 0x0

    goto :goto_57

    .line 1283
    .restart local v11    # "newFragment":Z
    :pswitch_7a
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "Reservations"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "impression"

    aput-object v17, v15, v16

    invoke-static {v15}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1284
    new-instance v15, Lcom/airbnb/android/fragments/YourTripsFragment;

    invoke-direct {v15}, Lcom/airbnb/android/fragments/YourTripsFragment;-><init>()V

    invoke-static {}, Lcom/airbnb/android/fragments/YourTripsFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 1285
    goto :goto_68

    .line 1287
    :pswitch_98
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    sget-object v17, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "left_nav"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "list_your_space_click"

    aput-object v17, v15, v16

    invoke-static {v15}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1288
    sget-object v15, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->intentForState(Landroid/content/Context;Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;)Landroid/content/Intent;

    move-result-object v8

    .line 1289
    goto :goto_68

    .line 1291
    :pswitch_c1
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    sget-object v17, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "left_nav"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "why_host_click"

    aput-object v17, v15, v16

    invoke-static {v15}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1292
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/activities/WhyHostFtueActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 1293
    goto :goto_68

    .line 1295
    :pswitch_e6
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/airbnb/android/activities/AppIntroFtueActivity;->intentForFirstTime(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v8

    .line 1296
    goto/16 :goto_68

    .line 1298
    :pswitch_ef
    new-instance v12, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;

    .end local v12    # "next":Landroid/support/v4/app/Fragment;
    invoke-direct {v12}, Lcom/airbnb/android/fragments/groups/CommunityHomeFragment;-><init>()V

    .line 1299
    .restart local v12    # "next":Landroid/support/v4/app/Fragment;
    goto/16 :goto_68

    .line 1301
    :pswitch_f6
    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    sget-object v17, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "left_nav"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "spaces_click"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/User;->getListingsCount()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v15}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1303
    new-instance v12, Lcom/airbnb/android/fragments/SpacesListFragment;

    .end local v12    # "next":Landroid/support/v4/app/Fragment;
    invoke-direct {v12}, Lcom/airbnb/android/fragments/SpacesListFragment;-><init>()V

    .line 1304
    .restart local v12    # "next":Landroid/support/v4/app/Fragment;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->supportInvalidateOptionsMenu()V

    goto/16 :goto_68

    .line 1307
    :pswitch_134
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "Featured"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "impression"

    aput-object v17, v15, v16

    invoke-static {v15}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1308
    const-string/jumbo v15, "discover"

    const-string/jumbo v16, "last_minute_bookings"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 1309
    .local v7, "hasLastMinuteDeals":Z
    const-string/jumbo v9, ""

    .line 1310
    .local v9, "lmbCity":Ljava/lang/String;
    if-eqz v7, :cond_163

    .line 1311
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/persist/LmbAirLocationStore;->getClosestAirLocation(Landroid/content/Context;)Lcom/airbnb/android/models/AirLocation;

    move-result-object v3

    .line 1312
    .local v3, "closestLmbLocation":Lcom/airbnb/android/models/AirLocation;
    if-eqz v3, :cond_163

    .line 1313
    invoke-virtual {v3}, Lcom/airbnb/android/models/AirLocation;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 1316
    .end local v3    # "closestLmbLocation":Lcom/airbnb/android/models/AirLocation;
    :cond_163
    invoke-static {v7, v9}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackImpression(ZLjava/lang/String;)V

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/airbnb/android/activities/MainActivity;->mShowDiscoverFtue:Z

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Lcom/airbnb/android/fragments/DiscoverFragment;->getInstance(Landroid/support/v4/app/FragmentManager;Z)Lcom/airbnb/android/fragments/DiscoverFragment;

    move-result-object v12

    .line 1318
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/airbnb/android/activities/MainActivity;->mShowDiscoverFtue:Z

    goto/16 :goto_68

    .line 1321
    .end local v7    # "hasLastMinuteDeals":Z
    .end local v9    # "lmbCity":Ljava/lang/String;
    :pswitch_17b
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "Search"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "impression"

    aput-object v17, v15, v16

    invoke-static {v15}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1322
    const-string/jumbo v15, "impression"

    invoke-static {v15}, Lcom/airbnb/android/analytics/SearchAnalytics;->trackSearchAction(Ljava/lang/String;)V

    .line 1323
    invoke-static {}, Lcom/airbnb/android/fragments/SearchFragment;->newInstance()Lcom/airbnb/android/fragments/SearchFragment;

    move-result-object v12

    .line 1324
    goto/16 :goto_68

    .line 1326
    :pswitch_19b
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, "Inbox"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "impression"

    aput-object v17, v15, v16

    invoke-static {v15}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1327
    new-instance v12, Lcom/airbnb/android/fragments/MessagesFragment;

    .end local v12    # "next":Landroid/support/v4/app/Fragment;
    invoke-direct {v12}, Lcom/airbnb/android/fragments/MessagesFragment;-><init>()V

    .line 1328
    .restart local v12    # "next":Landroid/support/v4/app/Fragment;
    goto/16 :goto_68

    .line 1330
    :pswitch_1b6
    invoke-static {}, Lcom/airbnb/android/fragments/HospitalityFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 1331
    goto/16 :goto_68

    .line 1333
    :pswitch_1bc
    invoke-static {}, Lcom/airbnb/android/fragments/HelpFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 1334
    goto/16 :goto_68

    .line 1336
    :pswitch_1c2
    invoke-static {}, Lcom/airbnb/android/fragments/HostHomeFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 1337
    goto/16 :goto_68

    .line 1339
    :pswitch_1c8
    invoke-static {}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->newInstance()Lcom/airbnb/android/fragments/ListingCalendarFragment;

    move-result-object v12

    .line 1340
    goto/16 :goto_68

    .line 1342
    :pswitch_1ce
    new-instance v12, Lcom/airbnb/android/fragments/WishListTabsFragment;

    .end local v12    # "next":Landroid/support/v4/app/Fragment;
    invoke-direct {v12}, Lcom/airbnb/android/fragments/WishListTabsFragment;-><init>()V

    .line 1343
    .restart local v12    # "next":Landroid/support/v4/app/Fragment;
    goto/16 :goto_68

    .line 1345
    :pswitch_1d5
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v15

    invoke-virtual {v15}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v15

    invoke-virtual {v15}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lcom/airbnb/android/fragments/ROMyProfileContainerFragment;->newInstanceForUserId(J)Lcom/airbnb/android/fragments/ROContainerFragment;

    move-result-object v12

    .line 1346
    goto/16 :goto_68

    .line 1348
    :pswitch_1e7
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/activities/SignInActivity;->intentForDefault(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 1349
    goto/16 :goto_68

    .line 1351
    :pswitch_1ed
    invoke-static {}, Lcom/airbnb/android/fragments/AccountSettingsFragment;->newInstance()Landroid/support/v4/app/Fragment;

    move-result-object v12

    .line 1352
    goto/16 :goto_68

    .line 1363
    :cond_1f3
    move-object v4, v8

    .line 1364
    .local v4, "delayIntent":Landroid/content/Intent;
    new-instance v15, Landroid/os/Handler;

    invoke-direct {v15}, Landroid/os/Handler;-><init>()V

    new-instance v16, Lcom/airbnb/android/activities/MainActivity$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/activities/MainActivity$10;-><init>(Lcom/airbnb/android/activities/MainActivity;Landroid/content/Intent;)V

    const-wide/16 v17, 0xfa

    invoke-virtual/range {v15 .. v18}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_71

    .line 1374
    .end local v4    # "delayIntent":Landroid/content/Intent;
    :cond_209
    if-eqz v12, :cond_26e

    .line 1375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/airbnb/android/activities/MainActivity;->mFragmentStateMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->name()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_254

    if-eqz v11, :cond_254

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-object/from16 v0, p1

    if-eq v15, v0, :cond_254

    .line 1376
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/airbnb/android/activities/MainActivity;->mFragmentStateMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->name()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/support/v4/app/Fragment$SavedState;

    invoke-virtual {v12, v15}, Landroid/support/v4/app/Fragment;->setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V

    .line 1382
    :try_start_234
    const-class v15, Landroid/support/v4/app/Fragment;

    const-string/jumbo v16, "mSavedFragmentState"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 1383
    .local v13, "saveFragmentStateField":Ljava/lang/reflect/Field;
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1384
    invoke-virtual {v13, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 1385
    .local v14, "savedFragmentState":Landroid/os/Bundle;
    if-eqz v14, :cond_254

    .line 1386
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_254
    .catch Ljava/lang/Exception; {:try_start_234 .. :try_end_254} :catch_27b

    .line 1392
    .end local v13    # "saveFragmentStateField":Ljava/lang/reflect/Field;
    .end local v14    # "savedFragmentState":Landroid/os/Bundle;
    :cond_254
    :goto_254
    invoke-virtual {v10}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/airbnb/android/activities/MainActivity;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 1393
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/airbnb/android/activities/MainActivity;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    const v16, 0x7f080025

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->name()Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v12, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 1396
    :cond_26e
    if-eqz p2, :cond_273

    .line 1397
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->executePendingTransactions()V

    .line 1399
    :cond_273
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    goto/16 :goto_71

    .line 1388
    :catch_27b
    move-exception v15

    goto :goto_254

    .line 1281
    nop

    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_98
        :pswitch_c1
        :pswitch_e6
        :pswitch_ef
        :pswitch_f6
        :pswitch_134
        :pswitch_17b
        :pswitch_19b
        :pswitch_1b6
        :pswitch_1bc
        :pswitch_1c2
        :pswitch_1c8
        :pswitch_1ce
        :pswitch_1d5
        :pswitch_1e7
        :pswitch_1ed
    .end packed-switch
.end method


# virtual methods
.method protected getColorComponent(IIFI)I
    .registers 10
    .param p1, "whiteBackground"    # I
    .param p2, "grayBackground"    # I
    .param p3, "slideOffset"    # F
    .param p4, "color"    # I

    .prologue
    const/high16 v4, 0x437f0000

    .line 601
    const/4 v1, 0x0

    .local v1, "white":I
    const/4 v0, 0x0

    .line 602
    .local v0, "gray":I
    sparse-switch p4, :sswitch_data_2c

    .line 617
    :goto_7
    int-to-float v2, v1

    sub-int v3, v1, v0

    int-to-float v3, v3

    mul-float/2addr v3, p3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    return v2

    .line 604
    :sswitch_11
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 605
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 606
    goto :goto_7

    .line 608
    :sswitch_1a
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 609
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .line 610
    goto :goto_7

    .line 612
    :sswitch_23
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 613
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v0

    goto :goto_7

    .line 602
    :sswitch_data_2c
    .sparse-switch
        -0xffff01 -> :sswitch_1a
        -0xff0100 -> :sswitch_23
        -0x10000 -> :sswitch_11
    .end sparse-switch
.end method

.method public getCurrentMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    .registers 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    if-nez v0, :cond_a

    .line 1159
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->getDefaultMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 1162
    :cond_a
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    return-object v0
.end method

.method public listingCreated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingCreatedEvent;)V
    .registers 5
    .param p1, "lcr"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingCreatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 318
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Listings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    iput-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 320
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 321
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 322
    .local v0, "f":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v0, :cond_1b

    .line 323
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    .line 324
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/airbnb/android/activities/MainActivity;->mForce:Z

    .line 326
    :cond_1b
    return-void
.end method

.method public listingDeleted(Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;)V
    .registers 5
    .param p1, "ldr"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingDeletedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 304
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v2

    if-nez v2, :cond_2b

    .line 305
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->getDefaultMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 307
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 308
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 309
    .local v0, "f":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v0, :cond_2b

    .line 310
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    .line 311
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/airbnb/android/activities/MainActivity;->mForce:Z

    .line 314
    .end local v0    # "f":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    :cond_2b
    return-void
.end method

.method public loginStatusChanged(Lcom/airbnb/android/events/LoginStatusEvent;)V
    .registers 6
    .param p1, "lse"    # Lcom/airbnb/android/events/LoginStatusEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 278
    invoke-virtual {p1}, Lcom/airbnb/android/events/LoginStatusEvent;->isLoggedIn()Z

    move-result v2

    if-nez v2, :cond_39

    .line 279
    iput-boolean v3, p0, Lcom/airbnb/android/activities/MainActivity;->mLoggedOut:Z

    .line 280
    iget-boolean v2, p0, Lcom/airbnb/android/activities/MainActivity;->mIsResumed:Z

    if-eqz v2, :cond_32

    .line 281
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    .line 282
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 283
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 284
    .local v0, "f":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v0, :cond_26

    .line 285
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    .line 291
    .end local v0    # "f":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    :cond_26
    :goto_26
    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mFragmentStateMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 298
    :goto_2b
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->buildTrebuchet()V

    .line 299
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->checkForSignIn()V

    .line 300
    return-void

    .line 288
    :cond_32
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    iput-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 289
    iput-boolean v3, p0, Lcom/airbnb/android/activities/MainActivity;->mForce:Z

    goto :goto_26

    .line 293
    :cond_39
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->getDefaultMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 294
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->setupCurrencies()V

    .line 295
    iput-boolean v3, p0, Lcom/airbnb/android/activities/MainActivity;->mForce:Z

    goto :goto_2b
.end method

.method public menuOptionSelected(Lcom/airbnb/android/events/OptionItemSelectedEvent;)V
    .registers 4
    .param p1, "oise"    # Lcom/airbnb/android/events/OptionItemSelectedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 967
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayoutView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 968
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayoutView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 970
    :cond_11
    return-void
.end method

.method public onAccept()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1541
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mTOSAcceptRequest:Lcom/airbnb/android/requests/AccountUpdateRequest;

    if-eqz v0, :cond_a

    .line 1542
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mTOSAcceptRequest:Lcom/airbnb/android/requests/AccountUpdateRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AccountUpdateRequest;->cancel()V

    .line 1545
    :cond_a
    new-instance v0, Lcom/airbnb/android/requests/AccountUpdateRequest;

    invoke-static {}, Lcom/airbnb/android/requests/AccountUpdateRequest;->createTOSAcceptJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/AccountUpdateRequest;-><init>(Lorg/json/JSONObject;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mTOSAcceptRequest:Lcom/airbnb/android/requests/AccountUpdateRequest;

    .line 1546
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mTOSAcceptRequest:Lcom/airbnb/android/requests/AccountUpdateRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/AccountUpdateRequest;->execute()V

    .line 1549
    new-instance v0, Lcom/airbnb/android/requests/GetActiveAccountRequest;

    invoke-direct {v0, p0, v2}, Lcom/airbnb/android/requests/GetActiveAccountRequest;-><init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/GetActiveAccountRequest;->execute()V

    .line 1550
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1485
    sparse-switch p1, :sswitch_data_16

    .line 1496
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1498
    :cond_6
    :goto_6
    return-void

    .line 1487
    :sswitch_7
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 1489
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    goto :goto_6

    .line 1493
    :sswitch_12
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->handleWebIntent()Z

    goto :goto_6

    .line 1485
    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_12
        0xface -> :sswitch_7
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1122
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->getDefaultMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v2

    .line 1123
    .local v2, "menuItem":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->isHostItem()Z

    move-result v3

    if-nez v3, :cond_d

    .line 1124
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 1127
    :cond_d
    iget-boolean v3, p0, Lcom/airbnb/android/activities/MainActivity;->mForceBack:Z

    if-nez v3, :cond_15

    iget-object v3, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    if-ne v3, v2, :cond_19

    .line 1128
    :cond_15
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 1137
    :cond_18
    :goto_18
    return-void

    .line 1130
    :cond_19
    invoke-virtual {v2}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/airbnb/android/activities/MainActivity;->onItemSelected(JZZ)V

    .line 1131
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1132
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const v3, 0x7f080038

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 1133
    .local v0, "f":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v0, :cond_18

    .line 1134
    invoke-virtual {v0, v2}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    goto :goto_18
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 994
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 995
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 996
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 20

    .prologue
    const-string/jumbo v2, "MainActivity"

    invoke-static {v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v3, "MainActivity#onCreate"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_11} :catch_1bc

    .line 330
    :goto_11
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 332
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mFragmentStateMap:Ljava/util/HashMap;

    .line 334
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->checkForCrashes()V

    .line 337
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/airbnb/android/activities/MainActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/airbnb/android/activities/MainActivity$1;-><init>(Lcom/airbnb/android/activities/MainActivity;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 345
    const-string/jumbo v2, "airbnb_prefs"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/activities/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "currency"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->setupCurrencies()V

    .line 349
    :cond_4e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airbnb/android/activities/MainActivity;->mForce:Z

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airbnb/android/activities/MainActivity;->mForceBack:Z

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->doTrack()V

    .line 354
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "push_notification_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 357
    .local v11, "pushNotificationId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "secret"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 358
    .local v13, "secret":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "push_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, "pushType":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_92

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_92

    .line 361
    invoke-static {v11, v13, v12}, Lcom/airbnb/android/requests/PushNotificationConversionRequest;->sendPushNotificationOpenedEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_92
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/airbnb/android/activities/MainActivity;->mIgnoreGroupsOnCreate:Z

    if-nez v2, :cond_ed

    const-string/jumbo v2, "GroupsDeepLink"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ed

    .line 365
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airbnb/android/activities/MainActivity;->mForceBack:Z

    .line 366
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airbnb/android/activities/MainActivity;->mIgnoreGroupsOnCreate:Z

    .line 368
    if-eqz p1, :cond_c1

    const-string/jumbo v2, "ignore_groups"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_ed

    .line 369
    :cond_c1
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "groups_uri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Lcom/airbnb/android/models/groups/GroupsUri;

    .line 371
    .local v17, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    sget-object v2, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->COMMUNITY:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-virtual/range {v17 .. v17}, Lcom/airbnb/android/models/groups/GroupsUri;->getDrilldownLevel()Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ed

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/airbnb/android/activities/groups/GroupActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    .end local v17    # "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    :cond_ed
    const v2, 0x7f03000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/airbnb/android/activities/MainActivity;->setContentView(I)V

    .line 379
    const v2, 0x7f080037

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/airbnb/android/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 380
    new-instance v2, Lcom/airbnb/android/activities/MainActivity$2;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v6, 0x7f0200e9

    const v7, 0x7f0e0177

    const v8, 0x7f0e0176

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v8}, Lcom/airbnb/android/activities/MainActivity$2;-><init>(Lcom/airbnb/android/activities/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 456
    const v2, 0x7f080038

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/airbnb/android/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayoutView:Landroid/widget/FrameLayout;

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/airbnb/android/activities/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    .line 463
    .local v9, "actionBar":Landroid/app/ActionBar;
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 464
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 467
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v14

    .line 468
    .local v14, "session":Lcom/facebook/Session;
    if-nez v14, :cond_151

    .line 469
    new-instance v14, Lcom/facebook/Session;

    .end local v14    # "session":Lcom/facebook/Session;
    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 472
    .restart local v14    # "session":Lcom/facebook/Session;
    :cond_151
    invoke-virtual {v14}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v2

    sget-object v3, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v2, v3}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16a

    .line 473
    new-instance v2, Lcom/facebook/Session$OpenRequest;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v14, v2}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 474
    invoke-static {v14}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 477
    :cond_16a
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/utils/LocationHelper;->refreshLastLocation(Landroid/content/Context;)V

    .line 479
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/utils/DebugSettings;->isShakeFeedbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_182

    .line 480
    new-instance v2, Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;-><init>(Landroid/app/Activity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mShakeHelper:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    .line 483
    :cond_182
    if-nez p1, :cond_18d

    .line 484
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->buildTrebuchet()V

    .line 485
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getUpcomingTrips()V

    .line 486
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->handleUpgradeDialog()V

    .line 490
    :cond_18d
    if-eqz p1, :cond_20e

    .line 491
    const-string/jumbo v2, "fragment_instance_state_keys"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 492
    .local v15, "stateKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v2, "fragment_instance_state_keys_values"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 493
    .local v16, "stateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment$SavedState;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1a2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_1c7

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mFragmentStateMap:Ljava/util/HashMap;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a2

    .line 4294967295
    .end local v9    # "actionBar":Landroid/app/ActionBar;
    .end local v10    # "i":I
    .end local v11    # "pushNotificationId":Ljava/lang/String;
    .end local v12    # "pushType":Ljava/lang/String;
    .end local v13    # "secret":Ljava/lang/String;
    .end local v14    # "session":Lcom/facebook/Session;
    .end local v15    # "stateKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "stateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment$SavedState;>;"
    :catch_1bc
    move-exception v2

    const/4 v2, 0x0

    :try_start_1be
    const-string/jumbo v3, "MainActivity#onCreate"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1c5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1c5} :catch_1bc

    goto/16 :goto_11

    .line 496
    .restart local v9    # "actionBar":Landroid/app/ActionBar;
    .restart local v10    # "i":I
    .restart local v11    # "pushNotificationId":Ljava/lang/String;
    .restart local v12    # "pushType":Ljava/lang/String;
    .restart local v13    # "secret":Ljava/lang/String;
    .restart local v14    # "session":Lcom/facebook/Session;
    .restart local v15    # "stateKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "stateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment$SavedState;>;"
    :cond_1c7
    const-string/jumbo v2, "menu_item"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->getMenuItem(J)Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 497
    const-string/jumbo v2, "ignore_groups"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airbnb/android/activities/MainActivity;->mIgnoreGroupsOnCreate:Z

    .line 498
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/airbnb/android/activities/MainActivity;->mForce:Z

    .line 518
    .end local v10    # "i":I
    .end local v15    # "stateKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "stateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment$SavedState;>;"
    :goto_1ed
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->checkForSignIn()V

    .line 520
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v2

    if-eqz v2, :cond_201

    .line 521
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/utils/GCMHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/utils/GCMHelper;->setupGCM()V

    .line 524
    :cond_201
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/utils/LocationHelper;->refreshLastLocation(Landroid/content/Context;)V

    .line 526
    invoke-static/range {p0 .. p0}, Lcom/airbnb/android/services/GCMIntentService;->dismissPushNotification(Landroid/content/Context;)V

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->setupAmazonGesture()V

    .line 529
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 501
    :cond_20e
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->loadDrawerView()V

    .line 503
    const-string/jumbo v2, "showHostHome"

    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_238

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "widget_messages"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_232

    .line 505
    invoke-static {}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->trackMessagesClick()V

    .line 507
    :cond_232
    sget-object v2, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HostHome:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 512
    :cond_238
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->handleWebIntent()Z

    move-result v2

    if-nez v2, :cond_241

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/activities/MainActivity;->showAppIntroFtueIfNeeded()V

    .line 516
    :cond_241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/airbnb/android/activities/MainActivity;->mForce:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    goto :goto_1ed
.end method

.method public onDecline()V
    .registers 2

    .prologue
    .line 1555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/MainActivity;->mShownTosDialog:Z

    .line 1556
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 1066
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 1068
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mShakeHelper:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    .line 1069
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 1070
    return-void
.end method

.method public onItemSelected(JZZ)V
    .registers 8
    .param p1, "id"    # J
    .param p3, "newScreen"    # Z
    .param p4, "force"    # Z

    .prologue
    .line 1142
    if-eqz p3, :cond_9

    .line 1143
    invoke-static {p1, p2}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->getMenuItem(J)Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v0

    .line 1144
    .local v0, "menuItem":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    invoke-direct {p0, v0, p4}, Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    .line 1146
    .end local v0    # "menuItem":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    :cond_9
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayoutView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1147
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v6, 0x7f080038

    const/4 v5, 0x1

    .line 1167
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 1168
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/airbnb/android/activities/MainActivity;->mForceBack:Z

    .line 1169
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1171
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    const-string/jumbo v3, "currency_change"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1172
    iget-object v3, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-direct {p0, v3, v5}, Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    .line 1246
    :cond_20
    :goto_20
    return-void

    .line 1176
    :cond_21
    const-string/jumbo v3, "ShowSearch"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 1177
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Search:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/airbnb/android/activities/MainActivity;->onItemSelected(JZZ)V

    .line 1178
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 1179
    .local v1, "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v1, :cond_20

    .line 1180
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Search:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    goto :goto_20

    .line 1185
    .end local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    :cond_46
    const-string/jumbo v3, "showYourTrips"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1186
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->YourTrips:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/airbnb/android/activities/MainActivity;->onItemSelected(JZZ)V

    .line 1187
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 1188
    .restart local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v1, :cond_20

    .line 1189
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->YourTrips:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    goto :goto_20

    .line 1194
    .end local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    :cond_6b
    const-string/jumbo v3, "ShowDiscover"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1195
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/airbnb/android/activities/MainActivity;->onItemSelected(JZZ)V

    .line 1196
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 1197
    .restart local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v1, :cond_20

    .line 1198
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    goto :goto_20

    .line 1203
    .end local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    :cond_90
    const-string/jumbo v3, "ShowListings"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 1204
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Listings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/airbnb/android/activities/MainActivity;->onItemSelected(JZZ)V

    .line 1205
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 1206
    .restart local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v1, :cond_20

    .line 1207
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Listings:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    goto/16 :goto_20

    .line 1212
    .end local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    :cond_b6
    const-string/jumbo v3, "showHostHome"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 1213
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HostHome:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/airbnb/android/activities/MainActivity;->onItemSelected(JZZ)V

    .line 1214
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 1215
    .restart local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v1, :cond_20

    .line 1216
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->HostHome:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    goto/16 :goto_20

    .line 1221
    .end local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    :cond_dc
    const-string/jumbo v3, "GroupsDeepLink"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 1222
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v3, v4}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10c

    .line 1223
    iput-boolean v5, p0, Lcom/airbnb/android/activities/MainActivity;->mForceBack:Z

    .line 1224
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/airbnb/android/activities/MainActivity;->onItemSelected(JZZ)V

    .line 1225
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 1226
    .restart local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v1, :cond_10c

    .line 1227
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    .line 1230
    .end local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    :cond_10c
    const-string/jumbo v3, "groups_uri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/groups/GroupsUri;

    .line 1231
    .local v2, "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    sget-object v3, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->COMMUNITY:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/GroupsUri;->getDrilldownLevel()Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1232
    const-string/jumbo v3, "groups_uri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/groups/GroupsUri;

    invoke-static {p0, v3}, Lcom/airbnb/android/activities/groups/GroupActivity;->intentForUri(Landroid/content/Context;Lcom/airbnb/android/models/groups/GroupsUri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_20

    .line 1236
    .end local v2    # "uri":Lcom/airbnb/android/models/groups/GroupsUri;
    :cond_133
    const-string/jumbo v3, "HospitailityFromWhyHost"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_159

    .line 1237
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Hospitality:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4, v5, v5}, Lcom/airbnb/android/activities/MainActivity;->onItemSelected(JZZ)V

    .line 1238
    invoke-virtual {v0, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 1239
    .restart local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v1, :cond_20

    .line 1240
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Hospitality:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    goto/16 :goto_20

    .line 1245
    .end local v1    # "menuFrag":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    :cond_159
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->handleWebIntent()Z

    goto/16 :goto_20
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 1093
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_6c

    .line 1117
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_c
    :goto_c
    return v2

    .line 1095
    :sswitch_d
    iget-object v3, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    sget-object v4, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    if-ne v3, v4, :cond_16

    .line 1096
    invoke-static {}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackMenuClick()V

    .line 1099
    :cond_16
    iget-object v3, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v3, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_c

    .line 1102
    :sswitch_1c
    iget-object v3, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    sget-object v4, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Discover:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    if-ne v3, v4, :cond_25

    .line 1103
    invoke-static {}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->trackSearchClick()V

    .line 1105
    :cond_25
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Search:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v3}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4, v2, v2}, Lcom/airbnb/android/activities/MainActivity;->onItemSelected(JZZ)V

    .line 1106
    invoke-virtual {p0}, Lcom/airbnb/android/activities/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 1107
    .local v1, "fm":Landroid/support/v4/app/FragmentManager;
    const v3, 0x7f080038

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/SlidingMenuFragment;

    .line 1108
    .local v0, "f":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    if-eqz v0, :cond_c

    .line 1109
    sget-object v3, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Search:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v0, v3}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->forceSelection(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;)V

    goto :goto_c

    .line 1113
    .end local v0    # "f":Lcom/airbnb/android/fragments/SlidingMenuFragment;
    .end local v1    # "fm":Landroid/support/v4/app/FragmentManager;
    :sswitch_44
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v5, v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string/jumbo v4, "general_nav"

    aput-object v4, v3, v2

    const/4 v4, 0x2

    const-string/jumbo v5, "spaces"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "lys_click_top"

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1114
    sget-object v3, Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;->NewListing:Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;

    invoke-static {p0, v3}, Lcom/airbnb/android/activities/ListYourSpaceActivity;->intentForState(Landroid/content/Context;Lcom/airbnb/android/interfaces/ListYourSpaceTransitions$ListYourSpaceState;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/airbnb/android/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 1093
    :sswitch_data_6c
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f080536 -> :sswitch_1c
        0x7f080553 -> :sswitch_44
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 1052
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 1054
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/activities/MainActivity;->mIsResumed:Z

    .line 1055
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mFragmentTransaction:Landroid/support/v4/app/FragmentTransaction;

    .line 1057
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mShakeHelper:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    if-eqz v0, :cond_12

    .line 1058
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mShakeHelper:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->stop()V

    .line 1061
    :cond_12
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->disableAmazonGesture()V

    .line 1062
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 987
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 989
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerToggle:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-virtual {v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 990
    return-void
.end method

.method protected onPostResume()V
    .registers 3

    .prologue
    .line 1029
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 1032
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    iget-boolean v1, p0, Lcom/airbnb/android/activities/MainActivity;->mForce:Z

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    .line 1033
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 1014
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 1016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/activities/MainActivity;->mIsResumed:Z

    .line 1018
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mShakeHelper:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/DebugSettings;->isShakeFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1019
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity;->mShakeHelper:Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    invoke-virtual {v0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->start()V

    .line 1022
    :cond_19
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->logStartupTime()V

    .line 1024
    invoke-direct {p0}, Lcom/airbnb/android/activities/MainActivity;->enableAmazonGesture()V

    .line 1025
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1074
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1075
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    if-eqz v4, :cond_13

    .line 1076
    const-string/jumbo v4, "menu_item"

    iget-object v5, p0, Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v5}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    :cond_13
    const-string/jumbo v4, "ignore_groups"

    iget-boolean v5, p0, Lcom/airbnb/android/activities/MainActivity;->mIgnoreGroupsOnCreate:Z

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1079
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1080
    .local v2, "stateKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1081
    .local v3, "stateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/Fragment$SavedState;>;"
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity;->mFragmentStateMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1082
    .local v1, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity;->mFragmentStateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 1083
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1084
    iget-object v4, p0, Lcom/airbnb/android/activities/MainActivity;->mFragmentStateMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 1087
    .end local v1    # "key":Ljava/lang/String;
    :cond_50
    const-string/jumbo v4, "fragment_instance_state_keys"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1088
    const-string/jumbo v4, "fragment_instance_state_keys_values"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1089
    return-void
.end method

.method public onSignInItemSelected()V
    .registers 4

    .prologue
    .line 1151
    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v2, p0, Lcom/airbnb/android/activities/MainActivity;->mDrawerLayoutView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1152
    sget-object v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->SignIn:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 1153
    .local v0, "menuItem":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    .line 1154
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    .line 974
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 975
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/AirbnbApi;->fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V

    .line 976
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStart(Landroid/app/Activity;)V

    .line 977
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    .line 981
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 982
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->reportActivityStop(Landroid/app/Activity;)V

    .line 983
    return-void
.end method
