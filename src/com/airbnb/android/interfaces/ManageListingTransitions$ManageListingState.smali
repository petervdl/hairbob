.class public final enum Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;
.super Ljava/lang/Enum;
.source "ManageListingTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/ManageListingTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManageListingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum EditAddress:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum EnableInstantBook:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum ListingDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum LocationSelection:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum LongTermPricing:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum OptionalDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum PhotoManagement:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum PostListHome:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum PreListHome:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

.field public static final enum TextEdit:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "PreListHome"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->PreListHome:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 13
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "PostListHome"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->PostListHome:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 14
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "TextEdit"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->TextEdit:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 15
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "RoomsAndBeds"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 16
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "BasePrice"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 17
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "Currency"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 18
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "LongTermPricing"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->LongTermPricing:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 19
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "AdditionalCharges"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 20
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "EnableInstantBook"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->EnableInstantBook:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 21
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "Amenities"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 22
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "Terms"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 23
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "LocationSelection"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->LocationSelection:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 24
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "EditAddress"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->EditAddress:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 25
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "Location"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 26
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "Calendar"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 27
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "ListingDetails"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->ListingDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 28
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "OptionalDetails"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->OptionalDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 29
    new-instance v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    const-string/jumbo v1, "PhotoManagement"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->PhotoManagement:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    .line 11
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->PreListHome:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->PostListHome:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->TextEdit:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->RoomsAndBeds:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->BasePrice:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Currency:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->LongTermPricing:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->AdditionalCharges:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->EnableInstantBook:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Amenities:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Terms:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->LocationSelection:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->EditAddress:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Location:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->Calendar:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->ListingDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->OptionalDetails:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->PhotoManagement:Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->$VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->$VALUES:[Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/ManageListingTransitions$ManageListingState;

    return-object v0
.end method
