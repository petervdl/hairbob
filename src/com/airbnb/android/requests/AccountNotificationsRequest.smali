.class public abstract Lcom/airbnb/android/requests/AccountNotificationsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "AccountNotificationsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/AccountNotificationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public notifications:Lcom/airbnb/android/models/NotificationSet;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "devices"
    .end annotation
.end field

.field public settings:Lcom/airbnb/android/models/Settings;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "settings"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 4
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Properties;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/AccountNotificationsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/AccountNotificationsRequest;>;"
    const-string/jumbo v0, "account/notifications"

    invoke-direct {p0, v0, p1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 20
    return-void
.end method

.method public static saveNotificationSettings(Landroid/content/SharedPreferences;Lcom/airbnb/android/models/NotificationSet;Lcom/airbnb/android/models/Settings;)V
    .registers 6
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "notifications"    # Lcom/airbnb/android/models/NotificationSet;
    .param p2, "settings"    # Lcom/airbnb/android/models/Settings;

    .prologue
    .line 27
    if-eqz p0, :cond_39

    .line 28
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p2, :cond_26

    .line 30
    const-string/jumbo v1, "host_reservation"

    invoke-virtual {p2}, Lcom/airbnb/android/models/Settings;->isHostReservation()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 31
    const-string/jumbo v1, "guest_reservation"

    invoke-virtual {p2}, Lcom/airbnb/android/models/Settings;->isGuestReservation()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 32
    const-string/jumbo v1, "messaging"

    invoke-virtual {p2}, Lcom/airbnb/android/models/Settings;->isMessaging()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    :cond_26
    if-eqz p1, :cond_36

    .line 36
    const-string/jumbo v1, "android_gcm_enabled"

    invoke-virtual {p1}, Lcom/airbnb/android/models/NotificationSet;->getAndroidDevice()Lcom/airbnb/android/models/Device;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/models/Device;->isEnabled()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 39
    :cond_36
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 41
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_39
    return-void
.end method
