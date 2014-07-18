.class public final Lcom/newrelic/agent/android/util/Carrier;
.super Ljava/lang/Object;
.source "Carrier.java"


# static fields
.field private static final ANDROID:Ljava/lang/String; = "Android"

.field private static log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/Carrier;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nameFromContext(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 24
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    :try_start_9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_c} :catch_19

    move-result-object v2

    .line 30
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_26

    .line 31
    :cond_15
    const-string/jumbo v3, "none"

    .line 48
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_18
    return-object v3

    .line 26
    :catch_19
    move-exception v1

    .line 27
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v3, Lcom/newrelic/agent/android/util/Carrier;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Cannot determine network state. Enable android.permission.ACCESS_NETWORK_STATE in your manifest."

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 28
    const-string/jumbo v3, "unknown"

    goto :goto_18

    .line 33
    .end local v1    # "e":Ljava/lang/SecurityException;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_26
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_5c

    .line 47
    :pswitch_2d
    sget-object v3, Lcom/newrelic/agent/android/util/Carrier;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string/jumbo v4, "Unknown network type: {0} [{1}]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v3, "unknown"

    goto :goto_18

    .line 39
    :pswitch_52
    invoke-static {p0}, Lcom/newrelic/agent/android/util/Carrier;->nameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_18

    .line 45
    :pswitch_57
    const-string/jumbo v3, "wifi"

    goto :goto_18

    .line 33
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_52
        :pswitch_57
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_52
        :pswitch_57
        :pswitch_57
        :pswitch_2d
        :pswitch_57
    .end packed-switch
.end method

.method private static nameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 54
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "networkOperator":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v4, "google_sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v4, "sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v4, "sdk_x86"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string/jumbo v4, "generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    :cond_39
    const/4 v1, 0x1

    .line 56
    .local v1, "smellsLikeAnEmulator":Z
    :goto_3a
    const-string/jumbo v3, "Android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    if-eqz v1, :cond_48

    .line 60
    const-string/jumbo v0, "wifi"

    .line 63
    .end local v0    # "networkOperator":Ljava/lang/String;
    :cond_48
    return-object v0

    .line 55
    .end local v1    # "smellsLikeAnEmulator":Z
    .restart local v0    # "networkOperator":Ljava/lang/String;
    :cond_49
    const/4 v1, 0x0

    goto :goto_3a
.end method
