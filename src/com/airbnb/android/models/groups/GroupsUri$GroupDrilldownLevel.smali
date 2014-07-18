.class public final enum Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;
.super Ljava/lang/Enum;
.source "GroupsUri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/groups/GroupsUri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupDrilldownLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

.field public static final enum COMMENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

.field public static final enum COMMUNITY:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

.field public static final enum CONTENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

.field public static final enum GROUP:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    const-string/jumbo v1, "COMMUNITY"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->COMMUNITY:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    .line 19
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    const-string/jumbo v1, "GROUP"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->GROUP:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    .line 20
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    const-string/jumbo v1, "CONTENT"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->CONTENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    .line 21
    new-instance v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    const-string/jumbo v1, "COMMENT"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->COMMENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->COMMUNITY:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->GROUP:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->CONTENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->COMMENT:Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->$VALUES:[Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

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

.method public static getDrilldownLevel(J)Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;
    .registers 5
    .param p0, "id"    # J

    .prologue
    .line 24
    long-to-int v0, p0

    .line 26
    .local v0, "i":I
    invoke-static {}, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->values()[Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    move-result-object v1

    .line 27
    .local v1, "values":[Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;
    if-ltz v0, :cond_d

    array-length v2, v1

    if-ge v0, v2, :cond_d

    .line 28
    aget-object v2, v1, v0

    .line 30
    :goto_c
    return-object v2

    :cond_d
    const/4 v2, 0x0

    goto :goto_c
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->$VALUES:[Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/groups/GroupsUri$GroupDrilldownLevel;

    return-object v0
.end method
