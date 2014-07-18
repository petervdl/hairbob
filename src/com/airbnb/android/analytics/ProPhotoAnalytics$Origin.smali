.class public final enum Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
.super Ljava/lang/Enum;
.source "ProPhotoAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/analytics/ProPhotoAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

.field public static final enum EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

.field public static final enum HOSPITALITY:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v1, "HOSPITALITY"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->HOSPITALITY:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    .line 43
    new-instance v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    const-string/jumbo v1, "EDIT_LISTING"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    sget-object v1, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->HOSPITALITY:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->EDIT_LISTING:Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->$VALUES:[Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->$VALUES:[Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    invoke-virtual {v0}, [Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/analytics/ProPhotoAnalytics$Origin;

    return-object v0
.end method
