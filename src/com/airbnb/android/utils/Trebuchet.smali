.class public Lcom/airbnb/android/utils/Trebuchet;
.super Ljava/lang/Object;
.source "Trebuchet.java"


# static fields
.field public static final KEY_AIRNAV_CALENDAR:Ljava/lang/String; = "airnav_calendar"

.field public static final KEY_ANDROID_ENABLED:Ljava/lang/String; = "android_enabled"

.field public static final KEY_ARRIVAL_ASSISTANT:Ljava/lang/String; = "arrival_tracker"

.field public static final KEY_COMPLETE_BOOKING_EXPIRY:Ljava/lang/String; = "mobile_complete_booking_expiry_relaunch"

.field public static final KEY_CTA_BOOK_NOW:Ljava/lang/String; = "mobile_cta_book_now_relaunch"

.field public static final KEY_CTA_CONTACT_HOST:Ljava/lang/String; = "mobile_cta_contact_host"

.field public static final KEY_CTA_REQUEST_TO_BOOK:Ljava/lang/String; = "mobile_cta_request_to_book_relaunch"

.field public static final KEY_DISABLE_APP:Ljava/lang/String; = "disable_android"

.field public static final KEY_DISCOVER:Ljava/lang/String; = "discover"

.field public static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field public static final KEY_ENABLED_WITHOUT_RESERVATION:Ljava/lang/String; = "enabled_without_reservation"

.field public static final KEY_GOOGLE:Ljava/lang/String; = "google"

.field public static final KEY_GOOGLE_PLUS_ENABLE:Ljava/lang/String; = "plus_login_enabled"

.field public static final KEY_GROUPS:Ljava/lang/String; = "groups"

.field public static final KEY_GUEST:Ljava/lang/String; = "guest"

.field public static final KEY_INSTANT_BOOK_FILTER:Ljava/lang/String; = "instant_book_filter_relaunch"

.field public static final KEY_LAST_MINUTE_BOOKINGS:Ljava/lang/String; = "last_minute_bookings"

.field public static final KEY_LOCAL_COMPANION:Ljava/lang/String; = "local_companion"

.field public static final KEY_P3_RECOMMENDATIONS:Ljava/lang/String; = "mobile_p3_recommended_listings_relaunch"

.field public static final KEY_RECOMMENDATIONS:Ljava/lang/String; = "mobile_recommended_listings_relaunch"

.field public static final KEY_SANITY_TEST_TRACKING:Ljava/lang/String; = "mobile_dummy_experiment"

.field public static final KEY_SEARCH_FILTERS:Ljava/lang/String; = "search_filters"

.field public static final KEY_TRIP_CHARGES:Ljava/lang/String; = "trip_charges"

.field public static final MOBILE_EXPERIMENT_EVENT:Ljava/lang/String; = "mobile_experiment"

.field public static final TREBUCHET_PREFIX:Ljava/lang/String; = "TREBUCHET"

.field private static mLoggedExperiments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/airbnb/android/utils/Trebuchet;->mLoggedExperiments:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "outerKey"    # Ljava/lang/String;
    .param p1, "innerKey"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TREBUCHET_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static clearLoggedExperiments()V
    .registers 1

    .prologue
    .line 192
    sget-object v0, Lcom/airbnb/android/utils/Trebuchet;->mLoggedExperiments:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 193
    return-void
.end method

.method public static final isBeta()Z
    .registers 3

    .prologue
    .line 72
    const-string/jumbo v0, "mobile_beta"

    const-string/jumbo v1, "android_beta_user"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static launch(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6
    .param p0, "outerKey"    # Ljava/lang/String;
    .param p1, "innerKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 175
    const-string/jumbo v2, ""

    invoke-static {p0, p1, v2}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "trebuchet":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 183
    .end local p2    # "defaultValue":I
    :goto_d
    return p2

    .line 181
    .restart local p2    # "defaultValue":I
    :cond_e
    :try_start_e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_11} :catch_13

    move-result p2

    goto :goto_d

    .line 182
    :catch_13
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_d
.end method

.method public static launch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "outerKey"    # Ljava/lang/String;
    .param p1, "innerKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static launch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .param p0, "outerKey"    # Ljava/lang/String;
    .param p1, "innerKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "logUniqueInvocation"    # Z

    .prologue
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/airbnb/android/AirbnbApplication;->saveLaunchedExperiment(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 108
    .local v3, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-static {p0, p1}, Lcom/airbnb/android/utils/Trebuchet;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "keyTrebuchetPrefix":Ljava/lang/String;
    invoke-interface {v3, v2, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "value":Ljava/lang/String;
    if-nez p3, :cond_39

    sget-object v5, Lcom/airbnb/android/utils/Trebuchet;->mLoggedExperiments:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 115
    :cond_39
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 116
    .local v0, "inExperiment":Z
    sget-object v5, Lcom/airbnb/android/utils/Trebuchet;->mLoggedExperiments:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const-string/jumbo v6, "mobile_experiment"

    const/4 v7, 0x0

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    const-string/jumbo v8, "experiment_key"

    invoke-virtual {v5, v8, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v8

    const-string/jumbo v9, "experiment_value"

    if-eqz v0, :cond_5f

    move-object v5, v4

    :goto_57
    invoke-virtual {v8, v9, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 120
    .end local v0    # "inExperiment":Z
    :cond_5e
    return-object v4

    .line 117
    .restart local v0    # "inExperiment":Z
    :cond_5f
    const-string/jumbo v5, "not_in_experiment"

    goto :goto_57
.end method

.method public static launch(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "outerKey"    # Ljava/lang/String;
    .param p1, "innerKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 158
    const-string/jumbo v1, ""

    invoke-static {p0, p1, v1}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "trebuchet":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .end local p2    # "defaultValue":Z
    :goto_d
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_e
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_d
.end method

.method public static launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "outerKey"    # Ljava/lang/String;
    .param p1, "innerKey"    # Ljava/lang/String;
    .param p2, "treatmentOnValue"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/airbnb/android/utils/Trebuchet;->launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static launchGuestExperiment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6
    .param p0, "outerKey"    # Ljava/lang/String;
    .param p1, "innerKey"    # Ljava/lang/String;
    .param p2, "treatmentOnValue"    # Ljava/lang/String;
    .param p3, "logUniqueInvocation"    # Z

    .prologue
    .line 142
    const-string/jumbo v1, ""

    invoke-static {p0, p1, v1, p3}, Lcom/airbnb/android/utils/Trebuchet;->launch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "trebuchet":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    :goto_e
    return v1

    :cond_f
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_e
.end method
