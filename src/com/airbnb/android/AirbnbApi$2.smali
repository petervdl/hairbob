.class Lcom/airbnb/android/AirbnbApi$2;
.super Ljava/lang/Object;
.source "AirbnbApi.java"

# interfaces
.implements Lcom/airbnb/android/requests/RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/AirbnbApi;->enablePushNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/android/requests/RequestListener",
        "<",
        "Lcom/airbnb/android/requests/AccountNotificationsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/AirbnbApi;


# direct methods
.method constructor <init>(Lcom/airbnb/android/AirbnbApi;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcom/airbnb/android/AirbnbApi$2;->this$0:Lcom/airbnb/android/AirbnbApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi$2;->this$0:Lcom/airbnb/android/AirbnbApi;

    iget-object v0, v0, Lcom/airbnb/android/AirbnbApi;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/airbnb/android/utils/GCMHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/GCMHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/GCMHelper;->forceUpdateOnNextLaunch()V

    .line 247
    return-void
.end method

.method public onResponse(Lcom/airbnb/android/requests/AccountNotificationsRequest;)V
    .registers 5
    .param p1, "response"    # Lcom/airbnb/android/requests/AccountNotificationsRequest;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/airbnb/android/AirbnbApi$2;->this$0:Lcom/airbnb/android/AirbnbApi;

    # getter for: Lcom/airbnb/android/AirbnbApi;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/airbnb/android/AirbnbApi;->access$000(Lcom/airbnb/android/AirbnbApi;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p1, Lcom/airbnb/android/requests/AccountNotificationsRequest;->notifications:Lcom/airbnb/android/models/NotificationSet;

    iget-object v2, p1, Lcom/airbnb/android/requests/AccountNotificationsRequest;->settings:Lcom/airbnb/android/models/Settings;

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/requests/AccountNotificationsRequest;->saveNotificationSettings(Landroid/content/SharedPreferences;Lcom/airbnb/android/models/NotificationSet;Lcom/airbnb/android/models/Settings;)V

    .line 241
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 235
    check-cast p1, Lcom/airbnb/android/requests/AccountNotificationsRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/AirbnbApi$2;->onResponse(Lcom/airbnb/android/requests/AccountNotificationsRequest;)V

    return-void
.end method
