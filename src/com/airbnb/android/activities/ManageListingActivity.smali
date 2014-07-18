.class public Lcom/airbnb/android/activities/ManageListingActivity;
.super Lcom/airbnb/android/activities/SolitAirActivity;
.source "ManageListingActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;
.implements Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;
.implements Lcom/airbnb/android/interfaces/ManageListingTransitions;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/activities/ManageListingActivity$10;,
        Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;
    }
.end annotation


# static fields
.field public static final COMPLETE_PROFILE:I = 0x974d

.field private static final DIALOG_DELETE_LISTING:Ljava/lang/String; = "delete_dialog"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "dialog"

.field private static final EXTRA_LISTING:Ljava/lang/String; = "listing"

.field private static final FRAGMENT_CURRENCIES:Ljava/lang/String; = "currencies_dialog"

.field public static final INTENT_EXTRA_MANAGED_LISTING:Ljava/lang/String; = "managed_listing"

.field private static final INTENT_EXTRA_MANAGED_LISTING_ID:Ljava/lang/String; = "managed_listing_id"

.field private static final INTENT_EXTRA_SHOW_INSTANT_BOOK_SELL:Ljava/lang/String; = "show_ib_sell"

.field private static final INVALID_ID:J = -0x1L

.field public static final JSON_AMENITIES_KEY:Ljava/lang/String; = "amenities_ids"

.field public static final JSON_APT_KEY:Ljava/lang/String; = "apt"

.field public static final JSON_BATHROOMS_KEY:Ljava/lang/String; = "bathrooms"

.field public static final JSON_BEDROOMS_KEY:Ljava/lang/String; = "bedrooms"

.field public static final JSON_BEDS_KEY:Ljava/lang/String; = "beds"

.field public static final JSON_CANCELLATION_KEY:Ljava/lang/String; = "cancellation_policy"

.field public static final JSON_CHECK_IN_TIME:Ljava/lang/String; = "check_in_time"

.field public static final JSON_CHECK_OUT_TIME:Ljava/lang/String; = "check_out_time"

.field public static final JSON_CITY_KEY:Ljava/lang/String; = "city"

.field public static final JSON_CLEANING_FEE_KEY:Ljava/lang/String; = "listing_cleaning_fee_native"

.field public static final JSON_COUNTRY_CODE_KEY:Ljava/lang/String; = "country_code"

.field public static final JSON_CURRENCY_KEY:Ljava/lang/String; = "listing_native_currency"

.field public static final JSON_EXTRA_GUEST_PRICE_KEY:Ljava/lang/String; = "listing_price_for_extra_person_native"

.field public static final JSON_GUESTS_INCLUDED_KEY:Ljava/lang/String; = "guests_included"

.field public static final JSON_INSTANT_BOOK_LEAD_TIME_KEY:Ljava/lang/String; = "instant_book_lead_time_hours"

.field public static final JSON_INSTANT_BOOK_VISIBILITY_KEY:Ljava/lang/String; = "instant_booking_visibility"

.field public static final JSON_LATITUDE_KEY:Ljava/lang/String; = "lat"

.field public static final JSON_LONGITUDE_KEY:Ljava/lang/String; = "lng"

.field public static final JSON_MAX_NIGHTS_KEY:Ljava/lang/String; = "max_nights"

.field public static final JSON_MIN_NIGHTS_KEY:Ljava/lang/String; = "min_nights"

.field public static final JSON_MONTHLY_KEY:Ljava/lang/String; = "listing_monthly_price_native"

.field public static final JSON_PERSON_CAPACITY_KEY:Ljava/lang/String; = "person_capacity"

.field public static final JSON_PRICE_KEY:Ljava/lang/String; = "listing_price_native"

.field public static final JSON_PROPERTY_TYPE_KEY:Ljava/lang/String; = "property_type_id"

.field public static final JSON_ROOM_TYPE_KEY:Ljava/lang/String; = "room_type_category"

.field public static final JSON_SECURITY_DEPOSIT_KEY:Ljava/lang/String; = "listing_security_deposit_native"

.field public static final JSON_STATE_KEY:Ljava/lang/String; = "state"

.field public static final JSON_STREET_KEY:Ljava/lang/String; = "street"

.field public static final JSON_USER_DEFINED_LOCATION:Ljava/lang/String; = "user_defined_location"

.field public static final JSON_WEEKEND_PRICING_KEY:Ljava/lang/String; = "listing_weekend_price_native"

.field public static final JSON_WEEKLY_KEY:Ljava/lang/String; = "listing_weekly_price_native"

.field public static final JSON_ZIP_KEY:Ljava/lang/String; = "zipcode"

.field private static final LOGIN_REQUEST:I = 0x79a

.field private static final PHOTO_MANAGEMENT_REQUEST:I = 0x2

.field private static final REQUEST_SECURITY_CHECK:I = 0x7a5

.field public static final TAG:Ljava/lang/String;

.field static final imageFileName:Ljava/lang/String; = "profilePic.png"

.field public static sDisableFragmentTransactions:Z


# instance fields
.field private mLLoader:Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private mListingStatusUpdate:Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

.field private mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

