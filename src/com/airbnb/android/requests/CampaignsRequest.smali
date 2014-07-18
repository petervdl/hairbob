.class public Lcom/airbnb/android/requests/CampaignsRequest;
.super Lcom/airbnb/android/requests/AirbnbRequest;
.source "CampaignsRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/android/requests/AirbnbRequest",
        "<",
        "Lcom/airbnb/android/requests/CampaignsRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public campaigns:Ljava/util/HashMap;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "campaigns"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/location/Location;Lcom/airbnb/android/requests/RequestListener;)V
    .registers 5
    .param p1, "location"    # Landroid/location/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Lcom/airbnb/android/requests/RequestListener",
            "<",
            "Lcom/airbnb/android/requests/CampaignsRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "listener":Lcom/airbnb/android/requests/RequestListener;, "Lcom/airbnb/android/requests/RequestListener<Lcom/airbnb/android/requests/CampaignsRequest;>;"
    const-string/jumbo v0, "campaigns"

    invoke-static {p1}, Lcom/airbnb/android/requests/CampaignsRequest;->makeParams(Landroid/location/Location;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/airbnb/android/requests/AirbnbRequest;-><init>(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;Lcom/airbnb/android/requests/RequestListener;)V

    .line 22
    return-void
.end method

.method private static makeParams(Landroid/location/Location;)Lcom/airbnb/android/utils/Strap;
    .registers 5
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 25
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    .line 26
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    if-eqz p0, :cond_23

    .line 27
    const-string/jumbo v1, "lat"

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string/jumbo v1, "lng"

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_23
    return-object v0
.end method


# virtual methods
.method public getTTL()J
    .registers 3

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected preProcess()V
    .registers 15

    .prologue
    .line 38
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 39
    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 41
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v9, p0, Lcom/airbnb/android/requests/CampaignsRequest;->campaigns:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 42
    .local v6, "mapKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/airbnb/android/requests/CampaignsRequest;->campaigns:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 43
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 45
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v9, "disable_android"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    const-string/jumbo v9, "disable_android"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5c

    .line 46
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/airbnb/android/fragments/AppDisabledDialogFragment;->parseAppDisableJson(Ljava/lang/String;)V

    goto :goto_32

    .line 48
    :cond_5c
    invoke-static {v6, v4}, Lcom/airbnb/android/utils/Trebuchet;->buildKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "prefKey":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_32

    .line 53
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "mapKey":Ljava/lang/String;
    .end local v7    # "prefKey":Ljava/lang/String;
    :cond_6c
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/airbnb/android/requests/CampaignsRequest;->campaigns:Ljava/util/HashMap;

    invoke-direct {v0, v9}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 56
    .local v0, "campaignResponse":Lorg/json/JSONObject;
    const-string/jumbo v10, "campaign_request"

    const/4 v11, 0x1

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    const-string/jumbo v12, "page"

    const-string/jumbo v13, "mobile_launch"

    invoke-virtual {v9, v12, v13}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    const-string/jumbo v12, "action"

    const-string/jumbo v13, "campaign_request"

    invoke-virtual {v9, v12, v13}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v12

    const-string/jumbo v13, "campaigns"

    instance-of v9, v0, Lorg/json/JSONObject;

    if-nez v9, :cond_a5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    .end local v0    # "campaignResponse":Lorg/json/JSONObject;
    :goto_9d
    invoke-virtual {v12, v13, v9}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v9

    invoke-static {v10, v11, v9}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 57
    return-void

    .line 56
    .restart local v0    # "campaignResponse":Lorg/json/JSONObject;
    :cond_a5
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "campaignResponse":Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    goto :goto_9d
.end method
