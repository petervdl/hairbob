.class public final enum Lcom/airbnb/android/activities/OauthActivity$Service;
.super Ljava/lang/Enum;
.source "OauthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/OauthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/OauthActivity$Service;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/OauthActivity$Service;

.field public static final enum FACEBOOK:Lcom/airbnb/android/activities/OauthActivity$Service;

.field public static final enum GOOGLE:Lcom/airbnb/android/activities/OauthActivity$Service;

.field public static final enum LINKEDIN:Lcom/airbnb/android/activities/OauthActivity$Service;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/airbnb/android/activities/OauthActivity$Service;

    const-string/jumbo v1, "FACEBOOK"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/OauthActivity$Service;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OauthActivity$Service;->FACEBOOK:Lcom/airbnb/android/activities/OauthActivity$Service;

    .line 15
    new-instance v0, Lcom/airbnb/android/activities/OauthActivity$Service;

    const-string/jumbo v1, "GOOGLE"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/activities/OauthActivity$Service;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OauthActivity$Service;->GOOGLE:Lcom/airbnb/android/activities/OauthActivity$Service;

    .line 16
    new-instance v0, Lcom/airbnb/android/activities/OauthActivity$Service;

    const-string/jumbo v1, "LINKEDIN"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/activities/OauthActivity$Service;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/OauthActivity$Service;->LINKEDIN:Lcom/airbnb/android/activities/OauthActivity$Service;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/activities/OauthActivity$Service;

    sget-object v1, Lcom/airbnb/android/activities/OauthActivity$Service;->FACEBOOK:Lcom/airbnb/android/activities/OauthActivity$Service;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/activities/OauthActivity$Service;->GOOGLE:Lcom/airbnb/android/activities/OauthActivity$Service;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/OauthActivity$Service;->LINKEDIN:Lcom/airbnb/android/activities/OauthActivity$Service;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/activities/OauthActivity$Service;->$VALUES:[Lcom/airbnb/android/activities/OauthActivity$Service;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/OauthActivity$Service;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/airbnb/android/activities/OauthActivity$Service;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/OauthActivity$Service;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/OauthActivity$Service;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/airbnb/android/activities/OauthActivity$Service;->$VALUES:[Lcom/airbnb/android/activities/OauthActivity$Service;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/OauthActivity$Service;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/OauthActivity$Service;

    return-object v0
.end method
