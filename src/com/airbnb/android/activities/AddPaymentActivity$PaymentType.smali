.class public final enum Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;
.super Ljava/lang/Enum;
.source "AddPaymentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/AddPaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

.field public static final enum CreditCard:Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

.field public static final enum GoogleWallet:Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;


# instance fields
.field public mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    const-string/jumbo v1, "CreditCard"

    const v2, 0x7f0e0749

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->CreditCard:Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    .line 19
    new-instance v0, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    const-string/jumbo v1, "GoogleWallet"

    invoke-direct {v0, v1, v4, v3}, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->GoogleWallet:Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    sget-object v1, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->CreditCard:Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->GoogleWallet:Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->$VALUES:[Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "titleId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->mTitleId:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->$VALUES:[Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/AddPaymentActivity$PaymentType;

    return-object v0
.end method
