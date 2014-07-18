.class public Lcom/airbnb/android/analytics/HHWidgetAnalytics;
.super Ljava/lang/Object;
.source "HHWidgetAnalytics.java"


# static fields
.field private static final ACTION_CLICK:Ljava/lang/String; = "CLICK"

.field private static final ACTION_INSTALL:Ljava/lang/String; = "INSTALL"

.field private static final ACTION_UNINSTALL:Ljava/lang/String; = "UNINSTALL"

.field private static final ACTION_UPDATE:Ljava/lang/String; = "UPDATE"

.field private static final PAGE:Ljava/lang/String; = "HOST_HOME_WIDGET"

.field private static final PARAM_NUM_RESERVATIONS:Ljava/lang/String; = "NUMBER_OF_RESERVATIONS"

.field private static final SECTION_CONFIRMED_RESERVATIONS:Ljava/lang/String; = "CONFIRMED_RESERVATIONS"

.field private static final SECTION_GENERAL:Ljava/lang/String; = "GENERAL"

.field private static final SECTION_MESSAGES:Ljava/lang/String; = "MESSAGES"

.field private static final SECTION_REFRESH:Ljava/lang/String; = "REFRESH"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 9
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 20
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "PAGE"

    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "SECTION"

    invoke-virtual {v3, v4, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "ACTION"

    invoke-virtual {v3, v4, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    .line 22
    .local v2, "params":Lcom/airbnb/android/utils/Strap;
    if-eqz p3, :cond_3f

    .line 23
    invoke-virtual {p3}, Lcom/airbnb/android/utils/Strap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 24
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p3, v1}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 25
    invoke-virtual {p3, v1}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    goto :goto_23

    .line 30
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_3f
    return-object v2
.end method

.method public static trackMessagesClick()V
    .registers 5

    .prologue
    .line 39
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const-string/jumbo v2, "MESSAGES"

    const-string/jumbo v3, "CLICK"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 40
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 41
    return-void
.end method

.method public static trackRefreshClick()V
    .registers 5

    .prologue
    .line 44
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const-string/jumbo v2, "REFRESH"

    const-string/jumbo v3, "CLICK"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 45
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 46
    return-void
.end method

.method public static trackReservationClick()V
    .registers 5

    .prologue
    .line 34
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const-string/jumbo v2, "CONFIRMED_RESERVATIONS"

    const-string/jumbo v3, "CLICK"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 35
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 36
    return-void
.end method

.method public static trackWidgetInstall()V
    .registers 5

    .prologue
    .line 49
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const-string/jumbo v2, "GENERAL"

    const-string/jumbo v3, "INSTALL"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 50
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 51
    return-void
.end method

.method public static trackWidgetUninstall()V
    .registers 5

    .prologue
    .line 54
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const-string/jumbo v2, "GENERAL"

    const-string/jumbo v3, "UNINSTALL"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 55
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 56
    return-void
.end method

.method public static trackWidgetUpdate(I)V
    .registers 8
    .param p0, "numReservations"    # I

    .prologue
    .line 59
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const-string/jumbo v2, "GENERAL"

    const-string/jumbo v3, "UPDATE"

    new-instance v4, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v4}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v5, "NUMBER_OF_RESERVATIONS"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/analytics/HHWidgetAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 60
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "HOST_HOME_WIDGET"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 61
    return-void
.end method
