.class public Lcom/airbnb/android/analytics/RecommendationAnalytics;
.super Ljava/lang/Object;
.source "RecommendationAnalytics.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "recommendations"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PAGE_CONTACT_HOST:Ljava/lang/String; = "contact_host"

.field public static final PAGE_RO:Ljava/lang/String; = "reservation_object"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 8
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "section"    # Ljava/lang/String;
    .param p4, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 19
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "operation"

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "section"

    invoke-virtual {v1, v2, p3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 20
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    if-eqz p4, :cond_26

    .line 21
    invoke-virtual {v0, p4}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 23
    :cond_26
    return-object v0
.end method

.method public static trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 7
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 35
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2}, Lcom/airbnb/android/utils/Strap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "pageOrigin":Ljava/lang/String;
    invoke-static {v0, p0, p1, p2, p3}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 37
    return-void
.end method

.method private static trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 8
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "operation"    # Ljava/lang/String;
    .param p3, "section"    # Ljava/lang/String;
    .param p4, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 41
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "recommendations"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 42
    return-void
.end method

.method public static trackContactHostAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 31
    const-string/jumbo v0, "contact_host"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 32
    return-void
.end method

.method public static trackRORecommendationAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 27
    const-string/jumbo v0, "reservation_object"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/airbnb/android/analytics/RecommendationAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 28
    return-void
.end method
