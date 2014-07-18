.class public Lcom/airbnb/android/analytics/CannedMessageAnalytics;
.super Ljava/lang/Object;
.source "CannedMessageAnalytics.java"


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "canned_messages"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;
    .registers 5
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "role"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {}, Lcom/airbnb/android/utils/Strap;->make()Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "event_page"

    invoke-virtual {v0, v1, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1, p2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public static trackCannedMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "role"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0, p1, p2}, Lcom/airbnb/android/analytics/CannedMessageAnalytics;->makeParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 20
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "canned_messages"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 21
    return-void
.end method
