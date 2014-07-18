.class public final enum Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;
.super Ljava/lang/Enum;
.source "ManageListingTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/ManageListingTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListingDetails"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

.field public static final enum Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

.field public static final enum Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

.field public static final enum Details:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

.field public static final enum HouseManual:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

.field public static final enum Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

.field public static final enum RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

.field public static final enum Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;


# instance fields
.field public mTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const-string/jumbo v1, "Location"

    const v2, 0x7f0e04f5

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 59
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const-string/jumbo v1, "Calendar"

    const v2, 0x7f0e00a8

    invoke-direct {v0, v1, v5, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 60
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const-string/jumbo v1, "Details"

    const v2, 0x7f0e04c7

    invoke-direct {v0, v1, v6, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Details:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 61
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const-string/jumbo v1, "Amenities"

    const v2, 0x7f0e04b8

    invoke-direct {v0, v1, v7, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 62
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const-string/jumbo v1, "RoomsAndBeds"

    const v2, 0x7f0e0488

    invoke-direct {v0, v1, v8, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 63
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const-string/jumbo v1, "HouseManual"

    const/4 v2, 0x5

    const v3, 0x7f0e04e3

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->HouseManual:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 64
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    const-string/jumbo v1, "Terms"

    const/4 v2, 0x6

    const v3, 0x7f0e051c

    invoke-direct {v0, v1, v2, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Details:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    aput-object v1, v0, v7

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->HouseManual:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->$VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput p3, p0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->mTitleId:I

    .line 70
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->$VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ListingDetails;

    return-object v0
.end method
