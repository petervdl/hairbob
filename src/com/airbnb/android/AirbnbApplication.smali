.class public Lcom/airbnb/android/AirbnbApplication;
.super Landroid/app/Application;
.source "AirbnbApplication.java"


# static fields
.field public static final CALENDAR_TYPE:Ljava/lang/String; = "calendar_type"

.field public static final SEARCH_CAME_FROM:Ljava/lang/String; = "search_came_from"

.field private static final TAG:Ljava/lang/String;

.field static instance:Lcom/airbnb/android/AirbnbApplication;

.field public static sCrashLog:Ljava/lang/String;

.field public static sImageLoader:Lcom/android/volley/toolbox/ImageLoader;


# instance fields
.field private mActiveExperiments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnalyticsRegistry:Lcom/airbnb/android/utils/Strap;

.field private mCountry:Ljava/lang/String;

.field private mSearchInfo:Lcom/airbnb/android/models/SearchInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/airbnb/android/AirbnbApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/AirbnbApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/AirbnbApplication;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/AirbnbApplication;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApplication;->mCountry:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/airbnb/android/AirbnbApplication;
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/airbnb/android/AirbnbApplication;->instance:Lcom/airbnb/android/AirbnbApplication;

    if-nez v0, :cond_c

    .line 54
    sget-object v0, Lcom/airbnb/android/AirbnbApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "oldInstance is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_c
    sget-object v0, Lcom/airbnb/android/AirbnbApplication;->instance:Lcom/airbnb/android/AirbnbApplication;

    return-object v0
.end method

.method public static startMobileWebActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?hide_nav=true&locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "url":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/airbnb/android/activities/WebViewActivity;->intentForUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 115
    return-void
.end method

