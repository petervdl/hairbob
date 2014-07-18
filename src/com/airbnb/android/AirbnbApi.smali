.class public Lcom/airbnb/android/AirbnbApi;
.super Ljava/lang/Object;
.source "AirbnbApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/AirbnbApi$4;,
        Lcom/airbnb/android/AirbnbApi$AirbnbApiPaymentStatusListener;
    }
.end annotation


# static fields
.field static final ACCESS_TOKEN_KEY:Ljava/lang/String; = "access_token"

.field public static AIRBNB_BRAINTREE_CLIENT_KEY:Ljava/lang/String; = null

.field static final CLIENT_ID:Ljava/lang/String; = "3092nxybyb0otqw18e8nh5nty"

.field public static final CUSTOM_ERROR_MESSAGE:Ljava/lang/String; = "custom_error_message"

.field public static final ERROR_MESSAGE:Ljava/lang/String; = "error_message"

.field public static final INVALID_KEY_ERROR_MESSAGE:Ljava/lang/String; = "invalid_key"

.field static final JSON_NEW_USER_KEY:Ljava/lang/String; = "json_new_user"

.field private static final KEY_SAVED_USER_BIRTHDATE:Ljava/lang/String; = "saved_dob"

.field private static final KEY_SAVED_USER_CREATED_AT:Ljava/lang/String; = "saved_user_created_at"

.field private static final KEY_SAVED_USER_FIRST_NAME:Ljava/lang/String; = "saved_first_name"

.field private static final KEY_SAVED_USER_HAS_PROFILE_PIC:Ljava/lang/String; = "saved_has_profile_pic"

.field private static final KEY_SAVED_USER_ID:Ljava/lang/String; = "saved_user_id"

.field private static final KEY_SAVED_USER_LAST_NAME:Ljava/lang/String; = "saved_last_name"

.field private static final KEY_SAVED_USER_LISTINGS_COUNT:Ljava/lang/String; = "saved_listings_count"

.field private static final KEY_SAVED_USER_PICTURE_URL:Ljava/lang/String; = "saved_picture_url"

.field private static final KEY_SAVED_USER_PICTURE_URL_LARGE:Ljava/lang/String; = "saved_picture_url_large"

.field private static final KEY_SAVED_USER_TOTAL_LISTINGS_COUNT:Ljava/lang/String; = "saved_total_listings_count"

.field private static final KEY_SAVED_USER_VERIFICATIONS:Ljava/lang/String; = "verifications"

.field private static final PREF_DEBUG_API_ENDPOINT_URL:Ljava/lang/String; = "saved_endpoint_url"

.field private static final PROD_API_URL:Ljava/lang/String; = "https://api.airbnb.com/"

.field static final TAG:Ljava/lang/String; = "AirbnbApi"

.field static final UPCOMING_TRIPS_KEY:Ljava/lang/String; = "upcoming_trips"

.field static final USER_JSON_KEY:Ljava/lang/String; = "user_json"

.field static androidID:Ljava/lang/String;

.field static instance:Lcom/airbnb/android/AirbnbApi;

.field public static sRequestTimingLogger:Lcom/android/volley/RequestQueue$VolleyTimingLogger;

.field static userAgent:Ljava/lang/String;


# instance fields
.field public API_ENDPOINT_URL:Ljava/lang/String;

.field accessToken:Ljava/lang/String;

.field context:Landroid/content/Context;

.field currentUser:Lcom/airbnb/android/models/User;

.field private mBadges:Lcom/airbnb/android/models/BadgeCount;

.field private mHasUpcomingTrips:Z

.field private final mListingToWishListMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mWishLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Collection;",
            ">;"
        }
    .end annotation
.end field

