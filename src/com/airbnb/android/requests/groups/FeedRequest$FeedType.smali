.class public final enum Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
.super Ljava/lang/Enum;
.source "FeedRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/requests/groups/FeedRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

.field public static final enum MINE:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

.field public static final enum POPULAR:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

.field public static final enum RECENT:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    const-string/jumbo v1, "RECENT"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->RECENT:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .line 19
    new-instance v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    const-string/jumbo v1, "POPULAR"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->POPULAR:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .line 20
    new-instance v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    const-string/jumbo v1, "MINE"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->MINE:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    sget-object v1, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->RECENT:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->POPULAR:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->MINE:Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->$VALUES:[Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->$VALUES:[Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    invoke-virtual {v0}, [Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/requests/groups/FeedRequest$FeedType;

    return-object v0
.end method
