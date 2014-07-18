.class public final enum Lcom/yozio/android/Constants$LOG_LEVEL;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yozio/android/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LOG_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yozio/android/Constants$LOG_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEBUG:Lcom/yozio/android/Constants$LOG_LEVEL;

.field private static final synthetic ENUM$VALUES:[Lcom/yozio/android/Constants$LOG_LEVEL;

.field public static final enum ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

.field public static final enum INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

.field public static final enum VERBOSE:Lcom/yozio/android/Constants$LOG_LEVEL;

.field public static final enum WARN:Lcom/yozio/android/Constants$LOG_LEVEL;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v1, "VERBOSE"

    invoke-direct {v0, v1, v2}, Lcom/yozio/android/Constants$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yozio/android/Constants$LOG_LEVEL;->VERBOSE:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v0, Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v1, "DEBUG"

    invoke-direct {v0, v1, v3}, Lcom/yozio/android/Constants$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yozio/android/Constants$LOG_LEVEL;->DEBUG:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v0, Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v1, "INFO"

    invoke-direct {v0, v1, v4}, Lcom/yozio/android/Constants$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v0, Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v1, "WARN"

    invoke-direct {v0, v1, v5}, Lcom/yozio/android/Constants$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yozio/android/Constants$LOG_LEVEL;->WARN:Lcom/yozio/android/Constants$LOG_LEVEL;

    new-instance v0, Lcom/yozio/android/Constants$LOG_LEVEL;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/yozio/android/Constants$LOG_LEVEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yozio/android/Constants$LOG_LEVEL;

    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->VERBOSE:Lcom/yozio/android/Constants$LOG_LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->DEBUG:Lcom/yozio/android/Constants$LOG_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->INFO:Lcom/yozio/android/Constants$LOG_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->WARN:Lcom/yozio/android/Constants$LOG_LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yozio/android/Constants$LOG_LEVEL;->ERROR:Lcom/yozio/android/Constants$LOG_LEVEL;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yozio/android/Constants$LOG_LEVEL;->ENUM$VALUES:[Lcom/yozio/android/Constants$LOG_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yozio/android/Constants$LOG_LEVEL;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/yozio/android/Constants$LOG_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yozio/android/Constants$LOG_LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/yozio/android/Constants$LOG_LEVEL;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/yozio/android/Constants$LOG_LEVEL;->ENUM$VALUES:[Lcom/yozio/android/Constants$LOG_LEVEL;

    array-length v1, v0

    new-array v2, v1, [Lcom/yozio/android/Constants$LOG_LEVEL;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