.field objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final volleyQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    new-instance v0, Lcom/airbnb/android/AirbnbApi$1;

    invoke-direct {v0}, Lcom/airbnb/android/AirbnbApi$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/AirbnbApi;->sRequestTimingLogger:Lcom/android/volley/RequestQueue$VolleyTimingLogger;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    .line 188
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApi;->context:Landroid/content/Context;

    .line 189
    const-string/jumbo v0, "airbnb_prefs"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    .line 190
    iput-boolean v1, p0, Lcom/airbnb/android/AirbnbApi;->mHasUpcomingTrips:Z

    .line 191
    invoke-static {p1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->volleyQueue:Lcom/android/volley/RequestQueue;

    .line 192
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->volleyQueue:Lcom/android/volley/RequestQueue;

    sget-object v1, Lcom/airbnb/android/AirbnbApi;->sRequestTimingLogger:Lcom/android/volley/RequestQueue$VolleyTimingLogger;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->setTimingLogger(Lcom/android/volley/RequestQueue$VolleyTimingLogger;)V

    .line 194
    new-instance v0, Lcom/airbnb/android/models/BadgeCount;

    invoke-direct {v0}, Lcom/airbnb/android/models/BadgeCount;-><init>()V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/AirbnbApi;->setBadges(Lcom/airbnb/android/models/BadgeCount;)V

    .line 196
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->initializeUserFromPrefs()V

    .line 198
    const-string/jumbo v0, "dev_server"

    invoke-static {v0}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 199
    const-string/jumbo v0, "http://api.localhost.airbnb.com/"

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    .line 216
    :goto_3e
    invoke-direct {p0}, Lcom/airbnb/android/AirbnbApi;->updateBraintreeKey()V

    .line 217
    return-void

    .line 200
    :cond_42
    const-string/jumbo v0, "dev_ec2"

    invoke-static {v0}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 201
    const-string/jumbo v0, "http://ec2mobile.dyndns.org/"

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    goto :goto_3e

    .line 202
    :cond_51
    const-string/jumbo v0, "dev_ec2asia"

    invoke-static {v0}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 203
    const-string/jumbo v0, "http://ec2asia.dyndns.org/"

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    goto :goto_3e

    .line 204
    :cond_60
    const-string/jumbo v0, "dev_ec2home"

    invoke-static {v0}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 205
    const-string/jumbo v0, "http://ec2home.dyndns.org/"

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    goto :goto_3e

    .line 206
    :cond_6f
    const-string/jumbo v0, "dev_ec2magical"

    invoke-static {v0}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 207
    const-string/jumbo v0, "http://ec2magical.dyndns.org/"

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    goto :goto_3e

    .line 208
    :cond_7e
    const-string/jumbo v0, "dev_ec2brand"

    invoke-static {v0}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 209
    const-string/jumbo v0, "http://ec2brand.dyndns.org/"

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    goto :goto_3e

    .line 210
    :cond_8d
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v0

    if-nez v0, :cond_a4

    .line 211
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "saved_endpoint_url"

    const-string/jumbo v2, "https://api.airbnb.com/"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    goto :goto_3e

    .line 213
    :cond_a4
    const-string/jumbo v0, "https://api.airbnb.com/"

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    goto :goto_3e
.end method

.method static synthetic access$000(Lcom/airbnb/android/AirbnbApi;)Landroid/content/SharedPreferences;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/AirbnbApi;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static buildExternalUrl(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Ljava/lang/String;
    .registers 7
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "props"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 647
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 648
    .local v0, "builder":Landroid/net/Uri$Builder;
    if-eqz p1, :cond_36

    .line 649
    invoke-virtual {p1}, Lcom/airbnb/android/utils/Strap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 650
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_12

    .line 653
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_36
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private clearNotificationPrefs()V
    .registers 7

    .prologue
    .line 332
    iget-object v4, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "host_reservation"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 334
    const-string/jumbo v4, "guest_reservation"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 335
    const-string/jumbo v4, "messaging"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    const-string/jumbo v4, "android_gcm_enabled"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 341
    iget-object v4, p0, Lcom/airbnb/android/AirbnbApi;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/airbnb/android/utils/GCMHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;

    move-result-object v1

    .line 342
    .local v1, "gcmHelper":Lcom/airbnb/android/utils/GCMHelper;
    invoke-virtual {v1}, Lcom/airbnb/android/utils/GCMHelper;->getCachedRegistrationId()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "regId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 344
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 345
    .local v2, "props":Ljava/util/Properties;
    const-string/jumbo v4, "devices[android_gcm][enabled]"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string/jumbo v4, "devices[android_gcm][token]"

    invoke-virtual {v2, v4, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v4, Lcom/airbnb/android/requests/PostAccountNotificationsRequest;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/airbnb/android/requests/PostAccountNotificationsRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v4}, Lcom/airbnb/android/requests/PostAccountNotificationsRequest;->execute()V

    .line 351
    invoke-virtual {v1}, Lcom/airbnb/android/utils/GCMHelper;->deleteRegistrationId()V

    .line 353
    .end local v2    # "props":Ljava/util/Properties;
    :cond_53
    return-void
.end method

.method public static devEndpointEnabled()Z
    .registers 2

    .prologue
    .line 745
    const-string/jumbo v0, "https://api.airbnb.com/"

    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getEndpointUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static getInstance()Lcom/airbnb/android/AirbnbApi;
    .registers 1

    .prologue
    .line 171
    sget-object v0, Lcom/airbnb/android/AirbnbApi;->instance:Lcom/airbnb/android/AirbnbApi;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    sget-object v1, Lcom/airbnb/android/AirbnbApi;->instance:Lcom/airbnb/android/AirbnbApi;

    if-nez v1, :cond_94

    .line 147
    new-instance v1, Lcom/airbnb/android/AirbnbApi;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/airbnb/android/AirbnbApi;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/airbnb/android/AirbnbApi;->instance:Lcom/airbnb/android/AirbnbApi;

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airbnb/android/AirbnbApi;->androidID:Ljava/lang/String;

    .line 149
    invoke-static {p0}, Lcom/airbnb/android/utils/MiscUtils;->getTelephonyOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "telephonyOperator":Ljava/lang/String;
    :try_start_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Airbnb/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Android/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Device/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Carrier/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v0, "None"

    .end local v0    # "telephonyOperator":Ljava/lang/String;
    :cond_76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Type/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/airbnb/android/utils/MiscUtils;->isTabletScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_97

    const-string/jumbo v1, "Tablet"

    :goto_8a
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/airbnb/android/AirbnbApi;->userAgent:Ljava/lang/String;
    :try_end_94
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_94} :catch_9b

    .line 164
    :cond_94
    :goto_94
    sget-object v1, Lcom/airbnb/android/AirbnbApi;->instance:Lcom/airbnb/android/AirbnbApi;

    return-object v1

    .line 154
    :cond_97
    :try_start_97
    const-string/jumbo v1, "Mobile"
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_9a} :catch_9b

    goto :goto_8a

    .line 160
    :catch_9b
    move-exception v1

    goto :goto_94
