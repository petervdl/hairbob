.class final enum Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;
.super Ljava/lang/Enum;
.source "CompanionOnboardingMarketFamiliarityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MarketFamiliarityOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

.field public static final enum DONT_KNOW:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

.field public static final enum KNOW_BETTER:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

.field public static final enum NEVER_BEEN:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

.field public static final enum SECOND_HOME:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;


# instance fields
.field private mStringResourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    const-string/jumbo v1, "NEVER_BEEN"

    const v2, 0x7f0e038e

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->NEVER_BEEN:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    .line 27
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    const-string/jumbo v1, "DONT_KNOW"

    const v2, 0x7f0e038c

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->DONT_KNOW:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    .line 28
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    const-string/jumbo v1, "KNOW_BETTER"

    const v2, 0x7f0e038d

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->KNOW_BETTER:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    .line 29
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    const-string/jumbo v1, "SECOND_HOME"

    const v2, 0x7f0e0390

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->SECOND_HOME:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->NEVER_BEEN:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->DONT_KNOW:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->KNOW_BETTER:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->SECOND_HOME:Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->$VALUES:[Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "stringResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput p3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->mStringResourceId:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->$VALUES:[Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;

    return-object v0
.end method


# virtual methods
.method public getStringResourceId()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingMarketFamiliarityFragment$MarketFamiliarityOption;->mStringResourceId:I

    return v0
.end method
