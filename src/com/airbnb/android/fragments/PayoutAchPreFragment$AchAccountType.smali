.class public final enum Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;
.super Ljava/lang/Enum;
.source "PayoutAchPreFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/PayoutAchPreFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AchAccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

.field public static final enum CHECKING:Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

.field public static final enum SAVINGS:Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;


# instance fields
.field public final apiName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    const-string/jumbo v1, "CHECKING"

    const-string/jumbo v2, "Checking"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->CHECKING:Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    .line 20
    new-instance v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    const-string/jumbo v1, "SAVINGS"

    const-string/jumbo v2, "Savings"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->SAVINGS:Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    sget-object v1, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->CHECKING:Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->SAVINGS:Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->$VALUES:[Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "apiName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->apiName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->$VALUES:[Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/PayoutAchPreFragment$AchAccountType;

    return-object v0
.end method
