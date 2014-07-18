.class public Lcom/airbnb/android/requests/groups/SetPushNotificationSettings;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "SetPushNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/groups/SetPushNotificationSettings;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ZLcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "enableGroups"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/groups/SetPushNotificationSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/groups/SetPushNotificationSettings;>;"
    const-string/jumbo v0, "groups/user/push_notifications"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-direct {p0, v0, v1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Ljava/util/Properties;Lcom/airbnb/android/requests/RequestListener;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/airbnb/android/requests/groups/SetPushNotificationSettings;->asJSON(Z)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-virtual {p0, v0}, Lcom/airbnb/android/requests/groups/SetPushNotificationSettings;->setJsonPost(Ljava/lang/String;)V

    .line 16
    return-void

    .line 15
    :cond_1b
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method private asJSON(Z)Lorg/json/JSONObject;
    .registers 7
    .param p1, "enabled"    # Z

    .prologue
    .line 19
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .local v2, "wrapperObj":Lorg/json/JSONObject;
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .local v1, "settingsObj":Lorg/json/JSONObject;
    if-eqz p1, :cond_1c

    .line 23
    const-string/jumbo v3, "groups"

    const-string/jumbo v4, "true"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :goto_15
    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    .end local v1    # "settingsObj":Lorg/json/JSONObject;
    :goto_1b
    return-object v2

    .line 25
    .restart local v1    # "settingsObj":Lorg/json/JSONObject;
    :cond_1c
    const-string/jumbo v3, "groups"

    const-string/jumbo v4, "false"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_25} :catch_26

    goto :goto_15

    .line 28
    .end local v1    # "settingsObj":Lorg/json/JSONObject;
    :catch_26
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1b
.end method


# virtual methods
.method public getMethod()I
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
