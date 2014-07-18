.class public Lcom/airbnb/android/requests/GetAccountNotificationsRequest;
.super Lcom/airbnb/android/requests/AccountNotificationsRequest;
.source "GetAccountNotificationsRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AccountNotificationsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AccountNotificationsRequest;>;"
    invoke-static {p1}, Lcom/airbnb/android/requests/GetAccountNotificationsRequest;->getPushProperties(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/airbnb/android/requests/AccountNotificationsRequest;-><init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 17
    return-void
.end method

.method private static getPushProperties(Landroid/content/Context;)Ljava/util/Properties;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 28
    .local v0, "props":Ljava/util/Properties;
    invoke-static {p0}, Lcom/airbnb/android/utils/GCMHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/utils/GCMHelper;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "registrationId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 30
    const-string/jumbo v2, "devices[android_gcm][token]"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_19
    return-object v0
.end method


# virtual methods
.method protected preProcess()V
    .registers 4

    .prologue
    .line 21
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    const-string/jumbo v1, "airbnb_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/AirbnbApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/android/requests/GetAccountNotificationsRequest;->notifications:Lcom/airbnb/android/models/NotificationSet;

    iget-object v2, p0, Lcom/airbnb/android/requests/GetAccountNotificationsRequest;->settings:Lcom/airbnb/android/models/Settings;

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/requests/AccountNotificationsRequest;->saveNotificationSettings(Landroid/content/SharedPreferences;Lcom/airbnb/android/models/NotificationSet;Lcom/airbnb/android/models/Settings;)V

    .line 24
    return-void
.end method
