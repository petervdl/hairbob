.class public Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;
.super Ljava/lang/Object;
.source "ArrivalAssistantAnalytics.java"


# static fields
.field private static final ARRIVAL_TRACKER:Ljava/lang/String; = "arrival_tracker"

.field private static final EVENT_NAME:Ljava/lang/String; = "arrival_assistant"

.field private static final NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final RESERVATION_OBJECT:Ljava/lang/String; = "reservation_object"

.field private static final TRAVEL_DETAILS:Ljava/lang/String; = "travel_details"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 8
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "reservationId"    # J
    .param p4, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 150
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "operation"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "reservation_id"

    invoke-virtual {v1, v2, p2, p3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 152
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    if-eqz p4, :cond_1e

    .line 153
    invoke-virtual {v0, p4}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 156
    :cond_1e
    return-object v0
.end method

.method public static trackArrivalTrackerImInButtonClick(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 75
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "im_in_button_click"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 76
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 77
    return-void
.end method

.method public static trackArrivalTrackerImInSuccess(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 80
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "im_in_success"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 81
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 82
    return-void
.end method

.method public static trackArrivalTrackerImpression(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 55
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "impression"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 56
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 57
    return-void
.end method

.method public static trackArrivalTrackerPauseArrivalTracker(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 70
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "pause_arrival_tracker_click"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 71
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 72
    return-void
.end method

.method public static trackArrivalTrackerPresentTravelDetailsView(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 60
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "present_travel_details_view"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 61
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 62
    return-void
.end method

.method public static trackArrivalTrackerRateExperienceModalImpression(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 85
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "rate_experience_modal_impression"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 86
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 87
    return-void
.end method

.method public static trackArrivalTrackerSetRateExperienceReviewNote(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 95
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "set_rate_experience_review_note"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 96
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 97
    return-void
.end method

.method public static trackArrivalTrackerSetRateExperienceReviewRating(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 90
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "set_rate_experience_review_rating"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 91
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 92
    return-void
.end method

.method public static trackArrivalTrackerStartArrivalTrackerClick(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 65
    const-string/jumbo v1, "arrival_tracker"

    const-string/jumbo v2, "start_arrival_tracker_click"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 66
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 67
    return-void
.end method

.method public static trackNotificationClick(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 140
    const-string/jumbo v1, "notification"

    const-string/jumbo v2, "click"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 141
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 142
    return-void
.end method

.method public static trackNotificationControlButtonClick(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 135
    const-string/jumbo v1, "notification"

    const-string/jumbo v2, "control_button_click"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 136
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 137
    return-void
.end method

.method public static trackNotificationGeofenceImpression(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 145
    const-string/jumbo v1, "notification"

    const-string/jumbo v2, "geofence_impression"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 146
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 147
    return-void
.end method

.method public static trackNotificationImpression(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 130
    const-string/jumbo v1, "notification"

    const-string/jumbo v2, "impression"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 131
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 132
    return-void
.end method

.method public static trackReservationObjectAddTravelDetailsClick(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 115
    const-string/jumbo v1, "reservation_object"

    const-string/jumbo v2, "add_travel_details_click"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 116
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 117
    return-void
.end method

.method public static trackReservationObjectArrivalAssistantEnabledImpression(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 100
    const-string/jumbo v1, "reservation_object"

    const-string/jumbo v2, "arrival_assistant_enabled_impression"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 101
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 102
    return-void
.end method

.method public static trackReservationObjectArrivalAssistantNotEnabledImpression(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 105
    const-string/jumbo v1, "reservation_object"

    const-string/jumbo v2, "arrival_assistant_not_enabled_impression"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 106
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 107
    return-void
.end method

.method public static trackReservationObjectEditTravelDetailsClick(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 120
    const-string/jumbo v1, "reservation_object"

    const-string/jumbo v2, "edit_travel_details_click"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 121
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 122
    return-void
.end method

.method public static trackReservationObjectHostTrackArrival(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 125
    const-string/jumbo v1, "reservation_object"

    const-string/jumbo v2, "host_track_arrival"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 126
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 127
    return-void
.end method

.method public static trackReservationObjectLoadArrivalDataSuccess(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 110
    const-string/jumbo v1, "reservation_object"

    const-string/jumbo v2, "load_arrival_data_success"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 111
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 112
    return-void
.end method

.method public static trackTravelDetailsAddGeofence(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 50
    const-string/jumbo v1, "travel_details"

    const-string/jumbo v2, "add_geofence"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 51
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 52
    return-void
.end method

.method public static trackTravelDetailsImpression(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 20
    const-string/jumbo v1, "travel_details"

    const-string/jumbo v2, "impression"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 21
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 22
    return-void
.end method

.method public static trackTravelDetailsSelectTransportationTypeClick(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 30
    const-string/jumbo v1, "travel_details"

    const-string/jumbo v2, "select_transportation_type_click"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 31
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 32
    return-void
.end method

.method public static trackTravelDetailsSetDepartureDate(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 40
    const-string/jumbo v1, "travel_details"

    const-string/jumbo v2, "set_departure_date"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 41
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 42
    return-void
.end method

.method public static trackTravelDetailsSetEstimatedArrival(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 45
    const-string/jumbo v1, "travel_details"

    const-string/jumbo v2, "set_estimated_arrival"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 46
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 47
    return-void
.end method

.method public static trackTravelDetailsSubmitDetailsClick(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 25
    const-string/jumbo v1, "travel_details"

    const-string/jumbo v2, "submit_details_click"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 26
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 27
    return-void
.end method

.method public static trackTravelDetailsUpdateWithParams(JLcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "reservationId"    # J
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 35
    const-string/jumbo v1, "travel_details"

    const-string/jumbo v2, "update_with_params"

    invoke-static {v1, v2, p0, p1, p2}, Lcom/airbnb/android/analytics/ArrivalAssistantAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;JLcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 36
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "arrival_assistant"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 37
    return-void
.end method
