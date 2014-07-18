.class public Lcom/airbnb/android/analytics/FtueAnalytics;
.super Ljava/lang/Object;
.source "FtueAnalytics.java"


# static fields
.field public static final EVENT_APP_INTRO:Ljava/lang/String; = "app_intro"

.field public static final EVENT_INBOX:Ljava/lang/String; = "inbox"

.field public static final EVENT_WHY_HOST:Ljava/lang/String; = "why_host"

.field public static final IMPRESSION:Ljava/lang/String; = "impression"

.field private static final PAGE_NUM:Ljava/lang/String; = "page_num"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 5
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getAffiliateParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 22
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    return-object v0
.end method

.method public static trackAppIntroGetStarted()V
    .registers 3

    .prologue
    .line 41
    const-string/jumbo v1, "app_intro"

    const-string/jumbo v2, "get_started_click"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/FtueAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 42
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "app_intro"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 43
    return-void
.end method

.method public static trackAppIntroImpression()V
    .registers 3

    .prologue
    .line 26
    const-string/jumbo v1, "app_intro"

    const-string/jumbo v2, "impression"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/FtueAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 27
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "app_intro"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 28
    return-void
.end method

.method public static trackAppIntroSignin(I)V
    .registers 5
    .param p0, "page"    # I

    .prologue
    .line 36
    const-string/jumbo v1, "app_intro"

    const-string/jumbo v2, "signin_click"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/FtueAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "page_num"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 37
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "app_intro"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 38
    return-void
.end method

.method public static trackAppIntroSkip(I)V
    .registers 5
    .param p0, "page"    # I

    .prologue
    .line 31
    const-string/jumbo v1, "app_intro"

    const-string/jumbo v2, "skip_click"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/FtueAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "page_num"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 32
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "app_intro"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 33
    return-void
.end method

.method public static trackAppIntroUp(I)V
    .registers 5
    .param p0, "page"    # I

    .prologue
    .line 46
    const-string/jumbo v1, "app_intro"

    const-string/jumbo v2, "up_click"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/FtueAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "page_num"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 47
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "app_intro"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 48
    return-void
.end method

.method public static trackHostInboxMoved(Z)V
    .registers 5
    .param p0, "acceptedClick"    # Z

    .prologue
    .line 71
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "inbox"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "view_host_messages_have_moved"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "c3"

    if-eqz p0, :cond_2d

    const-string/jumbo v1, "click_visit_host_home"

    :goto_21
    invoke-virtual {v2, v3, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 72
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "inbox"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 73
    return-void

    .line 71
    .end local v0    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_2d
    const-string/jumbo v1, "click_cancel"

    goto :goto_21
.end method

.method public static trackWhyHostHospitality()V
    .registers 3

    .prologue
    .line 56
    const-string/jumbo v1, "why_host"

    const-string/jumbo v2, "learn_hospitality_standards_click"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/FtueAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 57
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "why_host"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 58
    return-void
.end method

.method public static trackWhyHostImpression()V
    .registers 3

    .prologue
    .line 51
    const-string/jumbo v1, "why_host"

    const-string/jumbo v2, "impression"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/FtueAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 52
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "why_host"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 53
    return-void
.end method

.method public static trackWhyHostLYS()V
    .registers 3

    .prologue
    .line 61
    const-string/jumbo v1, "why_host"

    const-string/jumbo v2, "list_your_space_click"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/FtueAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 62
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "why_host"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 63
    return-void
.end method

.method public static trackWhyHostUp(I)V
    .registers 5
    .param p0, "page"    # I

    .prologue
    .line 66
    const-string/jumbo v1, "why_host"

    const-string/jumbo v2, "up_click"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/FtueAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "page_num"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 67
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "why_host"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 68
    return-void
.end method
