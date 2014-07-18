.class public Lcom/airbnb/android/analytics/SwipeIndicatorsAnalytics;
.super Ljava/lang/Object;
.source "SwipeIndicatorsAnalytics.java"


# static fields
.field public static final EVENT:Ljava/lang/String; = "swipe_indicators"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 5
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v1, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v1}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "operation"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 17
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    return-object v0
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0, p1}, Lcom/airbnb/android/analytics/SwipeIndicatorsAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 22
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "swipe_indicators"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 23
    return-void
.end method
