.class public Lcom/airbnb/android/analytics/SignUpLoginAnalytics;
.super Ljava/lang/Object;
.source "SignUpLoginAnalytics.java"


# static fields
.field private static final EVENT_SIGNUP_LOGIN:Ljava/lang/String; = "signup_login_flow"

.field private static final LANDING:Ljava/lang/String; = "landing"

.field private static final LOGIN:Ljava/lang/String; = "login"

.field private static final SIGNUP:Ljava/lang/String; = "signup"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 6
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 19
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 20
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    if-eqz p2, :cond_17

    .line 21
    invoke-virtual {v0, p2}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 23
    :cond_17
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getAffiliateParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 24
    return-object v0
.end method

.method public static trackLandingAction(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 28
    const-string/jumbo v1, "landing"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 29
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "signup_login_flow"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 30
    return-void
.end method

.method public static trackLoginAction(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string/jumbo v1, "login"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 34
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "signup_login_flow"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 35
    return-void
.end method

.method public static trackSignupAction(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v1, "signup"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/airbnb/android/analytics/SignUpLoginAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 39
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "signup_login_flow"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 40
    return-void
.end method
