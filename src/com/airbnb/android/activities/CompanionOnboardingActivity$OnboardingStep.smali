.class final enum Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;
.super Ljava/lang/Enum;
.source "CompanionOnboardingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/CompanionOnboardingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OnboardingStep"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

.field public static final enum MARKET_FAMILIARITY:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

.field public static final enum SELECT_INTERESTS:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

.field public static final enum SELECT_TRAVELLERS:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

.field public static final enum START:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->START:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    .line 32
    new-instance v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    const-string/jumbo v1, "SELECT_INTERESTS"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->SELECT_INTERESTS:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    .line 33
    new-instance v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    const-string/jumbo v1, "SELECT_TRAVELLERS"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->SELECT_TRAVELLERS:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    .line 34
    new-instance v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    const-string/jumbo v1, "MARKET_FAMILIARITY"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->MARKET_FAMILIARITY:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    sget-object v1, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->START:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->SELECT_INTERESTS:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->SELECT_TRAVELLERS:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->MARKET_FAMILIARITY:Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->$VALUES:[Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->$VALUES:[Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/CompanionOnboardingActivity$OnboardingStep;

    return-object v0
.end method
