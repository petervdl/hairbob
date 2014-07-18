.class public Lcom/airbnb/android/utils/SharedPrefsHelper;
.super Ljava/lang/Object;
.source "SharedPrefsHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/airbnb/android/utils/SharedPrefsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/SharedPrefsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static acceptArrivalAssistantTerms(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 125
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 126
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "arrival_assistant_terms"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    return-void
.end method

.method public static getCannedMessages(Landroid/content/Context;Z)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forHost"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    if-eqz p1, :cond_30

    const-string/jumbo v5, "canned_messages_host"

    .line 239
    .local v5, "prefsKey":Ljava/lang/String;
    :goto_5
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v6

    invoke-virtual {v6}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "cannedMessagesValue":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "cannedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3d

    .line 245
    :try_start_19
    new-instance v6, Lorg/json/JSONArray;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 246
    .local v4, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_3d

    .line 247
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_2d} :catch_34

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 238
    .end local v0    # "cannedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "cannedMessagesValue":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "prefsKey":Ljava/lang/String;
    :cond_30
    const-string/jumbo v5, "canned_messages_guest"

    goto :goto_5

    .line 250
    .restart local v0    # "cannedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "cannedMessagesValue":Ljava/lang/String;
    .restart local v5    # "prefsKey":Ljava/lang/String;
    :catch_34
    move-exception v2

    .line 251
    .local v2, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/airbnb/android/utils/SharedPrefsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to retrieve canned messages: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_3d
    return-object v0
.end method

