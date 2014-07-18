.class public final enum Lcom/airbnb/android/activities/ROActivity$LaunchState;
.super Ljava/lang/Enum;
.source "ROActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/ROActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/ROActivity$LaunchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/ROActivity$LaunchState;

.field public static final enum Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

.field public static final enum Itinerary:Lcom/airbnb/android/activities/ROActivity$LaunchState;

.field public static final enum Message:Lcom/airbnb/android/activities/ROActivity$LaunchState;

.field public static final enum Respond:Lcom/airbnb/android/activities/ROActivity$LaunchState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;

    const-string/jumbo v1, "Default"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/ROActivity$LaunchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .line 43
    new-instance v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;

    const-string/jumbo v1, "Message"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/activities/ROActivity$LaunchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Message:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .line 44
    new-instance v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;

    const-string/jumbo v1, "Respond"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/activities/ROActivity$LaunchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Respond:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .line 45
    new-instance v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;

    const-string/jumbo v1, "Itinerary"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/activities/ROActivity$LaunchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Itinerary:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    .line 41
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/activities/ROActivity$LaunchState;

    sget-object v1, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Default:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Message:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Respond:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/activities/ROActivity$LaunchState;->Itinerary:Lcom/airbnb/android/activities/ROActivity$LaunchState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;->$VALUES:[Lcom/airbnb/android/activities/ROActivity$LaunchState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/ROActivity$LaunchState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 41
    const-class v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/ROActivity$LaunchState;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/airbnb/android/activities/ROActivity$LaunchState;->$VALUES:[Lcom/airbnb/android/activities/ROActivity$LaunchState;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/ROActivity$LaunchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/ROActivity$LaunchState;

    return-object v0
.end method
