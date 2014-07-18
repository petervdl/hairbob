.class public final enum Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;
.super Ljava/lang/Enum;
.source "PayoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/PayoutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

.field public static final enum ACH:Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

.field public static final enum BANK_TRANSFER:Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

.field public static final enum PAYPAL:Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

.field static mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    const-string/jumbo v1, "ACH"

    const-string/jumbo v2, "ACH"

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->ACH:Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    .line 42
    new-instance v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    const-string/jumbo v1, "PAYPAL"

    const-string/jumbo v2, "PayPal"

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->PAYPAL:Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    .line 43
    new-instance v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    const-string/jumbo v1, "BANK_TRANSFER"

    const-string/jumbo v2, "Bank Transfer"

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->BANK_TRANSFER:Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    sget-object v1, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->ACH:Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->PAYPAL:Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->BANK_TRANSFER:Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->$VALUES:[Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "apiResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    invoke-static {}, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->initializeMapIfNeeded()V

    .line 68
    invoke-static {p3, p0}, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->addKey(Ljava/lang/String;Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;)V

    .line 69
    iput-object p3, p0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method static addKey(Ljava/lang/String;Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;)V
    .registers 3
    .param p0, "paymentMethod"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    .prologue
    .line 49
    sget-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method static contains(Ljava/lang/String;)Z
    .registers 2
    .param p0, "paymentMethod"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static get(Ljava/lang/String;)Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;
    .registers 2
    .param p0, "paymentMethod"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    return-object v0
.end method

.method static initializeMapIfNeeded()V
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->mMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->mMap:Ljava/util/HashMap;

    .line 56
    :cond_b
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->$VALUES:[Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    invoke-virtual {v0}, [Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/activities/PayoutActivity$PaymentMethod;

    return-object v0
.end method
