.class public final enum Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;
.super Ljava/lang/Enum;
.source "AccountVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/AccountVerificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

.field public static final enum Listing:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

.field public static final enum Payout:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;


# instance fields
.field public mBody:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    const-string/jumbo v1, "Listing"

    const v2, 0x7f0e06ce

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->Listing:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    .line 24
    new-instance v0, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    const-string/jumbo v1, "Payout"

    const v2, 0x7f0e06cd

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->Payout:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    sget-object v1, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->Listing:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->Payout:Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->$VALUES:[Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "body"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->mBody:I

    .line 30
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->$VALUES:[Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/AccountVerificationActivity$VerificationType;

    return-object v0
.end method