.method public static getLastInquiryMsg(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 212
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "msg_last_inquiry"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 214
    const-string/jumbo v4, "msg_last_inquiry_timestamp"

    const-wide/16 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/32 v6, 0x48190800

    add-long v2, v4, v6

    .line 215
    .local v2, "savedDatePlusTwoWeeks":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2d

    .line 217
    const/4 v0, 0x0

    .line 220
    .end local v2    # "savedDatePlusTwoWeeks":J
    :cond_2d
    return-object v0
.end method

.method public static getSignInServiceType(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "sign_in_svc"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static hasSwipedToMapAndPhoto(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 183
    const-string/jumbo v4, "fux"

    invoke-static {v4}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 189
    :cond_a
    :goto_a
    return v3

    .line 186
    :cond_b
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 187
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "listing_swiped_to_map"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 188
    .local v1, "seenMap":Z
    const-string/jumbo v4, "listing_swiped_to_next_photo"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 189
    .local v2, "seenPhoto":Z
    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    const/4 v3, 0x1

    goto :goto_a
.end method

.method public static markCompanionOnboardingAsSeen(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const v2, 0x7f0e0391

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string/jumbo v2, "lc_sf_onboarding"

    :goto_1c
    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    return-void

    .line 138
    :cond_24
    const-string/jumbo v2, "lc_tokyo_onboarding"

    goto :goto_1c
.end method

.method private static markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ftueKey"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 158
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 159
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    return-void
.end method

.method public static markHHFtueAsSeen(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const-string/jumbo v0, "host_home_fux"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static markHasSeenAirnavArrow(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-string/jumbo v0, "airnav_arrow"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static markHasSeenAppIntroFtue(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string/jumbo v0, "app_intro_ftue"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static markHasSeenDiscoverEnableLmb(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-string/jumbo v0, "discover_enable_lmb_ftue"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static markHasSeenDiscoverFtue(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-string/jumbo v0, "discover"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static markHasSeenGroupsFtue(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    const-string/jumbo v0, "groups_fux"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static markHasSeenHostResponseFtue(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-string/jumbo v0, "host_response_ftue"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static markHasSeenLmbResultsEducation(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string/jumbo v0, "lmb_results_education"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static markHasSeenROTabBarButtonBounce(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const-string/jumbo v0, "ro_btn_bounce"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static markHospitalityFtueAsSeen(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string/jumbo v0, "hospitality_fux"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static markInstantBookFtueAsSeen(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    const-string/jumbo v0, "instant_book_ftue"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static markMLCalendarFtueAsSeen(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const-string/jumbo v0, "ml_calendar_ftux"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->markFtueAsSeen(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static markSwipedToMap()V
    .registers 5

    .prologue
    .line 196
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 197
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "listing_swiped_to_map"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    return-void
.end method

.method public static markSwipedToNextPhoto()V
    .registers 5

    .prologue
    .line 205
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 206
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "listing_swiped_to_next_photo"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 207
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void
.end method

.method public static resetCompanionOnboarding(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "lc_sf_onboarding"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 146
    const-string/jumbo v2, "lc_tokyo_onboarding"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 148
    return-void
.end method

.method public static saveCannedMessages(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "forHost"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "cannedMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    instance-of v3, v2, Lorg/json/JSONArray;

    if-nez v3, :cond_26

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "cannedMessagesAsStr":Ljava/lang/String;
    :goto_d
    if-eqz p2, :cond_2d

    const-string/jumbo v1, "canned_messages_host"

    .line 234
    .local v1, "prefsKey":Ljava/lang/String;
    :goto_12
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 235
    return-void

    .line 232
    .end local v0    # "cannedMessagesAsStr":Ljava/lang/String;
    .end local v1    # "prefsKey":Ljava/lang/String;
    :cond_26
    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 233
    .restart local v0    # "cannedMessagesAsStr":Ljava/lang/String;
    :cond_2d
    const-string/jumbo v1, "canned_messages_guest"

    goto :goto_12
.end method

.method public static saveLastInquiryMsg(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inquiryMsg"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "msg_last_inquiry"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "msg_last_inquiry_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 228
    return-void
.end method

.method public static saveSignInServiceType(I)V
    .registers 5
    .param p0, "svcType"    # I

    .prologue
    .line 172
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 173
    .local v1, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "sign_in_svc"

    invoke-interface {v2, v3, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 174
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void
.end method

.method public static shouldSeeAirnavArrow(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const-string/jumbo v0, "airnav_arrow"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeAppIntroFtue(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const-string/jumbo v0, "app_intro_ftue"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeArrivalAssistantTerms(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "arrival_assistant_terms"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static shouldSeeCompanionOnboarding(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "market"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 132
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const v1, 0x7f0e0391

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "lc_sf_onboarding"

    :goto_19
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x1

    :goto_20
    return v1

    :cond_21
    const-string/jumbo v1, "lc_tokyo_onboarding"

    goto :goto_19

    :cond_25
    move v1, v2

    goto :goto_20
.end method

.method public static shouldSeeDiscoverEnableLmb(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const-string/jumbo v0, "discover_enable_lmb_ftue"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeDiscoverFtue(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string/jumbo v0, "discover"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ftueKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 153
    .local v1, "seen":Z
    if-eqz v1, :cond_18

    const-string/jumbo v3, "fux"

    invoke-static {v3}, Lcom/airbnb/android/utils/BuildHelper;->optEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    const/4 v2, 0x1

    :cond_19
    return v2
.end method

.method public static shouldSeeGroupsFtue(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const-string/jumbo v0, "groups_fux"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeHHFtue(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string/jumbo v0, "host_home_fux"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeHospitalityFtue(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-string/jumbo v0, "hospitality_fux"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeHostResponseFtue(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    const-string/jumbo v0, "host_response_ftue"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeInstantBookFtue(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const-string/jumbo v0, "instant_book_ftue"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeLmbResultsEducation(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string/jumbo v0, "lmb_results_education"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeMLCalendarFtue(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const-string/jumbo v0, "ml_calendar_ftux"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldSeeROTabBarButtonBounce(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-string/jumbo v0, "ro_btn_bounce"

    invoke-static {p0, v0}, Lcom/airbnb/android/utils/SharedPrefsHelper;->shouldSeeFtue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
