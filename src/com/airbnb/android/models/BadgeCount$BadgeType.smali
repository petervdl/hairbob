.class public final enum Lcom/airbnb/android/models/BadgeCount$BadgeType;
.super Ljava/lang/Enum;
.source "BadgeCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/BadgeCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BadgeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/BadgeCount$BadgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/BadgeCount$BadgeType;

.field public static final enum HostGroups:Lcom/airbnb/android/models/BadgeCount$BadgeType;

.field public static final enum HostHome:Lcom/airbnb/android/models/BadgeCount$BadgeType;

.field public static final enum TravelInbox:Lcom/airbnb/android/models/BadgeCount$BadgeType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;

    const-string/jumbo v1, "HostHome"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/BadgeCount$BadgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;->HostHome:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    .line 10
    new-instance v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;

    const-string/jumbo v1, "TravelInbox"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/models/BadgeCount$BadgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;->TravelInbox:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    .line 11
    new-instance v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;

    const-string/jumbo v1, "HostGroups"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/models/BadgeCount$BadgeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;->HostGroups:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/models/BadgeCount$BadgeType;

    sget-object v1, Lcom/airbnb/android/models/BadgeCount$BadgeType;->HostHome:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/models/BadgeCount$BadgeType;->TravelInbox:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/models/BadgeCount$BadgeType;->HostGroups:Lcom/airbnb/android/models/BadgeCount$BadgeType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;->$VALUES:[Lcom/airbnb/android/models/BadgeCount$BadgeType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/BadgeCount$BadgeType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/BadgeCount$BadgeType;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/airbnb/android/models/BadgeCount$BadgeType;->$VALUES:[Lcom/airbnb/android/models/BadgeCount$BadgeType;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/BadgeCount$BadgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/BadgeCount$BadgeType;

    return-object v0
.end method