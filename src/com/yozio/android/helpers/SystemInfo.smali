.class public Lcom/yozio/android/helpers/SystemInfo;
.super Ljava/lang/Object;
.source "SystemInfo.java"


# static fields
.field private static _instance:Lcom/yozio/android/helpers/SystemInfo;


# instance fields
.field private _calendar:Ljava/util/Calendar;

.field private _systemDictionary:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/yozio/android/helpers/SystemInfo;

    invoke-direct {v0}, Lcom/yozio/android/helpers/SystemInfo;-><init>()V

    sput-object v0, Lcom/yozio/android/helpers/SystemInfo;->_instance:Lcom/yozio/android/helpers/SystemInfo;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yozio/android/helpers/SystemInfo;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/yozio/android/helpers/SystemInfo;->_instance:Lcom/yozio/android/helpers/SystemInfo;

    return-object v0
.end method


# virtual methods
.method public getCurrentTimeLong()J
    .registers 3

    .prologue
    .line 123
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .registers 4

    .prologue
    .line 176
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 177
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-nez v1, :cond_1b

    .line 178
    const-string/jumbo v1, "tablet"

    .line 180
    :goto_1a
    return-object v1

    :cond_1b
    const-string/jumbo v1, "phone"

    goto :goto_1a
.end method

.method public getMacAddress()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 111
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_1e

    .line 112
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 114
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_1e

    .line 115
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 119
    .end local v0    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_1d
    return-object v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 6

    .prologue
    .line 99
    :try_start_0
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    .local v1, "manager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v2

    .line 106
    .end local v1    # "manager":Landroid/content/pm/PackageManager;
    :goto_1d
    return-object v2

    .line 102
    :catch_1e
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v4, "failed to get PackageInfo!"

    invoke-static {v3, v4}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 106
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method public getStartTimeLong()J
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/yozio/android/helpers/SystemInfo;->_calendar:Ljava/util/Calendar;

    if-nez v0, :cond_11

    .line 128
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/yozio/android/helpers/SystemInfo;->_calendar:Ljava/util/Calendar;

    .line 131
    :cond_11
    iget-object v0, p0, Lcom/yozio/android/helpers/SystemInfo;->_calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSystemDictionary()Ljava/util/HashMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 41
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    if-eqz v3, :cond_10

    .line 42
    sget-object v3, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v4, "_systemDictionary already initialized"

    invoke-static {v3, v4}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 43
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    .line 94
    :goto_f
    return-object v3

    .line 46
    :cond_10
    sget-object v3, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v4, "initializing new _systemDictionary"

    invoke-static {v3, v4}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 48
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    .line 50
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "fingerprint"

    sget-object v5, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "product"

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "model"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "board"

    sget-object v5, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "brand"

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "device"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "device_type"

    invoke-virtual {p0}, Lcom/yozio/android/helpers/SystemInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "display"

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "time"

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "cpu_abi"

    sget-object v5, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "cpu_abi2"

    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "manufacturer"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "hardware"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "os"

    const-string/jumbo v5, "android"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "os_version"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "country"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-virtual {p0}, Lcom/yozio/android/helpers/SystemInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 69
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_f6

    .line 70
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "app_name"

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "app_version"

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_f6
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "time_zone_abbr"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v7, v7, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "android_id"

    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "yozio_udid"

    invoke-virtual {p0}, Lcom/yozio/android/helpers/SystemInfo;->getYozioUDID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v1, ""

    .line 81
    .local v1, "macAddress":Ljava/lang/String;
    :try_start_134
    invoke-virtual {p0}, Lcom/yozio/android/helpers/SystemInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_142

    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "mac_address"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_142
    .catch Ljava/lang/SecurityException; {:try_start_134 .. :try_end_142} :catch_16c

    .line 90
    :cond_142
    :goto_142
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "yozio_sdk_version"

    const-string/jumbo v5, "yozio-android-1.1.0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v3, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "_systemDictionary: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    goto/16 :goto_f

    .line 83
    :catch_16c
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/yozio/android/Constants$LOG_LEVEL;->WARN:Lcom/yozio/android/Constants$LOG_LEVEL;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yozio/android/YozioService;->log(Lcom/yozio/android/Constants$LOG_LEVEL;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ACCESS_WIFI_STATE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_142

    .line 86
    const-string/jumbo v1, "N/A"

    .line 87
    iget-object v3, p0, Lcom/yozio/android/helpers/SystemInfo;->_systemDictionary:Ljava/util/HashMap;

    const-string/jumbo v4, "mac_address"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_142
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/yozio/android/helpers/SystemInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 161
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_21
    return-object v1

    :cond_22
    const-string/jumbo v1, "Yozio Android SDK"

    goto :goto_21
.end method

.method public getYozioUDID()Ljava/lang/String;
    .registers 8

    .prologue
    .line 137
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "yozioUDID":Ljava/lang/String;
    if-eqz v3, :cond_26

    const-string/jumbo v4, "9774d56d682e549c"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xf

    if-ge v4, v5, :cond_5f

    .line 142
    :cond_26
    invoke-static {}, Lcom/yozio/android/YozioService;->getInstance()Lcom/yozio/android/YozioService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yozio/android/YozioService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "come.yozio.android.PREFERENCES"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    .local v0, "_sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "yozioudid"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    if-nez v3, :cond_5f

    .line 147
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 148
    .local v2, "random":Ljava/security/SecureRandom;
    new-instance v4, Ljava/math/BigInteger;

    const/16 v5, 0x40

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 151
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "yozioudid"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    .end local v0    # "_sharedPreferences":Landroid/content/SharedPreferences;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "random":Ljava/security/SecureRandom;
    :cond_5f
    return-object v3
.end method
