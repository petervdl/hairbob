.class public final enum Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;
.super Ljava/lang/Enum;
.source "ProPhotographyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/ProPhotographyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProPhotoStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

.field public static final enum AVAILABLE:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

.field public static final enum FINISHED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

.field public static final enum NOT_AVAILABLE:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

.field public static final enum REQUESTED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    const-string/jumbo v1, "NOT_AVAILABLE"

    const-string/jumbo v2, "not_available"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->NOT_AVAILABLE:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    .line 24
    new-instance v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    const-string/jumbo v1, "AVAILABLE"

    const-string/jumbo v2, "available"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->AVAILABLE:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    .line 25
    new-instance v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    const-string/jumbo v1, "REQUESTED"

    const-string/jumbo v2, "requested"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->REQUESTED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    .line 26
    new-instance v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    const-string/jumbo v1, "FINISHED"

    const-string/jumbo v2, "finished"

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->FINISHED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->NOT_AVAILABLE:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->AVAILABLE:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->REQUESTED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->FINISHED:Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->$VALUES:[Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->value:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->$VALUES:[Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/ProPhotographyActivity$ProPhotoStatus;

    return-object v0
.end method
