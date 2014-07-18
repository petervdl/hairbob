.class public Lcom/airbnb/android/analytics/ROAnalytics;
.super Ljava/lang/Object;
.source "ROAnalytics.java"


# static fields
.field public static final IMPRESSION:Ljava/lang/String; = "impression"

.field public static final RESPOND_NOW:Ljava/lang/String; = "respond_now"

.field public static final RO:Ljava/lang/String; = "reservation_object"

.field public static final RO_SOURCE:Ljava/lang/String; = "ro_source"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;
    .registers 12
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "reservationId"    # J
    .param p5, "threadId"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 27
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "operation"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "section"

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 31
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    cmp-long v1, p3, v3

    if-lez v1, :cond_25

    .line 32
    const-string/jumbo v1, "reservation_id"

    invoke-virtual {v0, v1, p3, p4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    .line 34
    :cond_25
    cmp-long v1, p5, v3

    if-lez v1, :cond_2f

    .line 35
    const-string/jumbo v1, "thread_id"

    invoke-virtual {v0, v1, p5, p6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    .line 37
    :cond_2f
    return-object v0
.end method

.method public static trackROImpression(Ljava/lang/String;ZJJ)V
    .registers 14
    .param p0, "tab"    # Ljava/lang/String;
    .param p1, "isHost"    # Z
    .param p2, "reservationId"    # J
    .param p4, "threadId"    # J

    .prologue
    .line 20
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "ro_source"

    invoke-virtual {v0, v1}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 21
    .local v2, "source":Ljava/lang/String;
    const-string/jumbo v0, "reservation_object"

    const-string/jumbo v1, "impression"

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "tab"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v3, "role"

    if-eqz p1, :cond_38

    const-string/jumbo v0, "host"

    :goto_2c
    invoke-virtual {v1, v3, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 22
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "reservation_object"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 23
    return-void

    .line 21
    .end local v7    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_38
    const-string/jumbo v0, "guest"

    goto :goto_2c
.end method

.method public static trackROItinerary(ZJJ)V
    .registers 13
    .param p0, "isHost"    # Z
    .param p1, "reservationId"    # J
    .param p3, "threadId"    # J

    .prologue
    .line 41
    const-string/jumbo v0, "ro_itinerary"

    const-string/jumbo v1, "impression"

    const-string/jumbo v2, "general"

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "role"

    if-eqz p0, :cond_23

    const-string/jumbo v0, "host"

    :goto_17
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 42
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "reservation_object"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 43
    return-void

    .line 41
    .end local v7    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_23
    const-string/jumbo v0, "guest"

    goto :goto_17
.end method

.method public static trackROItineraryClickContact(Ljava/lang/String;JJ)V
    .registers 13
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "reservationId"    # J
    .param p3, "threadId"    # J

    .prologue
    .line 61
    const-string/jumbo v0, "ro_itinerary"

    const-string/jumbo v1, "click_contact_method"

    const-string/jumbo v2, "general"

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "contact_method"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 62
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "reservation_object"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 63
    return-void
.end method

.method public static trackROItineraryViewCalendar(JJ)V
    .registers 12
    .param p0, "reservationId"    # J
    .param p2, "threadId"    # J

    .prologue
    .line 56
    const-string/jumbo v0, "ro_itinerary"

    const-string/jumbo v1, "click_view_full_calendar"

    const-string/jumbo v2, "general"

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 57
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "reservation_object"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 58
    return-void
.end method

.method public static trackROMessages(ZJJ)V
    .registers 13
    .param p0, "isHost"    # Z
    .param p1, "reservationId"    # J
    .param p3, "threadId"    # J

    .prologue
    .line 51
    const-string/jumbo v0, "ro_messages"

    const-string/jumbo v1, "impression"

    const-string/jumbo v2, "general"

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "role"

    if-eqz p0, :cond_23

    const-string/jumbo v0, "host"

    :goto_17
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 52
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "reservation_object"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 53
    return-void

    .line 51
    .end local v7    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_23
    const-string/jumbo v0, "guest"

    goto :goto_17
.end method

.method public static trackROProfile(ZJJ)V
    .registers 13
    .param p0, "isHost"    # Z
    .param p1, "reservationId"    # J
    .param p3, "threadId"    # J

    .prologue
    .line 46
    const-string/jumbo v0, "ro_profile"

    const-string/jumbo v1, "impression"

    const-string/jumbo v2, "general"

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "role"

    if-eqz p0, :cond_23

    const-string/jumbo v0, "host"

    :goto_17
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 47
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "reservation_object"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 48
    return-void

    .line 46
    .end local v7    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_23
    const-string/jumbo v0, "guest"

    goto :goto_17
.end method

.method public static trackROProfileClickReferences(JJ)V
    .registers 12
    .param p0, "reservationId"    # J
    .param p2, "threadId"    # J

    .prologue
    .line 71
    const-string/jumbo v0, "ro_profile"

    const-string/jumbo v1, "click_references"

    const-string/jumbo v2, "general"

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 72
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "reservation_object"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 73
    return-void
.end method

.method public static trackROProfileClickReviews(JJ)V
    .registers 12
    .param p0, "reservationId"    # J
    .param p2, "threadId"    # J

    .prologue
    .line 66
    const-string/jumbo v0, "ro_profile"

    const-string/jumbo v1, "click_reviews"

    const-string/jumbo v2, "general"

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 67
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "reservation_object"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 68
    return-void
.end method

.method public static trackRespondNowAcceptPreApproval(JJ)V
    .registers 12
    .param p0, "reservationId"    # J
    .param p2, "threadId"    # J

    .prologue
    .line 101
    const-string/jumbo v0, "inquiry"

    const-string/jumbo v1, "accept_pre_approval"

    const-string/jumbo v2, "general"

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "role"

    const-string/jumbo v2, "guest"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 102
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "respond_now"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 103
    return-void
.end method

.method public static trackRespondNowAcceptSpecialOffer(JJ)V
    .registers 12
    .param p0, "reservationId"    # J
    .param p2, "threadId"    # J

    .prologue
    .line 96
    const-string/jumbo v0, "inquiry"

    const-string/jumbo v1, "accept_special_offer"

    const-string/jumbo v2, "general"

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "role"

    const-string/jumbo v2, "guest"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 97
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "respond_now"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 98
    return-void
.end method

.method public static trackRespondNowButtonClickForInquiry(JJ)V
    .registers 12
    .param p0, "reservationId"    # J
    .param p2, "threadId"    # J

    .prologue
    .line 86
    const-string/jumbo v0, "inquiry"

    const-string/jumbo v1, "click_respond_now"

    const-string/jumbo v2, "general"

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "role"

    const-string/jumbo v2, "host"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 87
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "respond_now"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 88
    return-void
.end method

.method public static trackRespondNowButtonClickForReservation(JJ)V
    .registers 12
    .param p0, "reservationId"    # J
    .param p2, "threadId"    # J

    .prologue
    .line 76
    const-string/jumbo v0, "reservation_request"

    const-string/jumbo v1, "click_respond_now"

    const-string/jumbo v2, "general"

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 77
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "respond_now"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 78
    return-void
.end method

.method public static trackRespondNowEducationClick(ZJJ)V
    .registers 13
    .param p0, "reservation"    # Z
    .param p1, "reservationId"    # J
    .param p3, "threadId"    # J

    .prologue
    .line 106
    const-string/jumbo v0, "education_dialog"

    const-string/jumbo v1, "click_info"

    const-string/jumbo v2, "general"

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "type"

    if-eqz p0, :cond_23

    const-string/jumbo v0, "reservation"

    :goto_17
    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 107
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "respond_now"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 108
    return-void

    .line 106
    .end local v7    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_23
    const-string/jumbo v0, "inquiry"

    goto :goto_17
.end method

.method public static trackRespondNowSelectOptionForInquiry(Ljava/lang/String;JJ)V
    .registers 13
    .param p0, "option"    # Ljava/lang/String;
    .param p1, "reservationId"    # J
    .param p3, "threadId"    # J

    .prologue
    .line 91
    const-string/jumbo v0, "inquiry"

    const-string/jumbo v1, "select_response"

    const-string/jumbo v2, "general"

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "role"

    const-string/jumbo v2, "host"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 92
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "respond_now"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 93
    return-void
.end method

.method public static trackRespondNowSelectOptionForReservation(Ljava/lang/String;JJ)V
    .registers 13
    .param p0, "option"    # Ljava/lang/String;
    .param p1, "reservationId"    # J
    .param p3, "threadId"    # J

    .prologue
    .line 81
    const-string/jumbo v0, "reservation_request"

    const-string/jumbo v1, "select_response"

    const-string/jumbo v2, "general"

    move-wide v3, p1

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 82
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "respond_now"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 83
    return-void
.end method

.method public static trackSimplifiedBookingEducationView(JJ)V
    .registers 12
    .param p0, "reservationId"    # J
    .param p2, "threadId"    # J

    .prologue
    .line 111
    const-string/jumbo v0, "simplified_booking_edu_modal"

    const-string/jumbo v1, "view"

    const-string/jumbo v2, "general"

    move-wide v3, p0

    move-wide v5, p2

    invoke-static/range {v0 .. v6}, Lcom/airbnb/android/analytics/ROAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Lcom/airbnb/android/utils/Strap;

    move-result-object v7

    .line 112
    .local v7, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v0, "respond_now"

    const/4 v1, 0x1

    invoke-static {v0, v1, v7}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 113
    return-void
.end method
