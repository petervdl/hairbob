.class public Lcom/airbnb/android/analytics/DiscoverAnalytics;
.super Ljava/lang/Object;
.source "DiscoverAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;
    }
.end annotation


# static fields
.field public static final EVENT_DISCOVER:Ljava/lang/String; = "discovery"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static getTravelLocationActionParams(Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;ILjava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 9
    .param p0, "locationPageRecord"    # Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    .param p1, "feedIndex"    # I
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v2, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->selectedLocation:Lcom/airbnb/android/models/TravelLocation;

    .line 80
    .local v2, "travelLocation":Lcom/airbnb/android/models/TravelLocation;
    iget v0, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->viewPagerPosition:I

    .line 81
    .local v0, "locationIndex":I
    iget-boolean v3, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->isLoopingEnabled:Z

    if-eqz v3, :cond_a

    .line 82
    add-int/lit8 v0, v0, -0x2

    .line 85
    :cond_a
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "location_title"

    invoke-virtual {v2}, Lcom/airbnb/android/models/TravelLocation;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "location_type"

    invoke-virtual {v2}, Lcom/airbnb/android/models/TravelLocation;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "location_index"

    invoke-virtual {v3, v4, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "feed_index"

    invoke-virtual {v3, v4, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 91
    .local v1, "params":Lcom/airbnb/android/utils/Strap;
    sget-object v3, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    invoke-static {v3, p2, v1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    return-object v3
.end method

.method private static makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 7
    .param p0, "page"    # Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 40
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "page"

    invoke-virtual {p0}, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getAffiliateParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 41
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    if-eqz p2, :cond_24

    .line 42
    invoke-virtual {v0, p2}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 44
    :cond_24
    return-object v0
.end method

.method public static trackClickLmbHostUpsell()V
    .registers 4

    .prologue
    .line 102
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->UPSELL_LMB:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "click_upsell"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 103
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 104
    return-void
.end method

.method public static trackDismissLmbHostUpsell()V
    .registers 4

    .prologue
    .line 107
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->UPSELL_LMB:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "dismiss_upsell"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 108
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 109
    return-void
.end method

.method public static trackImpression(ZLjava/lang/String;)V
    .registers 7
    .param p0, "hasLastMinuteDeals"    # Z
    .param p1, "lmbCity"    # Ljava/lang/String;

    .prologue
    .line 117
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "impression"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "has_lmb"

    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Z)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "lmb_city"

    invoke-virtual {v3, v4, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 118
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 119
    return-void
.end method

.method public static trackLastMinuteDealsCalloutClick(Ljava/lang/String;)V
    .registers 6
    .param p0, "city"    # Ljava/lang/String;

    .prologue
    .line 48
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->LMB:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "click_lmb"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "lmb_city"

    if-nez p0, :cond_11

    const-string/jumbo p0, ""

    .end local p0    # "city":Ljava/lang/String;
    :cond_11
    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 49
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 50
    return-void
.end method

.method public static trackListingClick(Lcom/airbnb/android/models/Listing;)V
    .registers 8
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 122
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "listing_click"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "listing_id"

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 123
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 124
    return-void
.end method

.method public static trackListingSwipe(Lcom/airbnb/android/models/Listing;I)V
    .registers 9
    .param p0, "listing"    # Lcom/airbnb/android/models/Listing;
    .param p1, "position"    # I

    .prologue
    .line 137
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "listing_swipe"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "listing_id"

    invoke-virtual {p0}, Lcom/airbnb/android/models/Listing;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "page_num"

    invoke-virtual {v3, v4, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 138
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 139
    return-void
.end method

.method public static trackLoadMore(I)V
    .registers 6
    .param p0, "pageNumber"    # I

    .prologue
    .line 142
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "down_scroll"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "page_num"

    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 143
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 144
    return-void
.end method

.method public static trackMenuClick()V
    .registers 4

    .prologue
    .line 152
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "menu_click"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 153
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 154
    return-void
.end method

.method public static trackOpenWishlistPopover()V
    .registers 4

    .prologue
    .line 147
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "open_wishlist_popover"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 148
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 149
    return-void
.end method

.method public static trackPopularRequestTime(J)V
    .registers 7
    .param p0, "time"    # J

    .prologue
    .line 112
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "discover_feed_request_time"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "request_time"

    invoke-virtual {v3, v4, p0, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 113
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 114
    return-void
.end method

.method public static trackReferralCardClick()V
    .registers 4

    .prologue
    .line 132
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "referral_click"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 133
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 134
    return-void
.end method

.method public static trackSearchClick()V
    .registers 4

    .prologue
    .line 157
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "search_click"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 158
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 159
    return-void
.end method

.method public static trackTravelLocationClick(Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;I)V
    .registers 5
    .param p0, "locationPageRecord"    # Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    .param p1, "feedIndex"    # I

    .prologue
    .line 65
    const-string/jumbo v1, "click_location"

    invoke-static {p0, p1, v1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->getTravelLocationActionParams(Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;ILjava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 66
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->loggingParams:Lcom/airbnb/android/utils/Strap;

    if-eqz v1, :cond_10

    .line 67
    iget-object v1, p0, Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;->loggingParams:Lcom/airbnb/android/utils/Strap;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 69
    :cond_10
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 70
    return-void
.end method

.method public static trackTravelLocationSwipe(Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;IZ)V
    .registers 7
    .param p0, "locationPageRecord"    # Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;
    .param p1, "feedIndex"    # I
    .param p2, "autoScroll"    # Z

    .prologue
    .line 95
    const-string/jumbo v1, "swipe_location"

    invoke-static {p0, p1, v1}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->getTravelLocationActionParams(Lcom/airbnb/android/adapters/DiscoverAdapter$LocationPageRecord;ILjava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "swipe_type"

    if-eqz p2, :cond_1b

    const-string/jumbo v1, "auto"

    :goto_f
    invoke-virtual {v2, v3, v1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 98
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 99
    return-void

    .line 95
    .end local v0    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_1b
    const-string/jumbo v1, "manual"

    goto :goto_f
.end method

.method public static trackVideoClicked(Lcom/airbnb/android/models/VideoFeedItem;I)V
    .registers 6
    .param p0, "videoFeedItem"    # Lcom/airbnb/android/models/VideoFeedItem;
    .param p1, "feedIndex"    # I

    .prologue
    .line 53
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "click_video"

    invoke-virtual {p0}, Lcom/airbnb/android/models/VideoFeedItem;->getLoggingParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 54
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "feed_index"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    .line 55
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 56
    return-void
.end method

.method public static trackWebLinkClicked(Lcom/airbnb/android/models/WebLinkFeedItem;I)V
    .registers 6
    .param p0, "webLinkFeedItem"    # Lcom/airbnb/android/models/WebLinkFeedItem;
    .param p1, "feedIndex"    # I

    .prologue
    .line 59
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "click_web_link"

    invoke-virtual {p0}, Lcom/airbnb/android/models/WebLinkFeedItem;->getLoggingParams()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 60
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "feed_index"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    .line 61
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 62
    return-void
.end method

.method public static trackWishlistClick(Lcom/airbnb/android/models/Collection;)V
    .registers 8
    .param p0, "collection"    # Lcom/airbnb/android/models/Collection;

    .prologue
    .line 127
    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v2, "wishlist_click"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "wishlist_id"

    invoke-virtual {p0}, Lcom/airbnb/android/models/Collection;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/airbnb/android/analytics/DiscoverAnalytics;->makeParams(Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 128
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "discovery"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 129
    return-void
.end method
