.class final enum Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
.super Ljava/lang/Enum;
.source "CompanionOnboardingInterestsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CompanionInterest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

.field public static final enum ART_AND_CULTURE:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

.field public static final enum FAMILY_AND_FRIENDS:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

.field public static final enum FOOD_AND_DRINK:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

.field public static final enum LIVE_MUSIC:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

.field public static final enum NIGHTLIFE:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

.field public static final enum OUTDOOR_ACTIVITIES:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

.field public static final enum ROMANCE:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

.field public static final enum WORK:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;


# instance fields
.field private mDrawableIconId:I

.field private mStringResourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    const-string/jumbo v1, "ART_AND_CULTURE"

    const v2, 0x7f02017c

    const v3, 0x7f0e0383

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->ART_AND_CULTURE:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 25
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    const-string/jumbo v1, "FOOD_AND_DRINK"

    const v2, 0x7f02017d

    const v3, 0x7f0e0385

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->FOOD_AND_DRINK:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 26
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    const-string/jumbo v1, "OUTDOOR_ACTIVITIES"

    const v2, 0x7f020181

    const v3, 0x7f0e0388

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->OUTDOOR_ACTIVITIES:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 27
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    const-string/jumbo v1, "FAMILY_AND_FRIENDS"

    const v2, 0x7f02017e

    const v3, 0x7f0e0384

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->FAMILY_AND_FRIENDS:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 28
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    const-string/jumbo v1, "NIGHTLIFE"

    const v2, 0x7f020180

    const v3, 0x7f0e0387

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->NIGHTLIFE:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 29
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    const-string/jumbo v1, "LIVE_MUSIC"

    const/4 v2, 0x5

    const v3, 0x7f02017f

    const v4, 0x7f0e0386

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->LIVE_MUSIC:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 30
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    const-string/jumbo v1, "WORK"

    const/4 v2, 0x6

    const v3, 0x7f020183

    const v4, 0x7f0e038a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->WORK:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 31
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    const-string/jumbo v1, "ROMANCE"

    const/4 v2, 0x7

    const v3, 0x7f020182

    const v4, 0x7f0e0389

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->ROMANCE:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->ART_AND_CULTURE:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->FOOD_AND_DRINK:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->OUTDOOR_ACTIVITIES:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    aput-object v1, v0, v7

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->FAMILY_AND_FRIENDS:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    aput-object v1, v0, v8

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->NIGHTLIFE:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->LIVE_MUSIC:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->WORK:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->ROMANCE:Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->$VALUES:[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p3, "iconId"    # I
    .param p4, "name"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->mDrawableIconId:I

    .line 38
    iput p4, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->mStringResourceId:I

    .line 39
    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    .prologue
    .line 23
    iget v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->mStringResourceId:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->$VALUES:[Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;

    return-object v0
.end method


# virtual methods
.method public getDrawableIconId()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->mDrawableIconId:I

    return v0
.end method

.method public getStringResourceId()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingInterestsFragment$CompanionInterest;->mStringResourceId:I

    return v0
.end method
