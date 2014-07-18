.class public Lcom/airbnb/android/analytics/HostHomeAnalytics;
.super Ljava/lang/Object;
.source "HostHomeAnalytics.java"


# static fields
.field public static final CONFIRMED_RESERVATION:Ljava/lang/String; = "tap_confirmed_reservation"

.field public static final CORE_ALERTS:Ljava/lang/String; = "core_alerts"

.field public static final GROUPS_ALERTS:Ljava/lang/String; = "groups_alerts"

.field public static final HOSPITALITY_ALERTS:Ljava/lang/String; = "hospitality_alerts"

.field public static final HOST_HOME_EVENT:Ljava/lang/String; = "host_home"

.field public static final HOST_INBOX:Ljava/lang/String; = "tap_host_inbox"

.field public static final IMPRESSION:Ljava/lang/String; = "impressions"

.field public static final INQUIRY:Ljava/lang/String; = "inquiry"

.field public static final INQUIRY_MESSAGE:Ljava/lang/String; = "inquiry_message"

.field public static final PRIORITY_ITEM:Ljava/lang/String; = "tap_priority_item"

.field public static final RESERVATION_REQUEST:Ljava/lang/String; = "reservation_request"

.field public static final RR_MESSAGE:Ljava/lang/String; = "rr_message"

.field public static final SET_PAYOUT:Ljava/lang/String; = "set_payout"

.field public static final VIEW_WELCOME:Ljava/lang/String; = "view_welcome_to_host_home"

.field public static final VIEW_WELCOME_CLICK_OK:Ljava/lang/String; = "click_ok"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeStrap(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 4
    .param p0, "operation"    # Ljava/lang/String;
    .param p1, "section"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v1, "operation"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "section"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public static trackConfirmedReservation()V
    .registers 3

    .prologue
    .line 52
    const-string/jumbo v1, "tap_confirmed_reservation"

    const-string/jumbo v2, "inbox"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->makeStrap(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 53
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "host_home"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 54
    return-void
.end method

.method public static trackHostInboxClick()V
    .registers 3

    .prologue
    .line 47
    const-string/jumbo v1, "tap_host_inbox"

    const-string/jumbo v2, "menu"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->makeStrap(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 48
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "host_home"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 49
    return-void
.end method

.method public static trackImpression(II)V
    .registers 5
    .param p0, "alerts"    # I
    .param p1, "reservations"    # I

    .prologue
    .line 35
    const-string/jumbo v1, "impressions"

    const-string/jumbo v2, "general"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->makeStrap(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "number_of_priority_items"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "number_of_confirmed_reservations"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 38
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "host_home"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 39
    return-void
.end method

.method public static trackPriorityItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "section"    # Ljava/lang/String;
    .param p1, "itemDetails"    # Ljava/lang/String;

    .prologue
    .line 57
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->trackPriorityItemWithId(Ljava/lang/String;Ljava/lang/String;J)V

    .line 58
    return-void
.end method

.method public static trackPriorityItemWithId(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7
    .param p0, "section"    # Ljava/lang/String;
    .param p1, "itemDetails"    # Ljava/lang/String;
    .param p2, "reservationId"    # J

    .prologue
    .line 61
    const-string/jumbo v1, "tap_priority_item"

    invoke-static {v1, p0}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->makeStrap(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "priority_item_type"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 62
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-lez v1, :cond_1a

    .line 63
    const-string/jumbo v1, "reservation_id"

    invoke-virtual {v0, v1, p2, p3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    .line 65
    :cond_1a
    const-string/jumbo v1, "host_home"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 66
    return-void
.end method

.method public static trackViewWelcomeToHostHome()V
    .registers 3

    .prologue
    .line 42
    const-string/jumbo v1, "click_ok"

    const-string/jumbo v2, "view_welcome_to_host_home"

    invoke-static {v1, v2}, Lcom/airbnb/android/analytics/HostHomeAnalytics;->makeStrap(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 43
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "host_home"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 44
    return-void
.end method