.method private trackDeviceScreen()V
    .registers 6

    .prologue
    .line 118
    const-string/jumbo v1, "app_open"

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v3}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v4, "c1"

    invoke-static {p0}, Lcom/airbnb/android/utils/MiscUtils;->isTabletScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "tablet_device"

    :goto_15
    invoke-virtual {v3, v4, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 119
    return-void

    .line 118
    :cond_1d
    const-string/jumbo v0, "phone_device"

    goto :goto_15
.end method

.method private trackGooglePlayInstalled()V
    .registers 6

    .prologue
    .line 122
    const-string/jumbo v1, "app_open"

    const/4 v2, 0x1

    new-instance v3, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v3}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v4, "c1"

    invoke-static {p0}, Lcom/airbnb/android/utils/MiscUtils;->hasGooglePlayServices(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "has_google_services"

    :goto_15
    invoke-virtual {v3, v4, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 123
    return-void

    .line 122
    :cond_1d
    const-string/jumbo v0, "no_google_services"

    goto :goto_15
.end method

.method private trackStoreInstall()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 101
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "installer_store"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 102
    const-string/jumbo v0, "android_eng"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "installer_package"

    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getInstallerPackageSafe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 103
    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getGlobalSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "installer_store"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 105
    :cond_3d
    return-void
.end method


# virtual methods
.method public getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApplication;->mAnalyticsRegistry:Lcom/airbnb/android/utils/Strap;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/DebugSettings;->simulateInChinaEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 156
    const-string/jumbo v0, "CN"

    .line 158
    :goto_11
    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApplication;->mCountry:Ljava/lang/String;

    goto :goto_11
.end method

.method public getSearchInfo()Lcom/airbnb/android/models/SearchInfo;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApplication;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    if-nez v0, :cond_b

    .line 148
    new-instance v0, Lcom/airbnb/android/models/SearchInfo;

    invoke-direct {v0, p0}, Lcom/airbnb/android/models/SearchInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/airbnb/android/AirbnbApplication;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    .line 151
    :cond_b
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApplication;->mSearchInfo:Lcom/airbnb/android/models/SearchInfo;

    return-object v0
.end method

.method public hasLaunchedExperiment(Ljava/lang/String;)Z
    .registers 3
    .param p1, "trebuchetKey"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApplication;->mActiveExperiments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onCreate()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 63
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    iput-object v2, p0, Lcom/airbnb/android/AirbnbApplication;->mAnalyticsRegistry:Lcom/airbnb/android/utils/Strap;

    .line 64
    iget-object v2, p0, Lcom/airbnb/android/AirbnbApplication;->mAnalyticsRegistry:Lcom/airbnb/android/utils/Strap;

    const-string/jumbo v3, "startup_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sput-object p0, Lcom/airbnb/android/AirbnbApplication;->instance:Lcom/airbnb/android/AirbnbApplication;

    .line 68
    new-instance v2, Lcom/android/volley/toolbox/ImageLoader;

    invoke-static {p0}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/AirbnbApi;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v3

    invoke-static {p0}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/volley/toolbox/ImageLoader;-><init>(Lcom/android/volley/RequestQueue;Lcom/android/volley/toolbox/ImageLoader$ImageCache;)V

    sput-object v2, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    .line 69
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/airbnb/android/AirbnbApplication;->mActiveExperiments:Ljava/util/Set;

    .line 71
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "App_Open"

    aput-object v3, v2, v6

    const-string/jumbo v3, "impressions"

    aput-object v3, v2, v7

    invoke-static {v2}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Lcom/airbnb/android/AirbnbApplication;->trackGooglePlayInstalled()V

    .line 73
    invoke-direct {p0}, Lcom/airbnb/android/AirbnbApplication;->trackStoreInstall()V

    .line 74
    invoke-direct {p0}, Lcom/airbnb/android/AirbnbApplication;->trackDeviceScreen()V

    .line 77
    :try_start_50
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 78
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v2, Landroid/view/ViewConfiguration;

    const-string/jumbo v3, "sHasPermanentMenuKey"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 79
    .local v1, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_67

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_67} :catch_75

    .line 87
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v1    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_67
    :goto_67
    new-instance v2, Lcom/airbnb/android/requests/GetCountryFromIPRequest;

    new-instance v3, Lcom/airbnb/android/AirbnbApplication$1;

    invoke-direct {v3, p0}, Lcom/airbnb/android/AirbnbApplication$1;-><init>(Lcom/airbnb/android/AirbnbApplication;)V

    invoke-direct {v2, v3}, Lcom/airbnb/android/requests/GetCountryFromIPRequest;-><init>(Lcom/airbnb/android/requests/RequestListener;)V

    invoke-virtual {v2}, Lcom/airbnb/android/requests/GetCountryFromIPRequest;->execute()V

    .line 98
    return-void

    .line 83
    :catch_75
    move-exception v2

    goto :goto_67
.end method

.method public onTrimMemory(I)V
    .registers 6
    .param p1, "level"    # I

    .prologue
    .line 127
    invoke-static {p0}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/utils/BitmapLruCache;->getCache()Landroid/support/v4/util/LruCache;

    move-result-object v0

    .line 128
    .local v0, "cache":Landroid/support/v4/util/LruCache;, "Landroid/support/v4/util/LruCache<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    sget-object v1, Lcom/airbnb/android/AirbnbApplication;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "========= onTrimMemory warning received, level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ========="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sparse-switch p1, :sswitch_data_3a

    .line 144
    :goto_2b
    return-void

    .line 133
    :sswitch_2c
    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    goto :goto_2b

    .line 139
    :sswitch_30
    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->trimToSize(I)V

    goto :goto_2b

    .line 130
    :sswitch_data_3a
    .sparse-switch
        0x5 -> :sswitch_30
        0xa -> :sswitch_30
        0xf -> :sswitch_2c
        0x28 -> :sswitch_30
        0x3c -> :sswitch_30
        0x50 -> :sswitch_2c
    .end sparse-switch
.end method

.method public saveLaunchedExperiment(Ljava/lang/String;)V
    .registers 3
    .param p1, "trebuchetKey"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApplication;->mActiveExperiments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method
