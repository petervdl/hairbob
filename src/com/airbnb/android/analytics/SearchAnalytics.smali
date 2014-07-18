.class public Lcom/airbnb/android/analytics/SearchAnalytics;
.super Ljava/lang/Object;
.source "SearchAnalytics.java"


# static fields
.field private static final DATE_STEP:Ljava/lang/String; = "date_step"

.field private static final EVENT_SEARCH:Ljava/lang/String; = "search_and_results"

.field private static final FILTERS:Ljava/lang/String; = "filters"

.field public static final FROM_LMB:Ljava/lang/String; = "lmb"

.field public static final FROM_SEARCH:Ljava/lang/String; = "search"

.field public static final FROM_WEEKEND:Ljava/lang/String; = "weekend"

.field private static final LIST_RESULTS:Ljava/lang/String; = "list_search_results"

.field private static final MAP_RESULTS:Ljava/lang/String; = "map_search_results"

.field private static final PAGE_EDUCATION_LMB:Ljava/lang/String; = "education_lmb"

.field private static final SEARCH:Ljava/lang/String; = "search"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 7
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 29
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "page"

    invoke-virtual {v2, v3, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 30
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    if-eqz p2, :cond_17

    .line 31
    invoke-virtual {v0, p2}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 35
    :cond_17
    invoke-static {}, Lcom/airbnb/android/AirbnbApplication;->getInstance()Lcom/airbnb/android/AirbnbApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/airbnb/android/AirbnbApplication;->getAnalyticsRegistry()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "search_came_from"

    invoke-virtual {v2, v3}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    .local v1, "searchOrigin":Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 37
    const-string/jumbo v2, "came_from"

    invoke-virtual {v0, v2, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 39
    :cond_30
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getAffiliateParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 40
    return-object v0
.end method

.method public static trackDateStepAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 49
    const-string/jumbo v1, "date_step"

    invoke-static {v1, p0, p1}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 50
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 51
    return-void
.end method

.method public static trackFiltersAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 69
    const-string/jumbo v1, "filters"

    invoke-static {v1, p0, p1}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 70
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 71
    return-void
.end method

.method public static trackLMDateChange(Z)V
    .registers 7
    .param p0, "tonight"    # Z

    .prologue
    .line 74
    const-string/jumbo v2, "filters"

    const-string/jumbo v3, "change_LM_date"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "new_date"

    if-eqz p0, :cond_22

    const-string/jumbo v1, "tonight"

    :goto_12
    invoke-virtual {v4, v5, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 75
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 76
    return-void

    .line 74
    .end local v0    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_22
    const-string/jumbo v1, "tomorrow"

    goto :goto_12
.end method

.method public static trackLMNightsChange(I)V
    .registers 6
    .param p0, "numNights"    # I

    .prologue
    .line 79
    const-string/jumbo v1, "filters"

    const-string/jumbo v2, "change_LM_nights"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "nights"

    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 80
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 81
    return-void
.end method

.method public static trackLMViewAll()V
    .registers 5

    .prologue
    .line 84
    const-string/jumbo v0, "search_and_results"

    const/4 v1, 0x1

    const-string/jumbo v2, "filters"

    const-string/jumbo v3, "click_view_all_listings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 85
    return-void
.end method

.method public static trackListResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 54
    const-string/jumbo v1, "list_search_results"

    invoke-static {v1, p0, p1}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 55
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 56
    return-void
.end method

.method public static trackLmbEducationClick()V
    .registers 5

    .prologue
    .line 98
    const-string/jumbo v0, "search_and_results"

    const/4 v1, 0x1

    const-string/jumbo v2, "education_lmb"

    const-string/jumbo v3, "click_education"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 99
    return-void
.end method

.method public static trackLmbEducationClose()V
    .registers 5

    .prologue
    .line 110
    const-string/jumbo v0, "search_and_results"

    const/4 v1, 0x1

    const-string/jumbo v2, "education_lmb"

    const-string/jumbo v3, "click_close_education"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 111
    return-void
.end method

.method public static trackLmbEducationDismiss()V
    .registers 5

    .prologue
    .line 102
    const-string/jumbo v0, "search_and_results"

    const/4 v1, 0x1

    const-string/jumbo v2, "education_lmb"

    const-string/jumbo v3, "dismiss_education"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 103
    return-void
.end method

.method public static trackLmbEducationImpression()V
    .registers 5

    .prologue
    .line 106
    const-string/jumbo v0, "search_and_results"

    const/4 v1, 0x1

    const-string/jumbo v2, "education_lmb"

    const-string/jumbo v3, "impression"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 107
    return-void
.end method

.method public static trackLmbFiltersChangeCity(Lcom/airbnb/android/models/AirLocation;)V
    .registers 8
    .param p0, "city"    # Lcom/airbnb/android/models/AirLocation;

    .prologue
    .line 122
    const-string/jumbo v0, "search_and_results"

    const/4 v1, 0x1

    const-string/jumbo v2, "filters"

    const-string/jumbo v3, "change_LM_city"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "city"

    invoke-virtual {p0}, Lcom/airbnb/android/models/AirLocation;->getSearchTerm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 123
    return-void
.end method

.method public static trackLmbFiltersChangeSortMode(Lcom/airbnb/android/models/SearchInfo$SortType;)V
    .registers 8
    .param p0, "sortType"    # Lcom/airbnb/android/models/SearchInfo$SortType;

    .prologue
    .line 118
    const-string/jumbo v0, "search_and_results"

    const/4 v1, 0x1

    const-string/jumbo v2, "filters"

    const-string/jumbo v3, "change_LM_sort_by"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "sort_by"

    iget-object v6, p0, Lcom/airbnb/android/models/SearchInfo$SortType;->trackingString:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 119
    return-void
.end method

.method public static trackLmbFiltersClick()V
    .registers 5

    .prologue
    .line 114
    const-string/jumbo v0, "search_and_results"

    const/4 v1, 0x1

    const-string/jumbo v2, "filters"

    const-string/jumbo v3, "LM_filter_click"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 115
    return-void
.end method

.method public static trackLmbResults(ILjava/lang/String;)V
    .registers 7
    .param p0, "totalListingsCount"    # I
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string/jumbo v1, "search"

    const-string/jumbo v2, "lmb_results_loaded"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "number_listings"

    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "lmb_city"

    if-nez p1, :cond_19

    const-string/jumbo p1, ""

    .end local p1    # "city":Ljava/lang/String;
    :cond_19
    invoke-virtual {v3, v4, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 94
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 95
    return-void
.end method

.method public static trackMapResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 59
    const-string/jumbo v1, "map_search_results"

    invoke-static {v1, p0, p1}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 60
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 61
    return-void
.end method

.method public static trackOpenLmb(Ljava/lang/String;)V
    .registers 6
    .param p0, "city"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string/jumbo v1, "search"

    const-string/jumbo v2, "use_lmb"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "lmb_city"

    if-nez p0, :cond_12

    const-string/jumbo p0, ""

    .end local p0    # "city":Ljava/lang/String;
    :cond_12
    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 89
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 90
    return-void
.end method

.method public static trackSearchAction(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 44
    const-string/jumbo v1, "search"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 45
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 46
    return-void
.end method

.method public static trackSearchResultsAction(Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 64
    const-string/jumbo v1, "search_results"

    invoke-static {v1, p0, p1}, Lcom/airbnb/android/analytics/SearchAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 65
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "search_and_results"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 66
    return-void
.end method
