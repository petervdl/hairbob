.class public Lcom/airbnb/android/analytics/HospitalityAnalytics;
.super Ljava/lang/Object;
.source "HospitalityAnalytics.java"


# static fields
.field private static final EVENT_TYPE_CHECKLIST_VIEWED:Ljava/lang/String; = "check_list_clicked"

.field private static final EVENT_TYPE_CTA_CLICKED:Ljava/lang/String; = "cta_clicked"

.field private static final EVENT_TYPE_STANDARD_CLICKED:Ljava/lang/String; = "standard_click"

.field private static final PAGE_TYPE_INDEX:Ljava/lang/String; = "standards_list"

.field private static final PAGE_TYPE_STANDARD:Ljava/lang/String; = "standard_page"

.field private static final PATTERN_HOSPITALITY_STANDARD:Ljava/util/regex/Pattern;

.field private static final PLATFORM:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE:Ljava/lang/String; = "hospitality"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/airbnb/android/analytics/HospitalityAnalytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/analytics/HospitalityAnalytics;->TAG:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "/hospitality/([a-z-]+)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/analytics/HospitalityAnalytics;->PATTERN_HOSPITALITY_STANDARD:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeStrap()Lcom/airbnb/android/utils/Strap;
    .registers 3

    .prologue
    .line 49
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 50
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "c1"

    const-string/jumbo v2, "hospitality"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 51
    const-string/jumbo v1, "c8"

    const-string/jumbo v2, "Android"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    .line 52
    return-object v0
.end method

.method public static trackChecklistViewed(Ljava/lang/String;)V
    .registers 5
    .param p0, "standardName"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {}, Lcom/airbnb/android/analytics/HospitalityAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "standard_page"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "check_list_clicked"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 30
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    sget-object v1, Lcom/airbnb/android/analytics/HospitalityAnalytics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "trackChecklistViewed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {v0}, Lcom/airbnb/android/analytics/HospitalityAnalytics;->trackHospitalityEvent(Lcom/airbnb/android/utils/Strap;)V

    .line 32
    return-void
.end method

.method public static trackCtaClicked(Ljava/lang/String;)V
    .registers 5
    .param p0, "callToActionIdentifier"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/airbnb/android/analytics/HospitalityAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "standard_page"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "cta_clicked"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 40
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    sget-object v1, Lcom/airbnb/android/analytics/HospitalityAnalytics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "trackCtaClicked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-static {v0}, Lcom/airbnb/android/analytics/HospitalityAnalytics;->trackHospitalityEvent(Lcom/airbnb/android/utils/Strap;)V

    .line 42
    return-void
.end method

.method private static trackHospitalityEvent(Lcom/airbnb/android/utils/Strap;)V
    .registers 3
    .param p0, "strap"    # Lcom/airbnb/android/utils/Strap;

    .prologue
    .line 45
    const-string/jumbo v0, "hospitality"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 46
    return-void
.end method

.method public static trackStandardClickedFromFragment(Ljava/lang/String;)V
    .registers 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "path":Ljava/lang/String;
    sget-object v4, Lcom/airbnb/android/analytics/HospitalityAnalytics;->PATTERN_HOSPITALITY_STANDARD:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 58
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 59
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "standardName":Ljava/lang/String;
    invoke-static {}, Lcom/airbnb/android/analytics/HospitalityAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "c2"

    const-string/jumbo v6, "standards_list"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "c3"

    const-string/jumbo v6, "standard_click"

    invoke-virtual {v4, v5, v6}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v4

    const-string/jumbo v5, "c4"

    invoke-virtual {v4, v5, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v3

    .line 66
    .local v3, "strap":Lcom/airbnb/android/utils/Strap;
    invoke-static {v3}, Lcom/airbnb/android/analytics/HospitalityAnalytics;->trackHospitalityEvent(Lcom/airbnb/android/utils/Strap;)V

    .line 70
    .end local v2    # "standardName":Ljava/lang/String;
    .end local v3    # "strap":Lcom/airbnb/android/utils/Strap;
    :goto_3b
    return-void

    .line 68
    :cond_3c
    sget-object v4, Lcom/airbnb/android/analytics/HospitalityAnalytics;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Could not find a hospitality standard in URL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method
