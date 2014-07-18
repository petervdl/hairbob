.class public Lcom/airbnb/android/analytics/VerifiedIdAnalytics;
.super Ljava/lang/Object;
.source "VerifiedIdAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/analytics/VerifiedIdAnalytics$VerifiedIdStrapper;
    }
.end annotation


# static fields
.field private static final COMPLETE_CATEGORY:Ljava/lang/String; = "COMPLETE"

.field private static final EMAIL_CATEGORY:Ljava/lang/String; = "EMAIL"

.field private static final GLOBAL_CATEGORY:Ljava/lang/String; = "GLOBAL"

.field private static final OFFLINE_CATEGORY:Ljava/lang/String; = "OFFLINE"

.field private static final ONLINE_CATEGORY:Ljava/lang/String; = "ONLINE"

.field private static final PHONE_CATEGORY:Ljava/lang/String; = "PHONE"

.field private static final PHOTO_CATEGORY:Ljava/lang/String; = "PHOTO"

.field public static final RESERVATION_ID_KEY:Ljava/lang/String; = "reservation_id"

.field public static final VERIFIED_ID_EVENT:Ljava/lang/String; = "verified_id"

.field private static final WELCOME_CATEGORY:Ljava/lang/String; = "WELCOME"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private static makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 9
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "view"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 373
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "category"

    invoke-virtual {v3, v4, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "view"

    invoke-virtual {v3, v4, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "action"

    invoke-virtual {v3, v4, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    .line 375
    .local v2, "params":Lcom/airbnb/android/utils/Strap;
    if-eqz p3, :cond_3f

    .line 376
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

    .line 377
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p3, v1}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 378
    invoke-virtual {p3, v1}, Lcom/airbnb/android/utils/Strap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    goto :goto_23

    .line 383
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :cond_3f
    return-object v2
.end method

.method public static trackBackPressed(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 355
    const-string/jumbo v1, "GLOBAL"

    const-string/jumbo v2, "NONE"

    const-string/jumbo v3, "BACK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 356
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 357
    return-void
.end method

.method public static trackCompleteStartDone(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 346
    const-string/jumbo v1, "COMPLETE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "DONE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 347
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 348
    return-void
.end method

.method public static trackCompleteStartView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 341
    const-string/jumbo v1, "COMPLETE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 342
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 343
    return-void
.end method

.method public static trackEmailConfirmView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 105
    const-string/jumbo v1, "EMAIL"

    const-string/jumbo v2, "CONFIRM"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 106
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 107
    return-void
.end method

.method public static trackEmailStartChange(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 95
    const-string/jumbo v1, "EMAIL"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "CHANGE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 96
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 97
    return-void
.end method

.method public static trackEmailStartSend(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 100
    const-string/jumbo v1, "EMAIL"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "SEND"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 101
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 102
    return-void
.end method

.method public static trackEmailStartView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 90
    const-string/jumbo v1, "EMAIL"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 91
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 92
    return-void
.end method

.method public static trackOfflineConfirmView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 278
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "CONFIRM"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 279
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 280
    return-void
.end method

.method public static trackOfflineCountryChange(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 183
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "COUNTRY"

    const-string/jumbo v3, "CHANGE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 184
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 185
    return-void
.end method

.method public static trackOfflineCountryNext(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 188
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "COUNTRY"

    const-string/jumbo v3, "NEXT"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 189
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 190
    return-void
.end method

.method public static trackOfflineCountryView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 178
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "COUNTRY"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 179
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 180
    return-void
.end method

.method public static trackOfflineErrorTryAgain(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 288
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "ERROR"

    const-string/jumbo v3, "TRY_AGAIN"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 289
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 290
    return-void
.end method

.method public static trackOfflineErrorView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 283
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "ERROR"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 284
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 285
    return-void
.end method

.method public static trackOfflineIdTypeDriversLicense(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 208
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "ID_TYPE"

    const-string/jumbo v3, "DRIVERS_LICENSE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 209
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 210
    return-void
.end method

.method public static trackOfflineIdTypeIdCard(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 203
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "ID_TYPE"

    const-string/jumbo v3, "ID_CARD"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 204
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 205
    return-void
.end method

.method public static trackOfflineIdTypePassport(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 198
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "ID_TYPE"

    const-string/jumbo v3, "PASSPORT"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 199
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 200
    return-void
.end method

.method public static trackOfflineIdTypeView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 193
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "ID_TYPE"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 194
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 195
    return-void
.end method

.method public static trackOfflinePhotoBackChoosePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 253
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_BACK"

    const-string/jumbo v3, "CHOOSE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 254
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 255
    return-void
.end method

.method public static trackOfflinePhotoBackConfirmApprovePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 268
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_BACK_CONFIRM"

    const-string/jumbo v3, "APPROVE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 269
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 270
    return-void
.end method

.method public static trackOfflinePhotoBackConfirmChangePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 263
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_BACK_CONFIRM"

    const-string/jumbo v3, "CHANGE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 264
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 265
    return-void
.end method

.method public static trackOfflinePhotoBackConfirmView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 258
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_BACK_CONFIRM"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 259
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 260
    return-void
.end method

.method public static trackOfflinePhotoBackTakePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 248
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_BACK"

    const-string/jumbo v3, "TAKE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 249
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 250
    return-void
.end method

.method public static trackOfflinePhotoBackView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 243
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_BACK"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 244
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 245
    return-void
.end method

.method public static trackOfflinePhotoFrontChoosePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 223
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_FRONT"

    const-string/jumbo v3, "CHOOSE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 224
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 225
    return-void
.end method

.method public static trackOfflinePhotoFrontConfirmApprovePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 238
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_FRONT_CONFIRM"

    const-string/jumbo v3, "APPROVE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 239
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 240
    return-void
.end method

.method public static trackOfflinePhotoFrontConfirmChangePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 233
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_FRONT_CONFIRM"

    const-string/jumbo v3, "CHANGE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 234
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 235
    return-void
.end method

.method public static trackOfflinePhotoFrontConfirmView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 228
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_FRONT_CONFIRM"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 229
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 230
    return-void
.end method

.method public static trackOfflinePhotoFrontTakePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 218
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_FRONT"

    const-string/jumbo v3, "TAKE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 219
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 220
    return-void
.end method

.method public static trackOfflinePhotoFrontView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 213
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "PHOTO_FRONT"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 214
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 215
    return-void
.end method

.method public static trackOfflineStartLearnMore(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 168
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "LEARN_MORE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 169
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 170
    return-void
.end method

.method public static trackOfflineStartScanId(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 173
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "SCAN_ID"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 174
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 175
    return-void
.end method

.method public static trackOfflineStartView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 163
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 164
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 165
    return-void
.end method

.method public static trackOfflineUploadPhotoView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 273
    const-string/jumbo v1, "OFFLINE"

    const-string/jumbo v2, "UPLOAD_PHOTO"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 274
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 275
    return-void
.end method

.method public static trackOnlineConfirmView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 332
    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "CONFIRM"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 333
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 334
    return-void
.end method

.method public static trackOnlineStartConfirmed(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 322
    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "CONFIRMED"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 323
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 324
    return-void
.end method

.method public static trackOnlineStartDenied(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 327
    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "DENIED"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 328
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 329
    return-void
.end method

.method public static trackOnlineStartFacebook(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 302
    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "FACEBOOK"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 303
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 304
    return-void
.end method

.method public static trackOnlineStartGoogle(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 312
    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "GOOGLE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 313
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 314
    return-void
.end method

.method public static trackOnlineStartLearnMore(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 317
    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "LEARN_MORE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 318
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 319
    return-void
.end method

.method public static trackOnlineStartLinkedIn(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 307
    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "LINKEDIN"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 308
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 309
    return-void
.end method

.method public static trackOnlineStartView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 297
    const-string/jumbo v1, "ONLINE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 298
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 299
    return-void
.end method

.method public static trackPhoneConfirmView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 154
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "CONFIRM"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 155
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 156
    return-void
.end method

.method public static trackPhonePendingDidSelectField(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 139
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "PENDING"

    const-string/jumbo v3, "DID_SELECT_FIELD"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 140
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 141
    return-void
.end method

.method public static trackPhonePendingDidType(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 144
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "PENDING"

    const-string/jumbo v3, "DID_TYPE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 145
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 146
    return-void
.end method

.method public static trackPhonePendingSend(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 149
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "PENDING"

    const-string/jumbo v3, "SEND"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 150
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 151
    return-void
.end method

.method public static trackPhonePendingView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 134
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "PENDING"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 135
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 136
    return-void
.end method

.method public static trackPhoneStartDidType(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 124
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "DID_TYPE"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 125
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 126
    return-void
.end method

.method public static trackPhoneStartSelectField(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 119
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "SELECT_FIELD"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 120
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 121
    return-void
.end method

.method public static trackPhoneStartSend(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 129
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "SEND"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 130
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 131
    return-void
.end method

.method public static trackPhoneStartView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 114
    const-string/jumbo v1, "PHONE"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 115
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 116
    return-void
.end method

.method public static trackPhotoApprovalApprovePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 76
    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "APPROVAL"

    const-string/jumbo v3, "APPROVE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 77
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 78
    return-void
.end method

.method public static trackPhotoApprovalChangePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 71
    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "APPROVAL"

    const-string/jumbo v3, "CHANGE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 72
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 73
    return-void
.end method

.method public static trackPhotoApprovalView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 66
    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "APPROVAL"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 67
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 68
    return-void
.end method

.method public static trackPhotoConfirmView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 81
    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "CONFIRM"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 82
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 83
    return-void
.end method

.method public static trackPhotoStartChoosePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 61
    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "CHOOSE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 62
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 63
    return-void
.end method

.method public static trackPhotoStartTakePhoto(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 56
    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "TAKE_PHOTO"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 57
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 58
    return-void
.end method

.method public static trackPhotoStartView(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 51
    const-string/jumbo v1, "PHOTO"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "VIEW"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 52
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 53
    return-void
.end method

.method public static trackWelcomeStartVerifyMe(Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 42
    const-string/jumbo v1, "WELCOME"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "VERIFY_ME"

    invoke-static {v1, v2, v3, p0}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 43
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 44
    return-void
.end method

.method public static trackWelcomeStartView(Lcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 37
    const-string/jumbo v1, "WELCOME"

    const-string/jumbo v2, "START"

    const-string/jumbo v3, "VIEW"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/airbnb/android/analytics/VerifiedIdAnalytics;->makeVerifiedIdParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 38
    .local v0, "params":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "verified_id"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 39
    return-void
.end method
