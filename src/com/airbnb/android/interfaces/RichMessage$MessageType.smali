.class public final enum Lcom/airbnb/android/interfaces/RichMessage$MessageType;
.super Ljava/lang/Enum;
.source "RichMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/RichMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/RichMessage$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/RichMessage$MessageType;

.field public static final enum COMPANION_RECEIVED_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

.field public static final enum LC_AGENT_PROGRESS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

.field public static final enum LC_MAP:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

.field public static final enum RECEIVED_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

.field public static final enum SENT_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

.field public static final enum STATUS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    const-string/jumbo v1, "SENT_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->SENT_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    .line 11
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    const-string/jumbo v1, "RECEIVED_TEXT"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->RECEIVED_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    .line 12
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    const-string/jumbo v1, "COMPANION_RECEIVED_TEXT"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->COMPANION_RECEIVED_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    .line 13
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    const-string/jumbo v1, "STATUS"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->STATUS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    .line 14
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    const-string/jumbo v1, "LC_MAP"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->LC_MAP:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    .line 15
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    const-string/jumbo v1, "LC_AGENT_PROGRESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/RichMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->LC_AGENT_PROGRESS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->SENT_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->RECEIVED_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->COMPANION_RECEIVED_TEXT:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->STATUS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->LC_MAP:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->LC_AGENT_PROGRESS:Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->$VALUES:[Lcom/airbnb/android/interfaces/RichMessage$MessageType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/RichMessage$MessageType;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/airbnb/android/interfaces/RichMessage$MessageType;->$VALUES:[Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/RichMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/RichMessage$MessageType;

    return-object v0
.end method
