.class public Lcom/airbnb/android/analytics/ProPhotoAnalytics;
.super Ljava/lang/Object;
.source "ProPhotoAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    }
.end annotation


# static fields
.field public static final CANCEL_CLICK:Ljava/lang/String; = "cancel_photography_click"

.field public static final CANCEL_CONFIRM:Ljava/lang/String; = "cancel_request_click"

.field public static final CANCEL_REQ:Ljava/lang/String; = "cancel_request"

.field public static final CANCEL_SUCCESS:Ljava/lang/String; = "request_cancelled"

.field public static final CANCEL_VIEW:Ljava/lang/String; = "cancel_request"

.field public static final CONFIRM_REQ:Ljava/lang/String; = "confirm_request"

.field public static final FROM_EDIT_LISTING:Ljava/lang/String; = "edit_listing"

.field public static final FROM_HOSPITALITY:Ljava/lang/String; = "hospitality"

.field public static final GET_PHOTO:Ljava/lang/String; = "get_photography"

.field public static final IMPRESSION:Ljava/lang/String; = "impressions"

.field public static final LIMIT_VIEW:Ljava/lang/String; = "limit_reached"

.field public static final MANAGE_PHOTO_REQUEST:Ljava/lang/String; = "get_photography_click"

.field public static final MANAGE_PHOTO_VIEW:Ljava/lang/String; = "photos_home"

.field public static final PHOTOS_HOME:Ljava/lang/String; = "photos_home"

.field public static final PHOTO_ACT_VIEW:Ljava/lang/String; = "get_photography"

.field public static final PRO_PHOTO_EVENT:Ljava/lang/String; = "pro_photography"

.field public static final REQUEST_CLICK:Ljava/lang/String; = "apply_now_click"

.field public static final REQUEST_CONFIRM:Ljava/lang/String; = "submit_click"

.field public static final REQUEST_SUCCESS:Ljava/lang/String; = "application_submitted"

.field public static final REQUEST_VIEW:Ljava/lang/String; = "confirm_request"

.field public static final SEL_LISTING:Ljava/lang/String; = "select_listing"

.field public static final SEL_LIST_CLICK:Ljava/lang/String; = "select_listing_click"

.field public static final SEL_LIST_VIEW:Ljava/lang/String; = "select_listing"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static makeStrap(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;)Lcom/airbnb/android/utils/Strap;
    .registers 5
    .param p0, "origin"    # Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    .prologue
    .line 61
    sget-object v1, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    if-ne p0, v1, :cond_1d

    const-string/jumbo v0, "edit_listing"

    .line 62
    .local v0, "originText":Ljava/lang/String;
    :goto_7
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c1"

    const-string/jumbo v3, "pro_photography"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    invoke-virtual {v1, v2, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    return-object v1

    .line 61
    .end local v0    # "originText":Ljava/lang/String;
    :cond_1d
    const-string/jumbo v0, "hospitality"

    goto :goto_7
.end method

.method public static trackClick(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "origin"    # Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    .param p1, "typeString"    # Ljava/lang/String;
    .param p2, "clickString"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->makeStrap(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 55
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "c3"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->HOSPITALITY:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    if-ne p0, v1, :cond_1e

    const-string/jumbo v1, "c4"

    :goto_12
    invoke-virtual {v0, v1, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 57
    const-string/jumbo v1, "pro_photography"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 58
    return-void

    .line 56
    :cond_1e
    const-string/jumbo v1, "c5"

    goto :goto_12
.end method

.method public static trackImpression(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;Ljava/lang/String;)V
    .registers 5
    .param p0, "origin"    # Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    .param p1, "impressionString"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/airbnb/android/analytics/ProPhotoAnalytics;->makeStrap(Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 48
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "c3"

    const-string/jumbo v2, "impressions"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->HOSPITALITY:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    if-ne p0, v1, :cond_21

    const-string/jumbo v1, "c4"

    :goto_15
    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 50
    const-string/jumbo v1, "pro_photography"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 51
    return-void

    .line 49
    :cond_21
    const-string/jumbo v1, "c5"

    goto :goto_15
.end method
