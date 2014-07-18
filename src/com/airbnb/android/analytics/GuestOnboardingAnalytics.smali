.class public Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;
.super Ljava/lang/Object;
.source "GuestOnboardingAnalytics.java"


# static fields
.field public static final EVENT_GUEST_ONBOARDING:Ljava/lang/String; = "guest_onboarding"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 4
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 11
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v1, "event_page"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public static trackProfilePhotoConfirmation(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string/jumbo v0, "guest_onboarding"

    const/4 v1, 0x1

    const-string/jumbo v2, "profile_photo_confirmation"

    invoke-static {v2, p0}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 20
    return-void
.end method

.method public static trackProfilePhotoPrompt(Ljava/lang/String;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string/jumbo v0, "guest_onboarding"

    const/4 v1, 0x1

    const-string/jumbo v2, "profile_photo_prompt"

    invoke-static {v2, p0}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 16
    return-void
.end method

.method public static trackShowAddProfilePhotoFlow(Ljava/lang/String;)V
    .registers 4
    .param p0, "page"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string/jumbo v0, "guest_onboarding"

    const/4 v1, 0x1

    const-string/jumbo v2, "prompt_for_profile_photo"

    invoke-static {p0, v2}, Lcom/airbnb/android/analytics/GuestOnboardingAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 24
    return-void
.end method