.end method

.method private updateBraintreeKey()V
    .registers 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    const-string/jumbo v1, "https://api.airbnb.com/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "MIIBCgKCAQEA+NDlBk1f9UfSKqioFC3TETjkPjF5GmAL23DuvmArk81V/ilw+FSuX5BkFvT67Vj6QHE6U94DQbhlkGgyD9PMx2zJtu2aRB4EokoKFahV1AA7/chERGU+y5pDJIBQv/F8NbLvaOQbYGvDoYmQJ3VW9ORqd1Qr5V27PAjuPUoU14XX85aJX5VApIM5o7lxwJK29J5fuHOutiQtD+FGB1ys6JlumX/YOKLdl8Ldw3hfvdjxDlUCqjLbPsLdKi+sQ8MAZKa9MlQpwa+5Gf8yBgtR9vp0pCb+i26sImV7oNL6X3eEFjaa6AcInwmQ9Sb6Grah5HUVZOfwGByRYcWotFMhsQIDAQAB"

    :goto_e
    sput-object v0, Lcom/airbnb/android/AirbnbApi;->AIRBNB_BRAINTREE_CLIENT_KEY:Ljava/lang/String;

    .line 224
    return-void

    .line 220
    :cond_11
    const-string/jumbo v0, "MIIBCgKCAQEAzbPJ+wmXwRC0ITChZPnk67XIund99xrn3+TtbjxsFT3SFJAapb/JKjt6nCtGnkgUaA3lWlFp8QHRRhOYmX8SC/RalCJW3uSLQdXZWfZxMPtGqzlbJzAX92htUnnTzGw1LH23eUN9UWzqkga6TuU5R2RlPbQPGLnN+iYMjE60xb01Ozi2yoCpsNaoe9Wz8xYi3MFPVoURerKA8iCt66kKL51ydRxSNThjvz4+0qgiBlbKtMMKokUh9sPdXj4+012tpm6VFvgmvuHkc8ZYlE9EvdfHNeza2SS2W4NForFai0pvBh+dZozqYa1nHSfjuSmgasX4L60SYAUVQXqOD9IyCQIDAQAB"

    goto :goto_e
.end method


# virtual methods
.method public addListingToWishLists(JJ)V
    .registers 9
    .param p1, "listingId"    # J
    .param p3, "wishlistId"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 528
    cmp-long v1, p1, v2

    if-lez v1, :cond_2d

    cmp-long v1, p3, v2

    if-lez v1, :cond_2d

    .line 529
    iget-object v1, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 530
    .local v0, "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v0, :cond_1d

    .line 531
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 533
    .restart local v0    # "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1d
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v1, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .end local v0    # "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2d
    return-void
.end method

