.class public final enum Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;
.super Ljava/lang/Enum;
.source "GroupsAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/analytics/GroupsAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupsOrigin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

.field public static final enum HOSPITALITY:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

.field public static final enum HOST_HOME:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

.field public static final enum LEFT_NAV:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

.field public static final enum PUSH_NOTIFICATION:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

.field public static final enum WEB_INTENT:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;


# instance fields
.field private final mOrigin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    const-string/jumbo v1, "HOST_HOME"

    const-string/jumbo v2, "host_home"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->HOST_HOME:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    .line 101
    new-instance v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    const-string/jumbo v1, "LEFT_NAV"

    const-string/jumbo v2, "left_nav"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->LEFT_NAV:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    .line 102
    new-instance v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    const-string/jumbo v1, "HOSPITALITY"

    const-string/jumbo v2, "hospitality"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->HOSPITALITY:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    .line 103
    new-instance v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    const-string/jumbo v1, "PUSH_NOTIFICATION"

    const-string/jumbo v2, "push_notification"

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->PUSH_NOTIFICATION:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    .line 104
    new-instance v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    const-string/jumbo v1, "WEB_INTENT"

    const-string/jumbo v2, "web_intent"

    invoke-direct {v0, v1, v7, v2}, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->WEB_INTENT:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    .line 99
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    sget-object v1, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->HOST_HOME:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->LEFT_NAV:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->HOSPITALITY:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->PUSH_NOTIFICATION:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->WEB_INTENT:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    aput-object v1, v0, v7

    sput-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->$VALUES:[Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput-object p3, p0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->mOrigin:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->$VALUES:[Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-virtual {v0}, [Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    return-object v0
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->mOrigin:Ljava/lang/String;

    return-object v0
.end method
