.class public final enum Lcom/airbnb/android/interfaces/RichMessage$SentStatus;
.super Ljava/lang/Enum;
.source "RichMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/RichMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SentStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/RichMessage$SentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

.field public static final enum FAILED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

.field public static final enum NONE:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

.field public static final enum RECEIVED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

.field public static final enum SENDING:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    const-string/jumbo v1, "SENDING"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->SENDING:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .line 20
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    const-string/jumbo v1, "RECEIVED"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->RECEIVED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .line 21
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->FAILED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .line 22
    new-instance v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->NONE:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->SENDING:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->RECEIVED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->FAILED:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->NONE:Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->$VALUES:[Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/RichMessage$SentStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/RichMessage$SentStatus;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->$VALUES:[Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/RichMessage$SentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/RichMessage$SentStatus;

    return-object v0
.end method
