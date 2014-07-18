.class public Lcom/airbnb/android/analytics/SecurityCheckAnalytics;
.super Ljava/lang/Object;
.source "SecurityCheckAnalytics.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "security_check"

.field public static final PAGE:Ljava/lang/String; = "page"

.field public static final PAGE_ADD_PAYOUT:Ljava/lang/String; = "add_payout"

.field public static final PAGE_CONTACT_ENTER_CODE:Ljava/lang/String; = "enter_code"

.field public static final PAGE_CONTACT_IMPRESSION:Ljava/lang/String; = "contact"

.field public static final PAGE_CONTACT_SELECT_PHONE:Ljava/lang/String; = "select_phone"

.field public static final PAGE_PRELIST:Ljava/lang/String; = "prelist"

.field public static final PAGE_SELECT_ENTER_CODE:Ljava/lang/String; = "enter_code"

.field public static final PAGE_SELECT_PHONE:Ljava/lang/String; = "select_phone"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;
    .registers 7
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 19
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

    .line 20
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    if-eqz p3, :cond_1f

    .line 21
    invoke-virtual {v0, p3}, Lcom/airbnb/android/utils/Strap;->mix(Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    .line 23
    :cond_1f
    return-object v0
.end method

.method private static trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V
    .registers 7
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "section"    # Ljava/lang/String;
    .param p3, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 72
    invoke-static {p0, p1, p2, p3}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 73
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "security_check"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 74
    return-void
.end method

.method public static trackCodeResponse(Z)V
    .registers 7
    .param p0, "satisfied"    # Z

    .prologue
    .line 67
    const-string/jumbo v1, "enter_code"

    const-string/jumbo v2, "response"

    const-string/jumbo v3, ""

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "satisfied"

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v4, v5, v0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 68
    return-void

    .line 67
    :cond_1b
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static trackContactImpression(Lcom/airbnb/android/utils/Strap;)V
    .registers 4
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 51
    const-string/jumbo v0, "contact"

    const-string/jumbo v1, "impression"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2, p0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 52
    return-void
.end method

.method public static trackEnterCodeImpression(Lcom/airbnb/android/utils/Strap;)V
    .registers 4
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 47
    const-string/jumbo v0, "enter_code"

    const-string/jumbo v1, "impression"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2, p0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 48
    return-void
.end method

.method public static trackPayoutDismiss(Lcom/airbnb/android/utils/Strap;)V
    .registers 4
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 39
    const-string/jumbo v0, "add_payout"

    const-string/jumbo v1, "dismiss"

    const-string/jumbo v2, "security_check"

    invoke-static {v0, v1, v2, p0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 40
    return-void
.end method

.method public static trackPayoutPresent(Lcom/airbnb/android/utils/Strap;)V
    .registers 4
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 35
    const-string/jumbo v0, "add_payout"

    const-string/jumbo v1, "present"

    const-string/jumbo v2, "security_check"

    invoke-static {v0, v1, v2, p0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 36
    return-void
.end method

.method public static trackPrelistDismiss(Lcom/airbnb/android/utils/Strap;)V
    .registers 4
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 31
    const-string/jumbo v0, "prelist"

    const-string/jumbo v1, "dismiss"

    const-string/jumbo v2, "security_check"

    invoke-static {v0, v1, v2, p0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 32
    return-void
.end method

.method public static trackPrelistPresent(Lcom/airbnb/android/utils/Strap;)V
    .registers 4
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 27
    const-string/jumbo v0, "prelist"

    const-string/jumbo v1, "present"

    const-string/jumbo v2, "security_check"

    invoke-static {v0, v1, v2, p0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 28
    return-void
.end method

.method public static trackSelectPhoneCall(J)V
    .registers 7
    .param p0, "id"    # J

    .prologue
    .line 55
    const-string/jumbo v0, "select_phone"

    const-string/jumbo v1, "click"

    const-string/jumbo v2, "verify_via_call"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4, p0, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 56
    return-void
.end method

.method public static trackSelectPhoneImpression(Lcom/airbnb/android/utils/Strap;)V
    .registers 4
    .param p0, "additionalParams"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 43
    const-string/jumbo v0, "select_phone"

    const-string/jumbo v1, "impression"

    const-string/jumbo v2, ""

    invoke-static {v0, v1, v2, p0}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 44
    return-void
.end method

.method public static trackSelectSMS(J)V
    .registers 7
    .param p0, "id"    # J

    .prologue
    .line 59
    const-string/jumbo v0, "select_phone"

    const-string/jumbo v1, "click"

    const-string/jumbo v2, "verify_via_sms"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "id"

    invoke-virtual {v3, v4, p0, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;J)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 60
    return-void
.end method

.method public static trackSubmitCode(Ljava/lang/String;)V
    .registers 7
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 63
    const-string/jumbo v0, "enter_code"

    const-string/jumbo v1, "click"

    const-string/jumbo v2, "submit"

    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    const-string/jumbo v4, "code_length"

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;I)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/airbnb/android/analytics/SecurityCheckAnalytics;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/utils/Strap;)V

    .line 64
    return-void
.end method
