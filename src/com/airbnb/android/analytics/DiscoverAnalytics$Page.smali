.class final enum Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;
.super Ljava/lang/Enum;
.source "DiscoverAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/analytics/DiscoverAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

.field public static final enum FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

.field public static final enum LMB:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

.field public static final enum UPSELL_LMB:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;


# instance fields
.field private mTrackingString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v1, "FEED"

    const-string/jumbo v2, "feed"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    .line 24
    new-instance v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v1, "LMB"

    const-string/jumbo v2, "lmb"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->LMB:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    .line 25
    new-instance v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    const-string/jumbo v1, "UPSELL_LMB"

    const-string/jumbo v2, "upsell_lmb"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->UPSELL_LMB:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->FEED:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->LMB:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->UPSELL_LMB:Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->$VALUES:[Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "trackingString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->mTrackingString:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->$VALUES:[Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    invoke-virtual {v0}, [Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/airbnb/android/analytics/DiscoverAnalytics$Page;->mTrackingString:Ljava/lang/String;

    return-object v0
.end method
