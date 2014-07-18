.class public Lcom/airbnb/android/analytics/EditProfileAnalytics;
.super Ljava/lang/Object;
.source "EditProfileAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/analytics/EditProfileAnalytics$1;
    }
.end annotation


# static fields
.field public static final EDIT_PROFILE:Ljava/lang/String; = "edit_profile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 7
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 16
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "operation"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "section"

    invoke-virtual {v1, v2, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 17
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    if-eqz p3, :cond_1f

    .line 18
    invoke-virtual {v0, p3}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 20
    :cond_1f
    return-object v0
.end method

.method public static trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 6
    .param p0, "operation"    # Ljava/lang/String;
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 24
    const-string/jumbo v1, "edit_profile"

    invoke-static {v1, p0, p1, p2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 25
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "edit_profile"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 26
    return-void
.end method

.method public static trackTextSectionAction(Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 5
    .param p0, "section"    # Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 32
    sget-object v0, Lcom/airbnb/android/analytics/EditProfileAnalytics$1;->$SwitchMap$com$airbnb$android$interfaces$EditProfileInterface$ProfileSection:[I

    invoke-virtual {p0}, Lcom/airbnb/android/interfaces/EditProfileInterface$ProfileSection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 52
    :goto_b
    return-void

    .line 34
    :pswitch_c
    const-string/jumbo v0, "about_me"

    invoke-static {p1, v0, p2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_b

    .line 37
    :pswitch_13
    const-string/jumbo v0, "email"

    invoke-static {p1, v0, p2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_b

    .line 40
    :pswitch_1a
    const-string/jumbo v0, "location"

    invoke-static {p1, v0, p2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_b

    .line 43
    :pswitch_21
    const-string/jumbo v0, "school"

    invoke-static {p1, v0, p2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_b

    .line 46
    :pswitch_28
    const-string/jumbo v0, "work"

    invoke-static {p1, v0, p2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_b

    .line 49
    :pswitch_2f
    const-string/jumbo v0, "name"

    invoke-static {p1, v0, p2}, Lcom/airbnb/android/analytics/EditProfileAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    goto :goto_b

    .line 32
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_c
        :pswitch_13
        :pswitch_1a
        :pswitch_21
        :pswitch_28
        :pswitch_2f
    .end packed-switch
.end method
