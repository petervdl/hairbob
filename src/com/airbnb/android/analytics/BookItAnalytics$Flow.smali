.class public final enum Lcom/airbnb/android/analytics/BookItAnalytics$Flow;
.super Ljava/lang/Enum;
.source "BookItAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/analytics/BookItAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/analytics/BookItAnalytics$Flow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

.field public static final enum BOOK_IT:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

.field public static final enum INQUIRY:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

.field public static final enum SEARCH_FILTER:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    const-string/jumbo v1, "BOOK_IT"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->BOOK_IT:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    .line 14
    new-instance v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    const-string/jumbo v1, "INQUIRY"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->INQUIRY:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    .line 15
    new-instance v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    const-string/jumbo v1, "SEARCH_FILTER"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->SEARCH_FILTER:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    sget-object v1, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->BOOK_IT:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->INQUIRY:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->SEARCH_FILTER:Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->$VALUES:[Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/analytics/BookItAnalytics$Flow;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/analytics/BookItAnalytics$Flow;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->$VALUES:[Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    invoke-virtual {v0}, [Lcom/airbnb/android/analytics/BookItAnalytics$Flow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/analytics/BookItAnalytics$Flow;

    return-object v0
.end method
