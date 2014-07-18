.class public Lcom/airbnb/android/utils/DebugSettings;
.super Ljava/lang/Object;
.source "DebugSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;
    }
.end annotation


# static fields
.field private static final KEY_AUTHORIZED_ACCOUNTS:Ljava/lang/String; = "authorized_accounts"

.field private static final KEY_SHAKE_FEEDBACK:Ljava/lang/String; = "shake_feedback"

.field private static final KEY_SIMULATE_IN_CHINA:Ljava/lang/String; = "simulate_in_china"

.field private static final KEY_SIMULATE_NO_PLAY_SERVICES:Ljava/lang/String; = "simulate_no_play_services"

.field private static mInstance:Lcom/airbnb/android/utils/DebugSettings;


# instance fields
.field private mAirbnbPreferences:Landroid/content/SharedPreferences;

.field private mDebugPreferences:Landroid/content/SharedPreferences;

.field private mShakeFeedbackEnabled:Ljava/lang/Boolean;

.field private mSimulateInChina:Z

.field private mSimulateNoPlayServices:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "debug_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mDebugPreferences:Landroid/content/SharedPreferences;

    .line 35
    invoke-static {}, Lcom/airbnb/android/AirbnbApi;->getInstance()Lcom/airbnb/android/AirbnbApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApi;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mAirbnbPreferences:Landroid/content/SharedPreferences;

    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/airbnb/android/utils/DebugSettings;->mInstance:Lcom/airbnb/android/utils/DebugSettings;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/airbnb/android/utils/DebugSettings;

    invoke-direct {v0, p0}, Lcom/airbnb/android/utils/DebugSettings;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/airbnb/android/utils/DebugSettings;->mInstance:Lcom/airbnb/android/utils/DebugSettings;

    .line 42
    :cond_b
    sget-object v0, Lcom/airbnb/android/utils/DebugSettings;->mInstance:Lcom/airbnb/android/utils/DebugSettings;

    return-object v0
.end method

.method private save(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    iget-object v1, p0, Lcom/airbnb/android/utils/DebugSettings;->mDebugPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    return-void
.end method

.method private save(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 131
    iget-object v1, p0, Lcom/airbnb/android/utils/DebugSettings;->mDebugPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 132
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 134
    return-void
.end method


# virtual methods
.method public addAuthorizedUser(JLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "id"    # J
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "authToken"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/airbnb/android/utils/DebugSettings;->getAuthorizedUsers()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    .line 116
    .local v0, "account":Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;
    invoke-virtual {v0}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->getId()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_8

    .line 128
    .end local v0    # "account":Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;
    :goto_1c
    return-void

    .line 121
    :cond_1d
    new-instance v4, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 124
    .local v2, "array":Lorg/json/JSONArray;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;

    .line 125
    .restart local v0    # "account":Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;
    invoke-virtual {v0}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2e

    .line 127
    .end local v0    # "account":Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;
    :cond_42
    const-string/jumbo v5, "authorized_accounts"

    instance-of v4, v2, Lorg/json/JSONArray;

    if-nez v4, :cond_51

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "array":Lorg/json/JSONArray;
    :goto_4d
    invoke-direct {p0, v5, v4}, Lcom/airbnb/android/utils/DebugSettings;->save(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    .restart local v2    # "array":Lorg/json/JSONArray;
    :cond_51
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "array":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4d
.end method

.method public getAllTrebuchetFlags()Lcom/airbnb/android/utils/Strap;
    .registers 6

    .prologue
    .line 46
    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    .line 48
    .local v2, "strap":Lcom/airbnb/android/utils/Strap;
    iget-object v3, p0, Lcom/airbnb/android/utils/DebugSettings;->mAirbnbPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 49
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "TREBUCHET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 54
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_3e
    return-object v2
.end method

.method public getAuthorizedUsers()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v1, p0, Lcom/airbnb/android/utils/DebugSettings;->mDebugPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "authorized_accounts"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Lcom/airbnb/android/utils/DebugSettings$AuthorizedAccount;->getAccounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getTrebuchetFlag(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v0, "TREBUCHET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t get trebuchet flag for key not prefixed with TREBUCHET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_23
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mAirbnbPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShakeFeedbackEnabled()Z
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mShakeFeedbackEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_14

    .line 75
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/airbnb/android/utils/Trebuchet;->isBeta()Z

    move-result v0

    :goto_e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mShakeFeedbackEnabled:Ljava/lang/Boolean;

    .line 78
    :cond_14
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mShakeFeedbackEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 75
    :cond_1b
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mDebugPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "shake_feedback"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_e
.end method

.method public setShakeFeedbackEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mShakeFeedbackEnabled:Ljava/lang/Boolean;

    .line 83
    const-string/jumbo v0, "shake_feedback"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/utils/DebugSettings;->save(Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public setSimulateInChinaEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/airbnb/android/utils/DebugSettings;->mSimulateInChina:Z

    .line 93
    const-string/jumbo v0, "simulate_in_china"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/utils/DebugSettings;->save(Ljava/lang/String;Z)V

    .line 94
    return-void
.end method

.method public setSimulateNoPlayServicesEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/airbnb/android/utils/DebugSettings;->mSimulateNoPlayServices:Z

    .line 103
    const-string/jumbo v0, "simulate_no_play_services"

    invoke-direct {p0, v0, p1}, Lcom/airbnb/android/utils/DebugSettings;->save(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public setTrebuchetFlag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v0, "TREBUCHET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t set trebuchet flag for key not prefixed with TREBUCHET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_23
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mAirbnbPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    return-void
.end method

.method public simulateInChinaEnabled()Z
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mDebugPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "simulate_in_china"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mSimulateInChina:Z

    .line 88
    iget-boolean v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mSimulateInChina:Z

    return v0
.end method

.method public simulateNoPlayServicesEnabled()Z
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mDebugPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "simulate_no_play_services"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mSimulateNoPlayServices:Z

    .line 98
    iget-boolean v0, p0, Lcom/airbnb/android/utils/DebugSettings;->mSimulateNoPlayServices:Z

    return v0
.end method
