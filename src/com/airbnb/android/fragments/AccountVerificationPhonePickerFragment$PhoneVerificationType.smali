.class public final enum Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;
.super Ljava/lang/Enum;
.source "AccountVerificationPhonePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneVerificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

.field public static final enum PHONE_CALL:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

.field public static final enum SMS:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    const-string/jumbo v1, "PHONE_CALL"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->PHONE_CALL:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    .line 34
    new-instance v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    const-string/jumbo v1, "SMS"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->SMS:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    sget-object v1, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->PHONE_CALL:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->SMS:Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->$VALUES:[Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->$VALUES:[Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/AccountVerificationPhonePickerFragment$PhoneVerificationType;

    return-object v0
.end method
