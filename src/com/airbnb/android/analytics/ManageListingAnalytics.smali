.class public Lcom/airbnb/android/analytics/ManageListingAnalytics;
.super Ljava/lang/Object;
.source "ManageListingAnalytics.java"


# static fields
.field public static final IB_ADVANCE_NOTICE_CHANGE:Ljava/lang/String; = "instant_book_lead_time_change"

.field public static final IB_ADVANCE_NOTICE_FOCUS:Ljava/lang/String; = "instant_book_lead_time_focus"

.field public static final IB_ADVANCE_NOTICE_SAVE:Ljava/lang/String; = "instant_book_lead_time_save"

.field public static final IB_CHECKBOX_CHANGE:Ljava/lang/String; = "instant_book_checkbox_change"

.field public static final IB_CHECKBOX_SAVE:Ljava/lang/String; = "instant_book_checkbox_save"

.field public static final IB_FTUE_IMMERSIVE:Ljava/lang/String; = "ftue_immersive"

.field public static final IB_FTUE_MODAL:Ljava/lang/String; = "ftue_modal"

.field public static final IB_FTUE_PRESS_SKIP:Ljava/lang/String; = "click_skip"

.field public static final IB_FTUE_PRESS_TRY_IB:Ljava/lang/String; = "click_try_instant_book"

.field public static final IB_FTUE_PRESS_UP:Ljava/lang/String; = "click_up"

.field public static final IB_VISIBILITY_CHANGE:Ljava/lang/String; = "instant_book_visibility__change"

.field public static final IB_VISIBILITY_FOCUS:Ljava/lang/String; = "instant_book_visibility_focus"

.field public static final IB_VISIBILITY_SAVE:Ljava/lang/String; = "instant_book_visibility_save"

.field public static final IMPRESSIONS:Ljava/lang/String; = "impressions"

.field public static final INSTANT_BOOK:Ljava/lang/String; = "instant_book"

.field public static final INSTANT_BOOK_FTUE:Ljava/lang/String; = "instant_book_ftue"

.field public static final MANAGE_LISTING:Ljava/lang/String; = "manage_listing_v2"

.field public static final NAV:Ljava/lang/String; = "navigation"

.field public static final PL_INSTANT_BOOK:Ljava/lang/String; = "post_list_instant_book"

.field public static final SOFT_SUSPENSION:Ljava/lang/String; = "host_standards_friendly_suspension"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFtueTypeString(Z)Ljava/lang/String;
    .registers 2
    .param p0, "isImmersive"    # Z

    .prologue
    .line 37
    if-eqz p0, :cond_6

    const-string/jumbo v0, "ftue_immersive"

    :goto_5
    return-object v0

    :cond_6
    const-string/jumbo v0, "ftue_modal"

    goto :goto_5
.end method

.method public static trackHostStandardsImpressions()V
    .registers 5

    .prologue
    .line 41
    const-string/jumbo v0, "host_standards_friendly_suspension"

    const/4 v1, 0x1

    new-instance v2, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v2}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v3, "page"

    const-string/jumbo v4, "listings_dialog"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    const-string/jumbo v3, "operation"

    const-string/jumbo v4, "impressions"

    invoke-virtual {v2, v3, v4}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 44
    return-void
.end method

.method public static trackInstantBookAdvanceNoticeChanged(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;)V
    .registers 5
    .param p0, "notice"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .prologue
    .line 140
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    const-string/jumbo v3, "instant_book_lead_time_change"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    iget v3, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 146
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 147
    return-void
.end method

.method public static trackInstantBookAdvanceNoticeFocus()V
    .registers 4

    .prologue
    .line 131
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    const-string/jumbo v3, "instant_book_lead_time_focus"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 136
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 137
    return-void
.end method

.method public static trackInstantBookAdvanceNoticeSaved(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;)V
    .registers 5
    .param p0, "notice"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    .prologue
    .line 150
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    const-string/jumbo v3, "instant_book_lead_time_save"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    iget v3, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 156
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 157
    return-void
.end method

