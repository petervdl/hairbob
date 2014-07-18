.class public final enum Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
.super Ljava/lang/Enum;
.source "ReviewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/ReviewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReviewsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

.field public static final enum MODE_ALL:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

.field public static final enum MODE_GUEST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

.field public static final enum MODE_HOST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

.field public static final enum MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    const-string/jumbo v1, "MODE_ALL"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_ALL:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 22
    new-instance v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    const-string/jumbo v1, "MODE_GUEST"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_GUEST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 23
    new-instance v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    const-string/jumbo v1, "MODE_HOST"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_HOST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 24
    new-instance v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    const-string/jumbo v1, "MODE_LISTING"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    .line 20
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    sget-object v1, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_ALL:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_GUEST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_HOST:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->MODE_LISTING:Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->$VALUES:[Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;
    .registers 1

    .prologue
    .line 20
    sget-object v0, Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->$VALUES:[Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/ReviewsActivity$ReviewsMode;

    return-object v0
.end method
