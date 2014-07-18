.class public final enum Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;
.super Ljava/lang/Enum;
.source "ManageListingTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/ManageListingTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListingPricing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

.field public static final enum AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

.field public static final enum BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

.field public static final enum Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

.field public static final enum LongTermPrices:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;


# instance fields
.field public mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    const-string/jumbo v1, "BasePrice"

    const v2, 0x7f0e04ba

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    .line 34
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    const-string/jumbo v1, "LongTermPrices"

    const v2, 0x7f0e04f6

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->LongTermPrices:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    .line 35
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    const-string/jumbo v1, "AdditionalCharges"

    const v2, 0x7f0e074a

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    .line 36
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    const-string/jumbo v1, "Currency"

    const v2, 0x7f0e04c1

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->LongTermPrices:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    aput-object v1, v0, v6

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->$VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->mTitleId:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->$VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingPricing;

    return-object v0
.end method