.method public static trackInstantBookCheckboxChange(Z)V
    .registers 7
    .param p0, "isEnabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 160
    if-eqz p0, :cond_43

    move v0, v2

    .line 161
    .local v0, "intValue":I
    :goto_4
    new-instance v3, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v3}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v4, "c1"

    const-string/jumbo v5, "manage_listing_v2"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "c2"

    const-string/jumbo v5, "instant_book"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "c3"

    const-string/jumbo v5, "instant_book"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "c4"

    const-string/jumbo v5, "instant_book_checkbox_change"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "c5"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 167
    .local v1, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v3, "manage_listing_v2"

    invoke-static {v3, v2, v1}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 168
    return-void

    .line 160
    .end local v0    # "intValue":I
    .end local v1    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_43
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static trackInstantBookCheckboxSaved(Z)V
    .registers 7
    .param p0, "isEnabled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 171
    if-eqz p0, :cond_43

    move v0, v2

    .line 172
    .local v0, "intValue":I
    :goto_4
    new-instance v3, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v3}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v4, "c1"

    const-string/jumbo v5, "manage_listing_v2"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "c2"

    const-string/jumbo v5, "instant_book"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "c3"

    const-string/jumbo v5, "instant_book"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "c4"

    const-string/jumbo v5, "instant_book_checkbox_save"

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "c5"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    .line 178
    .local v1, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v3, "manage_listing_v2"

    invoke-static {v3, v2, v1}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 179
    return-void

    .line 171
    .end local v0    # "intValue":I
    .end local v1    # "strap":Lcom/airbnb/android/utils/Strap;
    :cond_43
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static trackInstantBookFtueImpressions(Z)V
    .registers 5
    .param p0, "isImmersive"    # Z

    .prologue
    .line 47
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book_ftue"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "impressions"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-static {p0}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->getFtueTypeString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 52
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 53
    return-void
.end method

.method public static trackInstantBookFtuePressSkip(I)V
    .registers 6
    .param p0, "page"    # I

    .prologue
    const/4 v4, 0x1

    .line 66
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book_ftue"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "click_skip"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-static {v4}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->getFtueTypeString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 72
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    invoke-static {v1, v4, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 73
    return-void
.end method

.method public static trackInstantBookFtuePressTry(IZ)V
    .registers 6
    .param p0, "page"    # I
    .param p1, "isImmersive"    # Z

    .prologue
    .line 56
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book_ftue"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "click_try_instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-static {p1}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->getFtueTypeString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 62
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 63
    return-void
.end method

.method public static trackInstantBookFtuePressUp(I)V
    .registers 6
    .param p0, "page"    # I

    .prologue
    const/4 v4, 0x1

    .line 76
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book_ftue"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "click_up"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-static {v4}, Lcom/airbnb/android/analytics/ManageListingAnalytics;->getFtueTypeString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 82
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    invoke-static {v1, v4, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 83
    return-void
.end method

.method public static trackInstantBookSettingsImpressions()V
    .registers 4

    .prologue
    .line 86
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "impressions"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "post_list_instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 90
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 91
    return-void
.end method

.method public static trackInstantBookSettingsNavigation()V
    .registers 4

    .prologue
    .line 94
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "navigation"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "post_list_instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 98
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 99
    return-void
.end method

.method public static trackInstantBookVisibilityChanged(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;)V
    .registers 5
    .param p0, "visibility"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .prologue
    .line 111
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    const-string/jumbo v3, "instant_book_visibility__change"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    iget-object v3, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 117
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 118
    return-void
.end method

.method public static trackInstantBookVisibilityFocus()V
    .registers 4

    .prologue
    .line 102
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    const-string/jumbo v3, "instant_book_visibility_focus"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 107
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 108
    return-void
.end method

.method public static trackInstantBookVisibilitySaved(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;)V
    .registers 5
    .param p0, "visibility"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    .prologue
    .line 121
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "manage_listing_v2"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "instant_book"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    const-string/jumbo v3, "instant_book_visibility_save"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    iget-object v3, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 127
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "manage_listing_v2"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 128
    return-void
.end method
