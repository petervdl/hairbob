.class public final enum Lcom/android/volley/Request$ReturnStrategy;
.super Ljava/lang/Enum;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReturnStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/volley/Request$ReturnStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/volley/Request$ReturnStrategy;

.field public static final enum CACHE_IF_NETWORK_FAILS:Lcom/android/volley/Request$ReturnStrategy;

.field public static final enum DOUBLE:Lcom/android/volley/Request$ReturnStrategy;

.field public static final enum NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

.field public static final enum NETWORK_ONLY:Lcom/android/volley/Request$ReturnStrategy;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/android/volley/Request$ReturnStrategy;

    const-string/jumbo v1, "DOUBLE"

    invoke-direct {v0, v1, v2}, Lcom/android/volley/Request$ReturnStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$ReturnStrategy;->DOUBLE:Lcom/android/volley/Request$ReturnStrategy;

    .line 67
    new-instance v0, Lcom/android/volley/Request$ReturnStrategy;

    const-string/jumbo v1, "NETWORK_IF_NO_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/android/volley/Request$ReturnStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    .line 68
    new-instance v0, Lcom/android/volley/Request$ReturnStrategy;

    const-string/jumbo v1, "CACHE_IF_NETWORK_FAILS"

    invoke-direct {v0, v1, v4}, Lcom/android/volley/Request$ReturnStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$ReturnStrategy;->CACHE_IF_NETWORK_FAILS:Lcom/android/volley/Request$ReturnStrategy;

    .line 69
    new-instance v0, Lcom/android/volley/Request$ReturnStrategy;

    const-string/jumbo v1, "NETWORK_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/android/volley/Request$ReturnStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_ONLY:Lcom/android/volley/Request$ReturnStrategy;

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/volley/Request$ReturnStrategy;

    sget-object v1, Lcom/android/volley/Request$ReturnStrategy;->DOUBLE:Lcom/android/volley/Request$ReturnStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_IF_NO_CACHE:Lcom/android/volley/Request$ReturnStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/volley/Request$ReturnStrategy;->CACHE_IF_NETWORK_FAILS:Lcom/android/volley/Request$ReturnStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/volley/Request$ReturnStrategy;->NETWORK_ONLY:Lcom/android/volley/Request$ReturnStrategy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/volley/Request$ReturnStrategy;->$VALUES:[Lcom/android/volley/Request$ReturnStrategy;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/volley/Request$ReturnStrategy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lcom/android/volley/Request$ReturnStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/volley/Request$ReturnStrategy;

    return-object v0
.end method

.method public static values()[Lcom/android/volley/Request$ReturnStrategy;
    .registers 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/volley/Request$ReturnStrategy;->$VALUES:[Lcom/android/volley/Request$ReturnStrategy;

    invoke-virtual {v0}, [Lcom/android/volley/Request$ReturnStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/volley/Request$ReturnStrategy;

    return-object v0
.end method