.method public addListingToWishLists(Lcom/airbnb/android/models/Listing;)V
    .registers 10
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 515
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_37

    .line 516
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    .line 517
    .local v1, "listingId":J
    iget-object v4, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 518
    .local v3, "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez v3, :cond_23

    .line 519
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 521
    .restart local v3    # "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_23
    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getCollectionIds()[J

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/PrimitiveArrayHelper;->toLongList([J)Ljava/util/List;

    move-result-object v0

    .line 522
    .local v0, "collectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 523
    iget-object v4, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .end local v0    # "collectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "listingId":J
    .end local v3    # "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_37
    return-void
.end method

.method public adjustBadgeCount(Lcom/airbnb/android/models/BadgeCount$BadgeType;I)V
    .registers 7
    .param p1, "type"    # Lcom/airbnb/android/models/BadgeCount$BadgeType;
    .param p2, "amount"    # I

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getBadgeCount()Lcom/airbnb/android/models/BadgeCount;

    move-result-object v0

    .line 708
    .local v0, "badges":Lcom/airbnb/android/models/BadgeCount;
    const/4 v1, 0x0

    .line 710
    .local v1, "fetchUnread":Z
    sget-object v2, Lcom/airbnb/android/AirbnbApi$4;->$SwitchMap$com$airbnb$android$models$BadgeCount$BadgeType:[I

    invoke-virtual {p1}, Lcom/airbnb/android/models/BadgeCount$BadgeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4e

    .line 733
    :cond_10
    :goto_10
    if-eqz v1, :cond_1a

    .line 734
    new-instance v2, Lcom/airbnb/android/requests/UnreadBadgesRequest;

    invoke-direct {v2}, Lcom/airbnb/android/requests/UnreadBadgesRequest;-><init>()V

    invoke-virtual {v2}, Lcom/airbnb/android/requests/UnreadBadgesRequest;->execute()V

    .line 737
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/airbnb/android/AirbnbApi;->setBadges(Lcom/airbnb/android/models/BadgeCount;)V

    .line 738
    return-void

    .line 712
    :pswitch_1e
    invoke-virtual {v0}, Lcom/airbnb/android/models/BadgeCount;->getHostGroups()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/BadgeCount;->setHostGroups(I)V

    .line 713
    invoke-virtual {v0}, Lcom/airbnb/android/models/BadgeCount;->getHostGroups()I

    move-result v2

    if-ltz v2, :cond_10

    .line 714
    const/4 v1, 0x1

    goto :goto_10

    .line 718
    :pswitch_2e
    invoke-virtual {v0}, Lcom/airbnb/android/models/BadgeCount;->getHostHome()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/BadgeCount;->setHostHome(I)V

    .line 719
    invoke-virtual {v0}, Lcom/airbnb/android/models/BadgeCount;->getHostHome()I

    move-result v2

    if-ltz v2, :cond_10

    .line 720
    const/4 v1, 0x1

    goto :goto_10

    .line 724
    :pswitch_3e
    invoke-virtual {v0}, Lcom/airbnb/android/models/BadgeCount;->getTravelInbox()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/models/BadgeCount;->setTravelInbox(I)V

    .line 725
    invoke-virtual {v0}, Lcom/airbnb/android/models/BadgeCount;->getTravelInbox()I

    move-result v2

    if-ltz v2, :cond_10

    .line 726
    const/4 v1, 0x1

    goto :goto_10

    .line 710
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_2e
        :pswitch_3e
    .end packed-switch
.end method

.method public buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 612
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->createBaseProperties()Ljava/util/Properties;

    move-result-object v4

    .line 613
    .local v4, "props":Ljava/util/Properties;
    if-eqz p3, :cond_22

    .line 614
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 615
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 616
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_e

    .line 617
    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 621
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getEndpointUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 622
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 623
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_4b

    .line 625
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_6b
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public buildUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .registers 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 629
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p4, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->createBaseProperties()Ljava/util/Properties;

    move-result-object v4

    .line 631
    .local v4, "props":Ljava/util/Properties;
    if-eqz p3, :cond_9

    .line 632
    invoke-virtual {v4, p3}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 635
    :cond_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getEndpointUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 636
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 637
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_32

    .line 640
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_52
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 641
    .local v3, "pair":Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_56

    .line 643
    .end local v3    # "pair":Lorg/apache/http/NameValuePair;
    :cond_6e
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public clearJsonUserPrefs()V
    .registers 3

    .prologue
    .line 472
    iget-object v1, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 473
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 474
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 475
    return-void
.end method

.method public createBaseProperties()Ljava/util/Properties;
    .registers 5

    .prologue
    .line 576
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 578
    .local v1, "props":Ljava/util/Properties;
    const-string/jumbo v2, "client_id"

    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 580
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_17

    .line 581
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 583
    :cond_17
    const-string/jumbo v2, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    const-string/jumbo v2, "currency"

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    return-object v1
.end method

.method public createBasePropertiesAsStrap()Lcom/airbnb/android/utils/Strap;
    .registers 6

    .prologue
    .line 594
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 595
    .local v0, "locale":Ljava/util/Locale;
    if-nez v0, :cond_8

    .line 596
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 598
    :cond_8
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "client_id"

    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "locale"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "currency"

    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/utils/CurrencyHelper;->getLocalCurrencyString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 603
    .local v1, "strap":Lcom/airbnb/android/utils/Strap;
    return-object v1
.end method

.method public decrementBadge(Lcom/airbnb/android/models/BadgeCount$BadgeType;)V
    .registers 3
    .param p1, "type"    # Lcom/airbnb/android/models/BadgeCount$BadgeType;

    .prologue
    .line 741
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/android/AirbnbApi;->adjustBadgeCount(Lcom/airbnb/android/models/BadgeCount$BadgeType;I)V

    .line 742
    return-void
.end method

.method public enablePushNotifications()V
    .registers 4

    .prologue
    .line 231
    iget-object v1, p0, Lcom/airbnb/android/AirbnbApi;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/airbnb/android/utils/GCMHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/utils/GCMHelper;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 232
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 233
    .local v0, "props":Ljava/util/Properties;
    const-string/jumbo v1, "devices[android_gcm][enabled]"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string/jumbo v1, "devices[android_gcm][token]"

    iget-object v2, p0, Lcom/airbnb/android/AirbnbApi;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/airbnb/android/utils/GCMHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/utils/GCMHelper;->getRegistrationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v1, Lcom/airbnb/android/requests/PostAccountNotificationsRequest;

    new-instance v2, Lcom/airbnb/android/AirbnbApi$2;

    invoke-direct {v2, p0}, Lcom/airbnb/android/AirbnbApi$2;-><init>(Lcom/airbnb/android/AirbnbApi;)V

    invoke-direct {v1, v0, v2}, Lcom/airbnb/android/requests/PostAccountNotificationsRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v1}, Lcom/airbnb/android/requests/PostAccountNotificationsRequest;->execute()V

    .line 253
    .end local v0    # "props":Ljava/util/Properties;
    :goto_3d
    return-void

    .line 251
    :cond_3e
    iget-object v1, p0, Lcom/airbnb/android/AirbnbApi;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/airbnb/android/utils/GCMHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/utils/GCMHelper;->setupGCM()V

    goto :goto_3d
.end method

.method public fetchWishLists(Lcom/airbnb/android/requests/RequestListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/MyWishListsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/MyWishListsRequest;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v0

    .line 479
    .local v0, "currUser":Lcom/airbnb/android/models/User;
    if-eqz v0, :cond_1c

    .line 480
    new-instance v1, Lcom/airbnb/android/requests/MyWishListsRequest;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/airbnb/android/AirbnbApi$3;

    invoke-direct {v4, p0, p1}, Lcom/airbnb/android/AirbnbApi$3;-><init>(Lcom/airbnb/android/AirbnbApi;Lcom/airbnb/android/requests/RequestListener;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/airbnb/android/requests/MyWishListsRequest;-><init>(Ljava/lang/String;ILcom/airbnb/android/requests/RequestListener;)V

    .line 498
    .local v1, "request":Lcom/airbnb/android/requests/MyWishListsRequest;
    invoke-virtual {v1}, Lcom/airbnb/android/requests/MyWishListsRequest;->execute()V

    .line 500
    .end local v1    # "request":Lcom/airbnb/android/requests/MyWishListsRequest;
    :cond_1c
    return-void
.end method

.method public formatDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 608
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->accessToken:Ljava/lang/String;

    if-nez v0, :cond_10

    .line 298
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "access_token"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->accessToken:Ljava/lang/String;

    .line 300
    :cond_10
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAddedToWishListIds(Lcom/airbnb/android/models/Listing;)Ljava/util/Set;
    .registers 6
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/models/Listing;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 569
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 570
    :cond_c
    const/4 v0, 0x0

    .line 572
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_d
.end method

.method public getAndroidId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 657
    sget-object v0, Lcom/airbnb/android/AirbnbApi;->androidID:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeCount()Lcom/airbnb/android/models/BadgeCount;
    .registers 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->mBadges:Lcom/airbnb/android/models/BadgeCount;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 378
    const-string/jumbo v0, "3092nxybyb0otqw18e8nh5nty"

    return-object v0
.end method

.method public getCurrentUser()Lcom/airbnb/android/models/User;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->currentUser:Lcom/airbnb/android/models/User;

    return-object v0
.end method

.method public getEndpointUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    return-object v0
.end method

.method public getGlobalSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 678
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->context:Landroid/content/Context;

    const-string/jumbo v1, "airbnb_global_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .registers 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    if-nez v0, :cond_22

    .line 361
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 362
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_UNKNOWN_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 363
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 364
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 366
    :cond_22
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->objectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    return-object v0
.end method

.method public getRequestQueue()Lcom/android/volley/RequestQueue;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->volleyQueue:Lcom/android/volley/RequestQueue;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 661
    sget-object v0, Lcom/airbnb/android/AirbnbApi;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getWishLists()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Collection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->mWishLists:Ljava/util/List;

    return-object v0
.end method

.method public hasAccessToken()Z
    .registers 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasCurrentUser()Z
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->currentUser:Lcom/airbnb/android/models/User;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasUpcomingTrips()Z
    .registers 4

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/airbnb/android/AirbnbApi;->mHasUpcomingTrips:Z

    if-nez v0, :cond_12

    .line 690
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "upcoming_trips"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/AirbnbApi;->mHasUpcomingTrips:Z

    .line 693
    :cond_12
    iget-boolean v0, p0, Lcom/airbnb/android/AirbnbApi;->mHasUpcomingTrips:Z

    return v0
.end method

.method public initializeUserFromPrefs()V
    .registers 16

    .prologue
    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    const/4 v11, 0x0

    .line 405
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->hasAccessToken()Z

    move-result v7

    if-eqz v7, :cond_c5

    .line 406
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "json_new_user"

    const-string/jumbo v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 408
    .local v6, "userString":Ljava/lang/String;
    new-instance v4, Lcom/airbnb/android/models/User;

    invoke-direct {v4}, Lcom/airbnb/android/models/User;-><init>()V

    .line 409
    .local v4, "user":Lcom/airbnb/android/models/User;
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "saved_user_id"

    const-wide/16 v9, -0x1

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/airbnb/android/models/User;->setId(J)V

    .line 411
    invoke-virtual {v4}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-lez v7, :cond_c6

    .line 412
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "saved_first_name"

    const-string/jumbo v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setFirstName(Ljava/lang/String;)V

    .line 413
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "saved_last_name"

    const-string/jumbo v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setLastName(Ljava/lang/String;)V

    .line 414
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "saved_picture_url"

    invoke-interface {v7, v8, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setPictureUrl(Ljava/lang/String;)V

    .line 415
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "saved_picture_url_large"

    invoke-interface {v7, v8, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setPictureUrlLarge(Ljava/lang/String;)V

    .line 416
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "saved_has_profile_pic"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setHasProfilePic(Z)V

    .line 417
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "saved_total_listings_count"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setTotalListingsCount(I)V

    .line 418
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "saved_listings_count"

    invoke-interface {v7, v8, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setListingsCount(I)V

    .line 419
    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "saved_dob"

    invoke-interface {v8, v9, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setBirthdate(Ljava/util/Date;)V

    .line 420
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "saved_user_created_at"

    invoke-interface {v7, v8, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setCreatedAt(Ljava/lang/Long;)V

    .line 421
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "verifications"

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v7}, Lcom/airbnb/android/models/User;->setVerifications(Ljava/util/List;)V

    .line 423
    invoke-virtual {p0, v4, v11}, Lcom/airbnb/android/AirbnbApi;->setCurrentUser(Lcom/airbnb/android/models/User;Z)V

    .line 448
    .end local v4    # "user":Lcom/airbnb/android/models/User;
    .end local v6    # "userString":Ljava/lang/String;
    :cond_c5
    :goto_c5
    return-void

    .line 426
    .restart local v4    # "user":Lcom/airbnb/android/models/User;
    .restart local v6    # "userString":Ljava/lang/String;
    :cond_c6
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v2

    .line 429
    .local v2, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    :try_start_ca
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_107

    .line 430
    iget-object v7, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "user_json"

    const-string/jumbo v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "responseString":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_107

    .line 433
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 434
    .local v1, "jsonResponse":Lorg/json/JSONObject;
    const-string/jumbo v7, "user"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 435
    .local v5, "userJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_ff

    .line 436
    const-string/jumbo v7, "user"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 438
    :cond_ff
    instance-of v7, v5, Lorg/json/JSONObject;

    if-nez v7, :cond_134

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 442
    .end local v1    # "jsonResponse":Lorg/json/JSONObject;
    .end local v3    # "responseString":Ljava/lang/String;
    .end local v5    # "userJson":Lorg/json/JSONObject;
    :cond_107
    :goto_107
    const-class v7, Lcom/airbnb/android/models/User;

    invoke-virtual {v2, v6, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/android/models/User;

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/airbnb/android/AirbnbApi;->setCurrentUser(Lcom/airbnb/android/models/User;Z)V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_113} :catch_114

    goto :goto_c5

    .line 443
    :catch_114
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "AirbnbApi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 438
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "jsonResponse":Lorg/json/JSONObject;
    .restart local v3    # "responseString":Ljava/lang/String;
    .restart local v5    # "userJson":Lorg/json/JSONObject;
    :cond_134
    :try_start_134
    check-cast v5, Lorg/json/JSONObject;

    .end local v5    # "userJson":Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_139} :catch_114

    move-result-object v6

    goto :goto_107
.end method

.method public invalidateSession()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 311
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 312
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_b

    .line 313
    invoke-virtual {v1}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 315
    :cond_b
    invoke-direct {p0}, Lcom/airbnb/android/AirbnbApi;->clearNotificationPrefs()V

    .line 316
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->clearJsonUserPrefs()V

    .line 317
    iget-object v2, p0, Lcom/airbnb/android/AirbnbApi;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/volley/RequestQueue;->getCache()Lcom/android/volley/Cache;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/volley/Cache;->clear()V

    .line 319
    invoke-virtual {p0, v3}, Lcom/airbnb/android/AirbnbApi;->setAccessToken(Ljava/lang/String;)V

    .line 321
    iput-object v3, p0, Lcom/airbnb/android/AirbnbApi;->currentUser:Lcom/airbnb/android/models/User;

    .line 322
    iput-object v3, p0, Lcom/airbnb/android/AirbnbApi;->mWishLists:Ljava/util/List;

    .line 323
    iput-object v3, p0, Lcom/airbnb/android/AirbnbApi;->mBadges:Lcom/airbnb/android/models/BadgeCount;

    .line 324
    iput-boolean v4, p0, Lcom/airbnb/android/AirbnbApi;->mHasUpcomingTrips:Z

    .line 325
    iget-object v2, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 327
    new-instance v0, Lcom/airbnb/android/events/LoginStatusEvent;

    invoke-direct {v0, v4}, Lcom/airbnb/android/events/LoginStatusEvent;-><init>(Z)V

    .line 328
    .local v0, "event":Lcom/airbnb/android/events/LoginStatusEvent;
    sget-object v2, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    invoke-virtual {v2, v0}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 329
    return-void
.end method

.method public isCurrentUser(J)Z
    .registers 5
    .param p1, "userId"    # J

    .prologue
    .line 401
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->currentUser:Lcom/airbnb/android/models/User;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi;->currentUser:Lcom/airbnb/android/models/User;

    invoke-virtual {v0}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isCurrentUserAuthorized()Z
    .registers 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->hasAccessToken()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->hasCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isResponseSuccess(Ljava/lang/String;)Z
    .registers 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 257
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/airbnb/android/AirbnbApi;->isResponseSuccess(Lorg/json/JSONObject;)Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 266
    :goto_a
    return v2

    .line 258
    :catch_b
    move-exception v0

    .line 260
    .local v0, "e":Lorg/json/JSONException;
    :try_start_c
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_11} :catch_13

    .line 261
    const/4 v2, 0x1

    goto :goto_a

    .line 262
    :catch_13
    move-exception v1

    .line 263
    .local v1, "e2":Lorg/json/JSONException;
    const-string/jumbo v2, "AirbnbApi"

    const-string/jumbo v3, "The response was not json"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public isResponseSuccess(Lorg/json/JSONObject;)Z
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 270
    const-string/jumbo v0, "error_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 271
    const-string/jumbo v0, "AirbnbApi"

    const-string/jumbo v1, "isResponseSuccess failed; error_code is in the response"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public listingInWishList(Lcom/airbnb/android/models/Listing;)Z
    .registers 8
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const/4 v1, 0x0

    .line 561
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_e

    .line 565
    :cond_d
    :goto_d
    return v1

    .line 564
    :cond_e
    iget-object v2, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 565
    .local v0, "wishlistIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v1, 0x1

    goto :goto_d
.end method

.method public logout()V
    .registers 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->invalidateSession()V

    .line 357
    return-void
.end method

.method public objectMappingForClass(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .registers 4
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 374
    .local p2, "clazz":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public objectMappingForClass(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeListingFromWishLists(JJ)Z
    .registers 10
    .param p1, "listingId"    # J
    .param p3, "wishListId"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 546
    cmp-long v2, p1, v3

    if-lez v2, :cond_30

    cmp-long v2, p3, v3

    if-lez v2, :cond_30

    .line 547
    iget-object v2, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 548
    .local v1, "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz v1, :cond_30

    .line 549
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 550
    .local v0, "removed":Z
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_2f

    .line 552
    iget-object v2, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .end local v0    # "removed":Z
    .end local v1    # "wishListIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_2f
    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public removeListingFromWishLists(Lcom/airbnb/android/models/Listing;)Z
    .registers 7
    .param p1, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    const/4 v0, 0x0

    .line 539
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1e

    .line 540
    iget-object v1, p0, Lcom/airbnb/android/AirbnbApi;->mListingToWishListMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    .line 542
    :cond_1e
    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 4
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApi;->accessToken:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "access_token"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    return-void
.end method

.method public setBadges(Lcom/airbnb/android/models/BadgeCount;)V
    .registers 4
    .param p1, "badges"    # Lcom/airbnb/android/models/BadgeCount;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApi;->mBadges:Lcom/airbnb/android/models/BadgeCount;

    .line 698
    sget-object v0, Lcom/airbnb/android/events/AirbnbBus;->main:Lcom/airbnb/android/events/AirbnbBus;

    new-instance v1, Lcom/airbnb/android/events/BadgesChangedEvent;

    invoke-direct {v1}, Lcom/airbnb/android/events/BadgesChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/events/AirbnbBus;->post(Ljava/lang/Object;)V

    .line 699
    return-void
.end method

.method public setCurrentUser(Lcom/airbnb/android/models/User;Z)V
    .registers 3
    .param p1, "currentUser"    # Lcom/airbnb/android/models/User;
    .param p2, "update"    # Z

    .prologue
    .line 386
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApi;->currentUser:Lcom/airbnb/android/models/User;

    .line 387
    if-eqz p2, :cond_7

    .line 388
    invoke-virtual {p0, p1}, Lcom/airbnb/android/AirbnbApi;->setUserJsonPref(Lcom/airbnb/android/models/User;)V

    .line 390
    :cond_7
    return-void
.end method

.method public setEndpointUrl(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 282
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v0

    if-nez v0, :cond_23

    .line 283
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->invalidateSession()V

    .line 284
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    .line 285
    invoke-direct {p0}, Lcom/airbnb/android/AirbnbApi;->updateBraintreeKey()V

    .line 286
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "saved_endpoint_url"

    iget-object v2, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 290
    :goto_22
    return-void

    .line 288
    :cond_23
    const-string/jumbo v0, "https://api.airbnb.com/"

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApi;->API_ENDPOINT_URL:Ljava/lang/String;

    goto :goto_22
.end method

.method public setHasUpcomingTrips(Z)V
    .registers 4
    .param p1, "hasUpcomingTrips"    # Z

    .prologue
    .line 682
    iput-boolean p1, p0, Lcom/airbnb/android/AirbnbApi;->mHasUpcomingTrips:Z

    .line 683
    invoke-virtual {p0}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 684
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "upcoming_trips"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 686
    return-void
.end method

.method public setUserJsonPref(Lcom/airbnb/android/models/User;)V
    .registers 6
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 452
    iget-object v1, p0, Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 454
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "saved_user_id"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 455
    const-string/jumbo v1, "saved_first_name"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 456
    const-string/jumbo v1, "saved_last_name"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    const-string/jumbo v1, "saved_picture_url"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 458
    const-string/jumbo v1, "saved_picture_url_large"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getPictureUrlLarge()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 459
    const-string/jumbo v1, "saved_has_profile_pic"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 460
    const-string/jumbo v1, "saved_total_listings_count"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getTotalListingsCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 461
    const-string/jumbo v1, "saved_listings_count"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getListingsCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 462
    const-string/jumbo v3, "saved_dob"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getBirthdate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_97

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getBirthdate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :goto_67
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 463
    const-string/jumbo v1, "saved_user_created_at"

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 464
    const-string/jumbo v1, "verifications"

    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getVerifications()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 466
    const-string/jumbo v1, "json_new_user"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 467
    const-string/jumbo v1, "user_json"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 468
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 469
    return-void

    .line 462
    :cond_97
    const-wide/16 v1, -0x1

    goto :goto_67
.end method

.method public setWishLists(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Collection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "wishLists":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Collection;>;"
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApi;->mWishLists:Ljava/util/List;

    .line 508
    return-void
.end method

.method public toastError(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 175
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v1

    if-nez v1, :cond_48

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "VolleyDebug / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.volley.NoConnectionError"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 185
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_48
    :goto_48
    return-void

    .line 183
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_49
    iget-object v1, p0, Lcom/airbnb/android/AirbnbApi;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_48
.end method