.field mRootFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mShowIBSell:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    const-class v0, Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/activities/ManageListingActivity;->TAG:Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/android/activities/ManageListingActivity;->sDisableFragmentTransactions:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/airbnb/android/activities/SolitAirActivity;-><init>()V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/activities/ManageListingActivity;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ManageListingActivity;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/activities/ManageListingActivity;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ManageListingActivity;
    .param p1, "x1"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/activities/ManageListingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/ManageListingActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->showHomeFragment()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/activities/ManageListingActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ManageListingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity;->showProgressSpinner(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/airbnb/android/activities/ManageListingActivity;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/activities/ManageListingActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity;->checkForHostingErrors(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/airbnb/android/activities/ManageListingActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/activities/ManageListingActivity;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->updateFragment()V

    return-void
.end method

.method private checkForHostingErrors(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, "errorMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 994
    const-string/jumbo v0, " "

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/MiscUtils;->fromHtmlSafe(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 996
    :cond_1b
    return-void
.end method

.method private executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p1, "strap"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 708
    new-instance v0, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingSimpleUpdateRequest;

    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/activities/ManageListingActivity$4;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/ManageListingActivity$4;-><init>(Lcom/airbnb/android/activities/ManageListingActivity;)V

    invoke-direct {v0, v1, p1, v2}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingSimpleUpdateRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingSimpleUpdateRequest;->execute()V

    .line 729
    return-void
.end method

.method private getParentIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 335
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private handleCurrenciesClick()V
    .registers 4

    .prologue
    .line 392
    new-instance v0, Lcom/airbnb/android/requests/CurrenciesRequest;

    const/4 v1, 0x0

    new-instance v2, Lcom/airbnb/android/activities/ManageListingActivity$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/activities/ManageListingActivity$2;-><init>(Lcom/airbnb/android/activities/ManageListingActivity;)V

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/CurrenciesRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 423
    .local v0, "request":Lcom/airbnb/android/requests/CurrenciesRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/requests/CurrenciesRequest;->execute()V

    .line 424
    return-void
.end method

.method private handleInvalidInput()V
    .registers 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->finish()V

    .line 288
    return-void
.end method

.method private handleUpNavigation()V
    .registers 4

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getParentIntent()Landroid/content/Intent;

    move-result-object v0

    .line 323
    .local v0, "upIntent":Landroid/content/Intent;
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 325
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 328
    const/high16 v1, 0x7f040000

    const v2, 0x7f040003

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->overridePendingTransition(II)V

    .line 332
    :goto_1d
    return-void

    .line 330
    :cond_1e
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->finish()V

    goto :goto_1d
.end method

.method private handleWebIntents()J
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 267
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 268
    .local v3, "intentData":Landroid/net/Uri;
    if-eqz v3, :cond_43

    .line 269
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 270
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_43

    .line 272
    const/4 v5, 0x1

    :try_start_17
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 273
    .local v1, "id":J
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v7, :cond_38

    const-string/jumbo v5, "instant-book"

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 274
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mShowIBSell:Z
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_38} :catch_39

    .line 282
    .end local v1    # "id":J
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_38
    :goto_38
    return-wide v1

    .line 277
    .restart local v4    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_39
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v5, Lcom/airbnb/android/activities/ManageListingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_43
    const-wide/16 v1, -0x1

    goto :goto_38
.end method

.method public static intentForIBSell(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # J

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "managed_listing_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 168
    const-string/jumbo v1, "show_ib_sell"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 169
    return-object v0
.end method

.method public static intentForState(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listingId"    # J

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "managed_listing_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    return-object v0
.end method

.method public static intentForState(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/activities/ManageListingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "managed_listing"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    return-object v0
.end method

.method private loadFragment()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    .line 221
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v4

    const v5, 0x7f0a001e

    invoke-virtual {v4, v5}, Lcom/airbnb/android/views/LoaderFrame;->setBackgroundResource(I)V

    .line 222
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 224
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    if-nez v4, :cond_54

    .line 225
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "managed_listing_id"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 226
    .local v0, "id":J
    cmp-long v4, v0, v6

    if-nez v4, :cond_32

    .line 227
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->handleWebIntents()J

    move-result-wide v0

    .line 228
    cmp-long v4, v0, v6

    if-nez v4, :cond_32

    .line 229
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->handleInvalidInput()V

    .line 232
    :cond_32
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "listingId":Ljava/lang/String;
    new-instance v4, Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;

    new-instance v5, Lcom/airbnb/android/activities/ManageListingActivity$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/activities/ManageListingActivity$1;-><init>(Lcom/airbnb/android/activities/ManageListingActivity;)V

    invoke-direct {v4, v2, v5}, Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;-><init>(Ljava/lang/String;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mLLoader:Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;

    .line 255
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/airbnb/android/activities/ManageListingActivity;->showProgressSpinner(Z)V

    .line 256
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mLLoader:Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;

    invoke-virtual {v4}, Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;->execute()V

    .line 262
    .end local v0    # "id":J
    :goto_4b
    new-instance v3, Lcom/airbnb/android/requests/CurrenciesRequest;

    invoke-direct {v3, v8, v8}, Lcom/airbnb/android/requests/CurrenciesRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 263
    .local v3, "request":Lcom/airbnb/android/requests/CurrenciesRequest;
    invoke-virtual {v3}, Lcom/airbnb/android/requests/CurrenciesRequest;->execute()V

    .line 264
    return-void

    .line 258
    .end local v2    # "listingId":Ljava/lang/String;
    .end local v3    # "request":Lcom/airbnb/android/requests/CurrenciesRequest;
    :cond_54
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 259
    .restart local v2    # "listingId":Ljava/lang/String;
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->showHomeFragment()V

    goto :goto_4b
.end method

.method private postPreListActionEvent(Ljava/lang/String;Lcom/airbnb/android/models/Listing;)V
    .registers 8
    .param p1, "actionKey"    # Ljava/lang/String;
    .param p2, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 1012
    const/16 v0, 0x8

    :try_start_2
    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "complete_order"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    aput-object p1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getPictureCount()I

    move-result v0

    if-nez v0, :cond_1ec

    const-string/jumbo v0, "photos_not_done"

    :goto_1e
    aput-object v0, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f1

    const-string/jumbo v0, "title_not_done"

    :goto_2e
    aput-object v0, v1, v2

    const/4 v2, 0x5

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f6

    const-string/jumbo v0, "summary_not_done"

    :goto_3e
    aput-object v0, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v0

    if-nez v0, :cond_1fb

    const-string/jumbo v0, "price_not_done"

    :goto_4a
    aput-object v0, v1, v2

    const/4 v2, 0x7

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getHasSetLocation()Z

    move-result v0

    if-nez v0, :cond_200

    const-string/jumbo v0, "location_not_done"

    :goto_56
    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1019
    const-string/jumbo v0, "title_complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 1020
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "title"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "done_click"

    aput-object v2, v1, v0

    const/4 v2, 0x4

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_205

    const-string/jumbo v0, "fail"

    :goto_8e
    aput-object v0, v1, v2

    const/4 v0, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1024
    :cond_b2
    const-string/jumbo v0, "summary_complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 1025
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "summary"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "done_click"

    aput-object v2, v1, v0

    const/4 v2, 0x4

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20a

    const-string/jumbo v0, "fail"

    :goto_e5
    aput-object v0, v1, v2

    const/4 v0, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getSummary()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1029
    :cond_10d
    const-string/jumbo v0, "price_complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 1030
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string/jumbo v2, "price"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string/jumbo v2, "done_click"

    aput-object v2, v1, v0

    const/4 v2, 0x4

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v0

    if-nez v0, :cond_20f

    const-string/jumbo v0, "fail"

    :goto_13d
    aput-object v0, v1, v2

    const/4 v0, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getAutoPricingDaily()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x7

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/16 v0, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getAutoPricingDaily()I

    move-result v3

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1037
    :cond_1a0
    const-string/jumbo v0, "location_complete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1eb

    .line 1038
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "done_click"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/airbnb/android/models/Listing;->getDirections()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 1044
    :cond_1eb
    :goto_1eb
    return-void

    .line 1012
    :cond_1ec
    const-string/jumbo v0, "photos_done"

    goto/16 :goto_1e

    :cond_1f1
    const-string/jumbo v0, "title_done"

    goto/16 :goto_2e

    :cond_1f6
    const-string/jumbo v0, "summary_done"

    goto/16 :goto_3e

    :cond_1fb
    const-string/jumbo v0, "price_done"

    goto/16 :goto_4a

    :cond_200
    const-string/jumbo v0, "location_done"

    goto/16 :goto_56

    .line 1020
    :cond_205
    const-string/jumbo v0, "success"

    goto/16 :goto_8e

    .line 1025
    :cond_20a
    const-string/jumbo v0, "success"

    goto/16 :goto_e5

    .line 1030
    :cond_20f
    const-string/jumbo v0, "success"
    :try_end_212
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_212} :catch_214

    goto/16 :goto_13d

    .line 1041
    :catch_214
    move-exception v0

    goto :goto_1eb
.end method

.method private sendListingUpdate(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;Ljava/lang/String;)V
    .registers 5
    .param p1, "field"    # Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 647
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mJsonKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V

    .line 648
    return-void
.end method

.method private setCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "currency"    # Ljava/lang/String;
    .param p2, "currencyCode"    # Ljava/lang/String;
    .param p3, "currencySymbol"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/Listing;->setListingNativeCurrency(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/models/Listing;->setNativeCurrency(Ljava/lang/String;)V

    .line 436
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 437
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->updateFragment()V

    .line 439
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "listing_native_currency"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V

    .line 440
    return-void
.end method

.method private setOnBackListener(Lcom/airbnb/android/interfaces/OnBackListener;)V
    .registers 2
    .param p1, "f"    # Lcom/airbnb/android/interfaces/OnBackListener;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    .line 369
    return-void
.end method

.method private showFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 360
    const/4 v0, 0x1

    invoke-super {p0, p1, v0}, Lcom/airbnb/android/activities/SolitAirActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 362
    instance-of v0, p1, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;

    if-eqz v0, :cond_d

    .line 363
    check-cast p1, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;

    .end local p1    # "f":Landroid/support/v4/app/Fragment;
    invoke-direct {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity;->setOnBackListener(Lcom/airbnb/android/interfaces/OnBackListener;)V

    .line 365
    :cond_d
    return-void
.end method

.method private showHomeFragment()V
    .registers 5

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getLoaderFrame()Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/views/LoaderFrame;->finish()V

    .line 292
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->getUserId()J

    move-result-wide v0

    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 293
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->handleInvalidInput()V

    .line 295
    :cond_20
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget-boolean v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mShowIBSell:Z

    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->newInstance(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    move-result-object v0

    :goto_30
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/activities/ManageListingActivity;->showFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 297
    return-void

    .line 295
    :cond_35
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    move-result-object v0

    goto :goto_30
.end method

.method private showProgressSpinner(Z)V
    .registers 2
    .param p1, "show"    # Z

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/ManageListingActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 389
    return-void
.end method

.method private updateFragment()V
    .registers 4

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f080025

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1005
    .local v0, "f":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1e

    instance-of v1, v0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;

    if-eqz v1, :cond_1e

    .line 1006
    check-cast v0, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;

    .end local v0    # "f":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/managelisting/BaseManageListingFragment;->updateListingFromActivity(Lcom/airbnb/android/models/Listing;)V

    .line 1008
    :cond_1e
    return-void
.end method


# virtual methods
.method public deleteListingPrompt()V
    .registers 4

    .prologue
    .line 860
    invoke-static {}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->newInstance()Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;

    move-result-object v0

    .line 861
    .local v0, "fragment":Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;
    new-instance v1, Lcom/airbnb/android/activities/ManageListingActivity$7;

    invoke-direct {v1, p0}, Lcom/airbnb/android/activities/ManageListingActivity$7;-><init>(Lcom/airbnb/android/activities/ManageListingActivity;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->setOnDeleteListener(Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment$OnDeleteListener;)V

    .line 893
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "delete_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/managelisting/DeleteListingDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 894
    return-void
.end method

.method public doneTextField(ILjava/lang/String;)V
    .registers 11
    .param p1, "ordinal"    # I
    .param p2, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 593
    invoke-static {p1}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->getType(I)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-result-object v0

    .line 594
    .local v0, "field":Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/activities/ManageListingActivity;->sendListingUpdate(Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;Ljava/lang/String;)V

    .line 596
    sget-object v1, Lcom/airbnb/android/activities/ManageListingActivity$10;->$SwitchMap$com$airbnb$android$fragments$managelisting$TextEditFieldDialogFragment$Fields:[I

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_e4

    .line 643
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 644
    return-void

    .line 598
    :pswitch_1f
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setName(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v1

    if-nez v1, :cond_35

    .line 600
    const-string/jumbo v1, "title_complete"

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->postPreListActionEvent(Ljava/lang/String;Lcom/airbnb/android/models/Listing;)V

    goto :goto_17

    .line 602
    :cond_35
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "ml_post_list"

    aput-object v2, v1, v4

    const-string/jumbo v2, "title"

    aput-object v2, v1, v5

    const-string/jumbo v2, "done_click"

    aput-object v2, v1, v6

    const-string/jumbo v2, "success"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    goto :goto_17

    .line 606
    :pswitch_61
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setSummary(Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v1

    if-nez v1, :cond_17

    .line 608
    const-string/jumbo v1, "summary_complete"

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->postPreListActionEvent(Ljava/lang/String;Lcom/airbnb/android/models/Listing;)V

    goto :goto_17

    .line 612
    :pswitch_77
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setSpace(Ljava/lang/String;)V

    goto :goto_17

    .line 615
    :pswitch_7d
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setTransit(Ljava/lang/String;)V

    goto :goto_17

    .line 618
    :pswitch_83
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setAccess(Ljava/lang/String;)V

    goto :goto_17

    .line 621
    :pswitch_89
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setInteraction(Ljava/lang/String;)V

    goto :goto_17

    .line 624
    :pswitch_8f
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setHouseRules(Ljava/lang/String;)V

    goto :goto_17

    .line 627
    :pswitch_95
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setNeighborhoodOverview(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 630
    :pswitch_9c
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setNotes(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 633
    :pswitch_a3
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setDirections(Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v1

    if-nez v1, :cond_17

    .line 635
    const-string/jumbo v1, "directions_complete"

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->postPreListActionEvent(Ljava/lang/String;Lcom/airbnb/android/models/Listing;)V

    .line 636
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "ml_pre_list"

    aput-object v2, v1, v4

    const-string/jumbo v2, "directions"

    aput-object v2, v1, v5

    const-string/jumbo v2, "done_click"

    aput-object v2, v1, v6

    const-string/jumbo v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    goto/16 :goto_17

    .line 596
    nop

    :pswitch_data_e4
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_61
        :pswitch_77
        :pswitch_7d
        :pswitch_83
        :pswitch_89
        :pswitch_8f
        :pswitch_95
        :pswitch_9c
        :pswitch_a3
    .end packed-switch
.end method

.method public doneWithAddressSelection(Lcom/airbnb/android/models/Listing;)V
    .registers 3
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 854
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 855
    invoke-static {p1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 856
    return-void
.end method

.method public doneWithPreList()V
    .registers 8

    .prologue
    .line 898
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 899
    .local v2, "ft":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "dialog"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 900
    .local v0, "currentDialog":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_18

    .line 901
    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 903
    :cond_18
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 905
    const v4, 0x7f0e04f4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->newInstance(II)Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;

    move-result-object v1

    .line 907
    .local v1, "f":Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;
    invoke-virtual {v1, p0}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->setProgressDialogListener(Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment$ProgressDialogListener;)V

    .line 908
    const-string/jumbo v4, "dialog"

    invoke-virtual {v1, v2, v4}, Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 910
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 911
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "has_availability"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    new-instance v4, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;

    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/airbnb/android/activities/ManageListingActivity$8;

    invoke-direct {v6, p0, v1}, Lcom/airbnb/android/activities/ManageListingActivity$8;-><init>(Lcom/airbnb/android/activities/ManageListingActivity;Lcom/airbnb/android/fragments/managelisting/ProgressDialogFragment;)V

    invoke-direct {v4, v5, v3, v6}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    iput-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListingStatusUpdate:Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .line 940
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListingStatusUpdate:Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    invoke-virtual {v4}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;->execute()V

    .line 942
    return-void
.end method

.method public getListingObject()Lcom/airbnb/android/models/Listing;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method protected getWindowFeatures()[I
    .registers 4

    .prologue
    .line 182
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    return-object v0
.end method

.method public listOrUnlist(Z)V
    .registers 6
    .param p1, "listed"    # Z

    .prologue
    .line 950
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 951
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "has_availability"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v3, v3, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "general_nav"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string/jumbo v3, "manage_listing"

    aput-object v3, v2, v1

    const/4 v3, 0x3

    if-eqz p1, :cond_48

    const-string/jumbo v1, "list_click"

    :goto_2b
    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 954
    new-instance v1, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/activities/ManageListingActivity$9;

    invoke-direct {v3, p0}, Lcom/airbnb/android/activities/ManageListingActivity$9;-><init>(Lcom/airbnb/android/activities/ManageListingActivity;)V

    invoke-direct {v1, v2, v0, v3}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;->execute()V

    .line 970
    return-void

    .line 952
    :cond_48
    const-string/jumbo v1, "unlist_click"

    goto :goto_2b
.end method

.method public listingUpdated(Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;)V
    .registers 3
    .param p1, "update"    # Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 189
    iget-object v0, p1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingUpdatedEvent;->listing:Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 190
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    const/4 v5, -0x1

    .line 747
    sparse-switch p1, :sswitch_data_78

    .line 786
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/activities/SolitAirActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 790
    :cond_8
    :goto_8
    return-void

    .line 749
    :sswitch_9
    if-ne p2, v5, :cond_8

    .line 750
    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->showProgressSpinner(Z)V

    .line 751
    const-string/jumbo v0, "managed_listing"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Listing;

    iput-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 753
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-nez v0, :cond_29

    .line 754
    const-string/jumbo v0, "photos_complete"

    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/activities/ManageListingActivity;->postPreListActionEvent(Ljava/lang/String;Lcom/airbnb/android/models/Listing;)V

    .line 757
    :cond_29
    new-instance v0, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;

    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getPhotos()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/airbnb/android/activities/ManageListingActivity$5;

    invoke-direct {v3, p0}, Lcom/airbnb/android/activities/ManageListingActivity$5;-><init>(Lcom/airbnb/android/activities/ManageListingActivity;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingPhotosUpdateRequest;->execute()V

    goto :goto_8

    .line 777
    :sswitch_47
    if-ne p2, v5, :cond_8

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 778
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->loadFragment()V

    goto :goto_8

    .line 783
    :sswitch_57
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "listing_id"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "success"

    if-ne p2, v5, :cond_75

    :goto_6d
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackPrelistDismiss(Lcom/airbnb/android/utils/Strap;)V

    goto :goto_8

    :cond_75
    const/4 v0, 0x0

    goto :goto_6d

    .line 747
    nop

    :sswitch_data_78
    .sparse-switch
        0x2 -> :sswitch_9
        0x79a -> :sswitch_47
        0x7a5 -> :sswitch_57
    .end sparse-switch
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    if-eqz v0, :cond_d

    .line 374
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    invoke-interface {v0}, Lcom/airbnb/android/interfaces/OnBackListener;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 380
    :goto_c
    return-void

    .line 379
    :cond_d
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onBackPressed()V

    goto :goto_c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onCreate(Landroid/os/Bundle;)V

    .line 196
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v2, p0}, Lcom/airbnb/android/events/AirbnbBus;->register(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "managed_listing"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    iput-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 199
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "show_ib_sell"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mShowIBSell:Z

    .line 201
    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 202
    .local v1, "frame":Landroid/view/ViewGroup;
    invoke-virtual {v1, v1}, Landroid/view/ViewGroup;->requestTransparentRegion(Landroid/view/View;)V

    .line 204
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->setupActionBar(I[Ljava/lang/Object;)Landroid/app/ActionBar;

    .line 206
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 208
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 218
    :goto_50
    return-void

    .line 209
    :cond_51
    if-nez p1, :cond_72

    .line 210
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->isCurrentUserAuthorized()Z

    move-result v2

    if-nez v2, :cond_6e

    .line 211
    const v2, 0x7f0e0763

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/airbnb/android/activities/SignInActivity;->intentForToastDisplay(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x79a

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/activities/ManageListingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_50

    .line 214
    :cond_6e
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->loadFragment()V

    goto :goto_50

    .line 216
    :cond_72
    const-string/jumbo v2, "listing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/airbnb/android/models/Listing;

    iput-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    goto :goto_50
.end method

.method public onCurrencySelected(Lcom/airbnb/android/models/Currency;)V
    .registers 5
    .param p1, "c"    # Lcom/airbnb/android/models/Currency;

    .prologue
    .line 428
    invoke-virtual {p1}, Lcom/airbnb/android/models/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/Currency;->getCurrencyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/airbnb/android/models/Currency;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->setCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v2, v2, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v0}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string/jumbo v0, "ml_post_list"

    :goto_25
    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "currency_selected"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/airbnb/android/models/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 431
    return-void

    .line 429
    :cond_38
    const-string/jumbo v0, "ml_pre_list"

    goto :goto_25
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 355
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onDestroy()V

    .line 356
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v0, p0}, Lcom/airbnb/android/events/AirbnbBus;->unregister(Ljava/lang/Object;)V

    .line 357
    return-void
.end method

.method public onItemSelected(Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;)V
    .registers 5
    .param p1, "state"    # Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "f":Landroid/support/v4/app/Fragment;
    sget-object v1, Lcom/airbnb/android/activities/ManageListingActivity$10;->$SwitchMap$com$airbnb$android$interfaces$ManageListingTransitions$ManageListingState:[I

    invoke-virtual {p1}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_a4

    .line 586
    :goto_c
    if-eqz v0, :cond_11

    .line 587
    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 589
    :cond_11
    :goto_11
    return-void

    .line 531
    :pswitch_12
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/PostListManageListingFragment;

    move-result-object v0

    .line 532
    goto :goto_c

    .line 534
    :pswitch_19
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/PreListManageListingFragment;

    move-result-object v0

    .line 535
    goto :goto_c

    .line 537
    :pswitch_20
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;->newInstance(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/managelisting/FullDescriptionFragment;

    move-result-object v0

    .line 538
    goto :goto_c

    .line 540
    :pswitch_2d
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/MLRoomsAndBedsFragment;

    move-result-object v0

    .line 541
    goto :goto_c

    .line 543
    :pswitch_34
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/BasePriceFragment;

    move-result-object v0

    .line 544
    goto :goto_c

    .line 546
    :pswitch_3b
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/LongTermPricingFragment;

    move-result-object v0

    .line 547
    goto :goto_c

    .line 549
    :pswitch_42
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/AdditionalChargesFragment;

    move-result-object v0

    .line 550
    goto :goto_c

    .line 552
    :pswitch_49
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/InstantBookEnabledFragment;

    move-result-object v0

    .line 553
    goto :goto_c

    .line 555
    :pswitch_50
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/AmenitiesFragment;

    move-result-object v0

    .line 556
    goto :goto_c

    .line 558
    :pswitch_57
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/TermsFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/TermsFragment;

    move-result-object v0

    .line 559
    goto :goto_c

    .line 561
    :pswitch_5e
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    move-result-object v0

    .line 562
    goto :goto_c

    .line 564
    :pswitch_65
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/EditAddressFragment;

    move-result-object v0

    .line 565
    goto :goto_c

    .line 567
    :pswitch_6c
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/OptionalDetailsFragment;

    move-result-object v0

    .line 568
    goto :goto_c

    .line 570
    :pswitch_73
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1}, Lcom/airbnb/android/models/Listing;->getHasSetLocation()Z

    move-result v1

    if-eqz v1, :cond_82

    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    move-result-object v0

    .line 571
    :goto_81
    goto :goto_c

    .line 570
    :cond_82
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v1}, Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/AddressSelectionFragment;

    move-result-object v0

    goto :goto_81

    .line 573
    :pswitch_89
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/airbnb/android/fragments/ListingCalendarFragment;->instanceForListing(Lcom/airbnb/android/models/Listing;Z)Lcom/airbnb/android/fragments/ListingCalendarFragment;

    move-result-object v0

    .line 574
    goto/16 :goto_c

    .line 576
    :pswitch_92
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->handleCurrenciesClick()V

    goto/16 :goto_11

    .line 579
    :pswitch_97
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {p0, v1}, Lcom/airbnb/android/activities/ManagePhotosActivity;->intentForListing(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_11

    .line 529
    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_12
        :pswitch_19
        :pswitch_20
        :pswitch_2d
        :pswitch_34
        :pswitch_3b
        :pswitch_42
        :pswitch_49
        :pswitch_50
        :pswitch_57
        :pswitch_5e
        :pswitch_65
        :pswitch_6c
        :pswitch_73
        :pswitch_89
        :pswitch_92
        :pswitch_97
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 308
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 318
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 310
    :pswitch_c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_1b

    .line 311
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->onBackPressed()V

    .line 315
    :goto_19
    const/4 v0, 0x1

    goto :goto_b

    .line 313
    :cond_1b
    invoke-direct {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->handleUpNavigation()V

    goto :goto_19

    .line 308
    nop

    :pswitch_data_20
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 340
    invoke-super {p0}, Lcom/airbnb/android/activities/SolitAirActivity;->onPause()V

    .line 342
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mLLoader:Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;

    if-eqz v0, :cond_f

    .line 343
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mLLoader:Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;

    invoke-virtual {v0}, Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;->cancel()V

    .line 344
    iput-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mLLoader:Lcom/airbnb/android/activities/ManageListingActivity$ListingLoader;

    .line 347
    :cond_f
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListingStatusUpdate:Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    if-eqz v0, :cond_1a

    .line 348
    iget-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListingStatusUpdate:Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest;->cancel()V

    .line 349
    iput-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListingStatusUpdate:Lcom/airbnb/android/requests/ListingUpdateObjectRequest;

    .line 351
    :cond_1a
    return-void
.end method

.method public onProgressCancelled()V
    .registers 1

    .prologue
    .line 985
    return-void
.end method

.method public onProgressCompleted()V
    .registers 5

    .prologue
    .line 974
    const v2, 0x7f0e03dc

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 975
    new-instance v1, Lcom/airbnb/android/events/ListingModifiedEvent$ListingListedEvent;

    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {v1, v2}, Lcom/airbnb/android/events/ListingModifiedEvent$ListingListedEvent;-><init>(Lcom/airbnb/android/models/Listing;)V

    .line 976
    .local v1, "lle":Lcom/airbnb/android/events/ListingModifiedEvent$ListingListedEvent;
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 977
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {p0, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->intentForState(Landroid/content/Context;Lcom/airbnb/android/models/Listing;)Landroid/content/Intent;

    move-result-object v0

    .line 978
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->startActivity(Landroid/content/Intent;)V

    .line 979
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->finish()V

    .line 980
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/airbnb/android/activities/SolitAirActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 303
    const-string/jumbo v0, "listing"

    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 304
    return-void
.end method

.method public onTextItemSelected(ILjava/lang/String;)V
    .registers 4
    .param p1, "ordinal"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 523
    invoke-static {p1, p2}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;->newInstance(ILjava/lang/String;)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 524
    return-void
.end method

.method public setActionBarTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 385
    return-void
.end method

.method public setAdditionalPrices(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 10
    .param p1, "cleaningFee"    # Ljava/lang/Integer;
    .param p2, "weekendPricing"    # Ljava/lang/Integer;
    .param p3, "extraGuestPrice"    # Ljava/lang/Integer;
    .param p4, "guestsIncluded"    # Ljava/lang/Integer;
    .param p5, "securityDeposit"    # Ljava/lang/Integer;

    .prologue
    .line 690
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/models/Listing;->setListingCleaningFeeNative(Ljava/lang/Integer;)V

    .line 691
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Listing;->setListingWeekendPriceNative(I)V

    .line 692
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Listing;->setListingPriceForExtraPersonNative(I)V

    .line 693
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Listing;->setGuestsIncluded(I)V

    .line 694
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p5}, Lcom/airbnb/android/models/Listing;->setListingSecurityDepositNative(Ljava/lang/Integer;)V

    .line 696
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 697
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "listing_cleaning_fee_native"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "listing_weekend_price_native"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "listing_price_for_extra_person_native"

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "guests_included"

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "listing_security_deposit_native"

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 702
    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V

    .line 704
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 705
    return-void
.end method

.method public setAmenities(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/AmenitiesItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 653
    .local p1, "checkedAmenitiesList":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/AmenitiesItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [I

    .line 654
    .local v1, "checkedAmenities":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1e

    .line 655
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/android/models/AmenitiesItem;

    .line 656
    .local v3, "item":Lcom/airbnb/android/models/AmenitiesItem;
    invoke-virtual {v3}, Lcom/airbnb/android/models/AmenitiesItem;->getAmenity()Lcom/airbnb/android/models/Amenities;

    move-result-object v4

    iget v4, v4, Lcom/airbnb/android/models/Amenities;->mId:I

    aput v4, v1, v2

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 659
    .end local v3    # "item":Lcom/airbnb/android/models/AmenitiesItem;
    :cond_1e
    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4, v1}, Lcom/airbnb/android/models/Listing;->setAmenitiesIds([I)V

    .line 661
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->toIntegerList([I)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 663
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v4, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest$ListingArrayUpdateRequest;

    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "amenities_ids"

    new-instance v7, Lcom/airbnb/android/activities/ManageListingActivity$3;

    invoke-direct {v7, p0}, Lcom/airbnb/android/activities/ManageListingActivity$3;-><init>(Lcom/airbnb/android/activities/ManageListingActivity;)V

    invoke-direct {v4, v5, v6, v0, v7}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest$ListingArrayUpdateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v4}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest$ListingArrayUpdateRequest;->execute()V

    .line 685
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 686
    return-void
.end method

.method public setInstantBookSettings(ZLcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;)V
    .registers 11
    .param p1, "isEnabled"    # Z
    .param p2, "instantBookVisibility"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .param p3, "instantBookAdvanceNotice"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .prologue
    .line 1048
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    .line 1049
    .local v4, "strap":Lcom/airbnb/android/utils/Strap;
    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getInstantBookingVisibility()Ljava/lang/String;

    move-result-object v3

    .line 1050
    .local v3, "oldVisibility":Ljava/lang/String;
    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getInstantBookLeadTimeHours()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1051
    .local v2, "oldNotice":I
    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->isInstantBookableBySomeone()Z

    move-result v0

    .line 1053
    .local v0, "oldEnabled":Z
    if-eqz p1, :cond_85

    .line 1054
    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v6, p2, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/models/Listing;->setInstantBookingVisibility(Ljava/lang/String;)V

    .line 1055
    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getInstantBookLeadTimeHours()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1060
    .local v1, "oldLeadTime":I
    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    sget-object v6, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->SameDay:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    if-ne p3, v6, :cond_82

    const/16 v6, 0x18

    if-ge v1, v6, :cond_82

    .end local v1    # "oldLeadTime":I
    :goto_37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/models/Listing;->setInstantBookLeadTimeHours(Ljava/lang/Integer;)V

    .line 1061
    const-string/jumbo v5, "instant_book_lead_time_hours"

    iget-object v6, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getInstantBookLeadTimeHours()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    .line 1064
    iget-object v5, p2, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 1065
    invoke-static {p2}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookVisibilitySaved(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;)V

    .line 1067
    :cond_5a
    iget v5, p3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    if-eq v2, v5, :cond_61

    .line 1068
    invoke-static {p3}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookAdvanceNoticeSaved(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;)V

    .line 1074
    :cond_61
    :goto_61
    if-eq p1, v0, :cond_66

    .line 1075
    invoke-static {p1}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->trackInstantBookCheckboxSaved(Z)V

    .line 1078
    :cond_66
    const-string/jumbo v5, "instant_booking_visibility"

    iget-object v6, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v6}, Lcom/airbnb/android/models/Listing;->getInstantBookingVisibility()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    .line 1080
    invoke-direct {p0, v4}, Lcom/airbnb/android/activities/ManageListingActivity;->executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V

    .line 1082
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 1083
    return-void

    .line 1060
    .restart local v1    # "oldLeadTime":I
    :cond_82
    iget v1, p3, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    goto :goto_37

    .line 1071
    .end local v1    # "oldLeadTime":I
    :cond_85
    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    sget-object v6, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->Off:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    iget-object v6, v6, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/airbnb/android/models/Listing;->setInstantBookingVisibility(Ljava/lang/String;)V

    .line 1072
    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    sget-object v6, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->sDefault:Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    iget v6, v6, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/models/Listing;->setInstantBookLeadTimeHours(Ljava/lang/Integer;)V

    goto :goto_61
.end method

.method public setLongTermPricing(II)V
    .registers 7
    .param p1, "weeklyPrice"    # I
    .param p2, "monthlyPrice"    # I

    .prologue
    .line 510
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setListingMonthlyPriceNative(I)V

    .line 511
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/models/Listing;->setListingWeeklyPriceNative(I)V

    .line 513
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 514
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "listing_weekly_price_native"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "listing_monthly_price_native"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 516
    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V

    .line 518
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 519
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .registers 8
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 444
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v1

    .line 446
    .local v1, "priceInt":I
    :try_start_6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_39

    move-result v1

    .line 452
    :goto_a
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2, v1}, Lcom/airbnb/android/models/Listing;->setListingPriceNative(I)V

    .line 454
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->hasBeenListed()Z

    move-result v2

    if-nez v2, :cond_44

    .line 455
    const-string/jumbo v2, "price_complete"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/activities/ManageListingActivity;->postPreListActionEvent(Ljava/lang/String;Lcom/airbnb/android/models/Listing;)V

    .line 463
    :goto_1f
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "listing_price_native"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V

    .line 465
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 466
    return-void

    .line 447
    :catch_39
    move-exception v0

    .line 449
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/airbnb/android/activities/ManageListingActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 457
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_44
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v4, v4, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "ml_post_list"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "price"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "done_click"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "success"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getAutoPricingDaily()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getListingNativeCurrency()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v4}, Lcom/airbnb/android/models/Listing;->getAutoPricingDaily()I

    move-result v4

    iget-object v5, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v5}, Lcom/airbnb/android/models/Listing;->getListingPriceNative()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    goto/16 :goto_1f
.end method

.method public setRoomsBedsAndSpaceType(IIIFLcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;)V
    .registers 11
    .param p1, "maxGuests"    # I
    .param p2, "bedrooms"    # I
    .param p3, "beds"    # I
    .param p4, "bathrooms"    # F
    .param p5, "room"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;
    .param p6, "home"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .prologue
    .line 470
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p1}, Lcom/airbnb/android/models/Listing;->setPersonCapacity(I)V

    .line 471
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p2}, Lcom/airbnb/android/models/Listing;->setBedrooms(I)V

    .line 472
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p3}, Lcom/airbnb/android/models/Listing;->setBedCount(I)V

    .line 473
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v1, p4}, Lcom/airbnb/android/models/Listing;->setBathrooms(F)V

    .line 475
    if-eqz p5, :cond_28

    .line 476
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget-object v2, p5, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Listing;->setRoomTypeKey(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget v2, p5, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mTitleId:I

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Listing;->setRoomType(Ljava/lang/String;)V

    .line 480
    :cond_28
    if-eqz p6, :cond_3c

    .line 481
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget v2, p6, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mTitleId:I

    invoke-virtual {p0, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Listing;->setPropertyType(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    iget v2, p6, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mServerDescKey:I

    invoke-virtual {v1, v2}, Lcom/airbnb/android/models/Listing;->setPropertyTypeId(I)V

    .line 485
    :cond_3c
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 486
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "person_capacity"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "bedrooms"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "beds"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "bathrooms"

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 495
    if-eqz p6, :cond_7b

    .line 496
    const-string/jumbo v1, "property_type_id"

    iget v2, p6, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mServerDescKey:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 499
    :cond_7b
    if-eqz p5, :cond_86

    .line 500
    const-string/jumbo v1, "room_type_category"

    iget-object v2, p5, Lcom/airbnb/android/interfaces/BaseListingTransitions$SpaceType;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 503
    :cond_86
    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V

    .line 505
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 506
    return-void
.end method

.method public setTerms(Lcom/airbnb/android/models/Listing;)V
    .registers 6
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 735
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "min_nights"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getMinNights()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "max_nights"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getMaxNights()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "check_in_time"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCheckInTime()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "check_out_time"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCheckOutTime()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "cancellation_policy"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCancellationPolicyKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 741
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->executeListingUpdateTask(Lcom/airbnb/android/utils/Strap;)V

    .line 742
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 743
    return-void
.end method

.method public unRegisterOnBackListener()V
    .registers 2

    .prologue
    .line 989
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mOnBackListener:Lcom/airbnb/android/interfaces/OnBackListener;

    .line 990
    return-void
.end method

.method public updateAddress(Lcom/airbnb/android/models/Listing;Z)V
    .registers 4
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "newLocation"    # Z

    .prologue
    .line 794
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 795
    if-eqz p2, :cond_c

    .line 796
    invoke-static {p1}, Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/LocationSelectionFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/airbnb/android/activities/ManageListingActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 800
    :goto_b
    return-void

    .line 798
    :cond_c
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_b
.end method

.method public updateLocation(Lcom/airbnb/android/models/Listing;ZZ)V
    .registers 10
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p2, "userSetLocation"    # Z
    .param p3, "newLocation"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 804
    iput-object p1, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    .line 806
    if-eqz p3, :cond_c3

    .line 807
    const-string/jumbo v2, "location_complete"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-direct {p0, v2, v3}, Lcom/airbnb/android/activities/ManageListingActivity;->postPreListActionEvent(Ljava/lang/String;Lcom/airbnb/android/models/Listing;)V

    .line 808
    sput-boolean v5, Lcom/airbnb/android/activities/ManageListingActivity;->sDisableFragmentTransactions:Z

    .line 809
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 810
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v2

    invoke-interface {v2}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v5}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 812
    sput-boolean v4, Lcom/airbnb/android/activities/ManageListingActivity;->sDisableFragmentTransactions:Z

    .line 813
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-static {v2}, Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;->newInstance(Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/fragments/managelisting/EditLocationFragment;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/airbnb/android/activities/ManageListingActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    .line 818
    .end local v0    # "fm":Landroid/support/v4/app/FragmentManager;
    :goto_2a
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 819
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "lat"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string/jumbo v2, "lng"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    const-string/jumbo v2, "street"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getStreetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    const-string/jumbo v2, "apt"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getApartment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    const-string/jumbo v2, "city"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    const-string/jumbo v2, "state"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    const-string/jumbo v2, "zipcode"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getZipCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string/jumbo v2, "country_code"

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v2, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v2}, Lcom/airbnb/android/models/Listing;->isUserDefinedLocation()Z

    move-result v2

    if-nez v2, :cond_a1

    if-eqz p2, :cond_ab

    .line 828
    :cond_a1
    const-string/jumbo v2, "user_defined_location"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_ab
    new-instance v2, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;

    iget-object v3, p0, Lcom/airbnb/android/activities/ManageListingActivity;->mListing:Lcom/airbnb/android/models/Listing;

    invoke-virtual {v3}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/airbnb/android/activities/ManageListingActivity$6;

    invoke-direct {v4, p0}, Lcom/airbnb/android/activities/ManageListingActivity$6;-><init>(Lcom/airbnb/android/activities/ManageListingActivity;)V

    invoke-direct {v2, v3, v1, v4}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v2}, Lcom/airbnb/android/requests/ListingUpdateObjectRequest$ListingFieldsUpdateRequest;->execute()V

    .line 850
    return-void

    .line 815
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c3
    invoke-virtual {p0}, Lcom/airbnb/android/activities/ManageListingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto/16 :goto_2a
.end method
