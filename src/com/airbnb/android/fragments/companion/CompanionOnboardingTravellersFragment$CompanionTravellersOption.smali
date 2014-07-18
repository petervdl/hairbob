.class final enum Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;
.super Ljava/lang/Enum;
.source "CompanionOnboardingTravellersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CompanionTravellersOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

.field public static final enum COWORKERS:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

.field public static final enum FAMILY:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

.field public static final enum FRIENDS:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

.field public static final enum PARTNER:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

.field public static final enum SOLO:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;


# instance fields
.field private mStringResourceId:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    const-string/jumbo v1, "SOLO"

    const v2, 0x7f0e03be

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->SOLO:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .line 26
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    const-string/jumbo v1, "PARTNER"

    const v2, 0x7f0e03bd

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->PARTNER:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .line 27
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    const-string/jumbo v1, "FAMILY"

    const v2, 0x7f0e03ba

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->FAMILY:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .line 28
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    const-string/jumbo v1, "FRIENDS"

    const v2, 0x7f0e03bb

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->FRIENDS:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .line 29
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    const-string/jumbo v1, "COWORKERS"

    const v2, 0x7f0e03b9

    invoke-direct {v0, v1, v7, v2}, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->COWORKERS:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->SOLO:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->PARTNER:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->FAMILY:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->FRIENDS:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->COWORKERS:Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    aput-object v1, v0, v7

    sput-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->$VALUES:[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

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
    iput p3, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->mStringResourceId:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->$VALUES:[Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;

    return-object v0
.end method


# virtual methods
.method public getStringResourceId()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/airbnb/android/fragments/companion/CompanionOnboardingTravellersFragment$CompanionTravellersOption;->mStringResourceId:I

    return v0
.end method
