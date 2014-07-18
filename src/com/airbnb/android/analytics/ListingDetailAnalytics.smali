.class public Lcom/airbnb/android/analytics/ListingDetailAnalytics;
.super Ljava/lang/Object;
.source "ListingDetailAnalytics.java"


# static fields
.field public static final EVENT_NAME:Ljava/lang/String; = "P3"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static trackClickAboutHost(JJ)V
    .registers 9
    .param p0, "listingId"    # J
    .param p2, "hostUserId"    # J

    .prologue
    .line 47
    const-string/jumbo v0, "P3"

    const/4 v1, 0x1

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "PAGE"

    const-string/jumbo v4, "LISTING_PAGE"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "LISTING_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "SECTION"

    const-string/jumbo v4, "ABOUT_HOST"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "ACTION"

    const-string/jumbo v4, "CLICK"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "HOST_USER_ID"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 53
    return-void
.end method

.method public static trackClickAmenities(JI)V
    .registers 8
    .param p0, "listingId"    # J
    .param p2, "amenitiesCount"    # I

    .prologue
    .line 65
    const-string/jumbo v0, "P3"

    const/4 v1, 0x1

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "PAGE"

    const-string/jumbo v4, "LISTING_PAGE"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "LISTING_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "SECTION"

    const-string/jumbo v4, "AMENITIES"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "ACTION"

    const-string/jumbo v4, "CLICK"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "AMENITIES_COUNT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 71
    return-void
.end method

.method public static trackClickBook(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "listingId"    # J
    .param p2, "bookType"    # Ljava/lang/String;
    .param p3, "optionalBookingType"    # Ljava/lang/String;
    .param p4, "ctaButton"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "PAGE"

    const-string/jumbo v3, "LISTING_PAGE"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "LISTING_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "SECTION"

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "BUTTONS"

    invoke-virtual {v1, v2, p4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "ACTION"

    const-string/jumbo v3, "CLICK"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 31
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    if-eqz p3, :cond_3d

    .line 32
    const-string/jumbo v1, "BOOKING_TYPE"

    if-eqz p3, :cond_45

    .end local p3    # "optionalBookingType":Ljava/lang/String;
    :goto_39
    invoke-virtual {v0, v1, p3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 35
    :cond_3d
    const-string/jumbo v1, "P3"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 36
    return-void

    .line 32
    .restart local p3    # "optionalBookingType":Ljava/lang/String;
    :cond_45
    const-string/jumbo p3, ""

    goto :goto_39
.end method

.method public static trackClickCancellationPolicy(J)V
    .registers 7
    .param p0, "listingId"    # J

    .prologue
    .line 39
    const-string/jumbo v0, "P3"

    const/4 v1, 0x1

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "PAGE"

    const-string/jumbo v4, "LISTING_PAGE"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "LISTING_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "SECTION"

    const-string/jumbo v4, "CANCELLATION_POLICY"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "ACTION"

    const-string/jumbo v4, "CLICK"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 44
    return-void
.end method

.method public static trackClickMap(J)V
    .registers 7
    .param p0, "listingId"    # J

    .prologue
    .line 74
    const-string/jumbo v0, "P3"

    const/4 v1, 0x1

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "PAGE"

    const-string/jumbo v4, "LISTING_PAGE"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "LISTING_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "SECTION"

    const-string/jumbo v4, "MAP"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "ACTION"

    const-string/jumbo v4, "CLICK"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 79
    return-void
.end method

.method public static trackClickPhotos(JLjava/lang/String;)V
    .registers 8
    .param p0, "listingId"    # J
    .param p2, "photoSwipeCount"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v0, "P3"

    const/4 v1, 0x1

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "PAGE"

    const-string/jumbo v4, "LISTING_PAGE"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "LISTING_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "SECTION"

    const-string/jumbo v4, "PHOTOS"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "ACTION"

    const-string/jumbo v4, "CLICK"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "PHOTO_SWIPE_COUNT"

    invoke-virtual {v2, v3, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 96
    return-void
.end method

.method public static trackClickReviews(JI)V
    .registers 8
    .param p0, "listingId"    # J
    .param p2, "reviewsCount"    # I

    .prologue
    .line 56
    const-string/jumbo v0, "P3"

    const/4 v1, 0x1

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "PAGE"

    const-string/jumbo v4, "LISTING_PAGE"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "LISTING_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "SECTION"

    const-string/jumbo v4, "REVIEWS"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "ACTION"

    const-string/jumbo v4, "CLICK"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "REVIEWS_COUNT"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 62
    return-void
.end method

.method public static trackClickShare(J)V
    .registers 7
    .param p0, "listingId"    # J

    .prologue
    .line 82
    const-string/jumbo v0, "P3"

    const/4 v1, 0x1

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "PAGE"

    const-string/jumbo v4, "LISTING_PAGE"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "LISTING_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "SECTION"

    const-string/jumbo v4, "SHARE"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "ACTION"

    const-string/jumbo v4, "CLICK"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 87
    return-void
.end method

.method public static trackViewListingPage(JLjava/lang/String;)V
    .registers 8
    .param p0, "listingId"    # J
    .param p2, "ctaButton"    # Ljava/lang/String;

    .prologue
    .line 16
    const-string/jumbo v0, "P3"

    const/4 v1, 0x1

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "PAGE"

    const-string/jumbo v4, "LISTING_PAGE"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "LISTING_ID"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "SECTION"

    const-string/jumbo v4, "GENERAL"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "BUTTONS"

    invoke-virtual {v2, v3, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "ACTION"

    const-string/jumbo v4, "VIEW"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 22
    return-void
.end method
