.class public final enum Lcom/airbnb/android/models/Amenities;
.super Ljava/lang/Enum;
.source "Amenities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/Amenities;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/Amenities;

.field public static final enum AC:Lcom/airbnb/android/models/Amenities;

.field public static final enum AllowsPets:Lcom/airbnb/android/models/Amenities;

.field public static final enum AllowsSmoking:Lcom/airbnb/android/models/Amenities;

.field public static final enum Breakfast:Lcom/airbnb/android/models/Amenities;

.field public static final enum Buzzer:Lcom/airbnb/android/models/Amenities;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/airbnb/android/models/Amenities;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Cable:Lcom/airbnb/android/models/Amenities;

.field public static final enum Doorman:Lcom/airbnb/android/models/Amenities;

.field public static final enum Dryer:Lcom/airbnb/android/models/Amenities;

.field public static final enum Elevator:Lcom/airbnb/android/models/Amenities;

.field public static final enum Essentials:Lcom/airbnb/android/models/Amenities;

.field public static final enum EventFriendly:Lcom/airbnb/android/models/Amenities;

.field public static final enum FamilyFriendly:Lcom/airbnb/android/models/Amenities;

.field public static final enum Fireplace:Lcom/airbnb/android/models/Amenities;

.field public static final enum FreeParking:Lcom/airbnb/android/models/Amenities;

.field public static final enum Gym:Lcom/airbnb/android/models/Amenities;

.field private static final HAS_PETS_AMENITIES:[Lcom/airbnb/android/models/Amenities;

.field public static final enum HandicapAccessible:Lcom/airbnb/android/models/Amenities;

.field public static final enum HasPetCats:Lcom/airbnb/android/models/Amenities;

.field public static final enum HasPetDogs:Lcom/airbnb/android/models/Amenities;

.field public static final enum HasPetOther:Lcom/airbnb/android/models/Amenities;

.field public static final enum HasPets:Lcom/airbnb/android/models/Amenities;

.field public static final enum Heating:Lcom/airbnb/android/models/Amenities;

.field public static final enum Internet:Lcom/airbnb/android/models/Amenities;

.field public static final enum Jacuzzi:Lcom/airbnb/android/models/Amenities;

.field public static final enum Kitchen:Lcom/airbnb/android/models/Amenities;

.field public static final enum Pool:Lcom/airbnb/android/models/Amenities;

.field public static final enum Shampoo:Lcom/airbnb/android/models/Amenities;

.field private static final TOP_AMENITIES_ARRAY:[Lcom/airbnb/android/models/Amenities;

.field public static final enum TV:Lcom/airbnb/android/models/Amenities;

.field public static final enum Washer:Lcom/airbnb/android/models/Amenities;

.field public static final enum WirelessInternet:Lcom/airbnb/android/models/Amenities;

.field private static mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/airbnb/android/models/Amenities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDrawableId:I

.field public mId:I

.field public mStringId:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 14
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "TV"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f0e007c

    const v5, 0x7f020114

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->TV:Lcom/airbnb/android/models/Amenities;

    .line 15
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Cable"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, 0x7f0e0064

    const v5, 0x7f020100

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Cable:Lcom/airbnb/android/models/Amenities;

    .line 16
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Internet"

    const/4 v2, 0x2

    const/4 v3, 0x3

    const v4, 0x7f0e0071

    const v5, 0x7f02010d

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Internet:Lcom/airbnb/android/models/Amenities;

    .line 17
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "WirelessInternet"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const v4, 0x7f0e007e

    const v5, 0x7f020116

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->WirelessInternet:Lcom/airbnb/android/models/Amenities;

    .line 18
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "AC"

    const/4 v2, 0x4

    const/4 v3, 0x5

    const v4, 0x7f0e005f

    const v5, 0x7f0200fd

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->AC:Lcom/airbnb/android/models/Amenities;

    .line 19
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "HandicapAccessible"

    const/4 v2, 0x5

    const/4 v3, 0x6

    const v4, 0x7f0e006e

    const v5, 0x7f02010a

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->HandicapAccessible:Lcom/airbnb/android/models/Amenities;

    .line 20
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Pool"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const v4, 0x7f0e0077

    const v5, 0x7f020111

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Pool:Lcom/airbnb/android/models/Amenities;

    .line 21
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Kitchen"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const v4, 0x7f0e0073

    const v5, 0x7f02010e

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Kitchen:Lcom/airbnb/android/models/Amenities;

    .line 22
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "FreeParking"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const v4, 0x7f0e006c

    const v5, 0x7f02010f

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->FreeParking:Lcom/airbnb/android/models/Amenities;

    .line 24
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "AllowsSmoking"

    const/16 v2, 0x9

    const/16 v3, 0xb

    const v4, 0x7f0e0061

    const v5, 0x7f020113

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->AllowsSmoking:Lcom/airbnb/android/models/Amenities;

    .line 25
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "AllowsPets"

    const/16 v2, 0xa

    const/16 v3, 0xc

    const v4, 0x7f0e0060

    const v5, 0x7f020110

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->AllowsPets:Lcom/airbnb/android/models/Amenities;

    .line 27
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Doorman"

    const/16 v2, 0xb

    const/16 v3, 0xe

    const v4, 0x7f0e0065

    const v5, 0x7f020102

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Doorman:Lcom/airbnb/android/models/Amenities;

    .line 28
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Gym"

    const/16 v2, 0xc

    const/16 v3, 0xf

    const v4, 0x7f0e006d

    const v5, 0x7f020109

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Gym:Lcom/airbnb/android/models/Amenities;

    .line 29
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Breakfast"

    const/16 v2, 0xd

    const/16 v3, 0x10

    const v4, 0x7f0e0062

    const v5, 0x7f0200fe

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Breakfast:Lcom/airbnb/android/models/Amenities;

    .line 30
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "HasPets"

    const/16 v2, 0xe

    const/16 v3, 0x11

    const v4, 0x7f0e006f

    const v5, 0x7f020110

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->HasPets:Lcom/airbnb/android/models/Amenities;

    .line 31
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "HasPetDogs"

    const/16 v2, 0xf

    const/16 v3, 0x12

    const v4, 0x7f0e0075

    const v5, 0x7f020110

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->HasPetDogs:Lcom/airbnb/android/models/Amenities;

    .line 32
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "HasPetCats"

    const/16 v2, 0x10

    const/16 v3, 0x13

    const v4, 0x7f0e0074

    const v5, 0x7f020110

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->HasPetCats:Lcom/airbnb/android/models/Amenities;

    .line 33
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "HasPetOther"

    const/16 v2, 0x11

    const/16 v3, 0x14

    const v4, 0x7f0e0076

    const v5, 0x7f020110

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->HasPetOther:Lcom/airbnb/android/models/Amenities;

    .line 34
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Elevator"

    const/16 v2, 0x12

    const/16 v3, 0x15

    const v4, 0x7f0e0067

    const v5, 0x7f020104

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Elevator:Lcom/airbnb/android/models/Amenities;

    .line 38
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Jacuzzi"

    const/16 v2, 0x13

    const/16 v3, 0x19

    const v4, 0x7f0e0072

    const v5, 0x7f02010c

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Jacuzzi:Lcom/airbnb/android/models/Amenities;

    .line 40
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Fireplace"

    const/16 v2, 0x14

    const/16 v3, 0x1b

    const v4, 0x7f0e006b

    const v5, 0x7f020108

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Fireplace:Lcom/airbnb/android/models/Amenities;

    .line 41
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Buzzer"

    const/16 v2, 0x15

    const/16 v3, 0x1c

    const v4, 0x7f0e0063

    const v5, 0x7f0200ff

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Buzzer:Lcom/airbnb/android/models/Amenities;

    .line 43
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Heating"

    const/16 v2, 0x16

    const/16 v3, 0x1e

    const v4, 0x7f0e0070

    const v5, 0x7f02010b

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Heating:Lcom/airbnb/android/models/Amenities;

    .line 44
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "FamilyFriendly"

    const/16 v2, 0x17

    const/16 v3, 0x1f

    const v4, 0x7f0e006a

    const v5, 0x7f020107

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->FamilyFriendly:Lcom/airbnb/android/models/Amenities;

    .line 45
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "EventFriendly"

    const/16 v2, 0x18

    const/16 v3, 0x20

    const v4, 0x7f0e0069

    const v5, 0x7f020106

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->EventFriendly:Lcom/airbnb/android/models/Amenities;

    .line 46
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Washer"

    const/16 v2, 0x19

    const/16 v3, 0x21

    const v4, 0x7f0e007d

    const v5, 0x7f020115

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Washer:Lcom/airbnb/android/models/Amenities;

    .line 47
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Dryer"

    const/16 v2, 0x1a

    const/16 v3, 0x22

    const v4, 0x7f0e0066

    const v5, 0x7f020103

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Dryer:Lcom/airbnb/android/models/Amenities;

    .line 48
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Essentials"

    const/16 v2, 0x1b

    const/16 v3, 0x28

    const v4, 0x7f0e0068

    const v5, 0x7f020105

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Essentials:Lcom/airbnb/android/models/Amenities;

    .line 49
    new-instance v0, Lcom/airbnb/android/models/Amenities;

    const-string/jumbo v1, "Shampoo"

    const/16 v2, 0x1c

    const/16 v3, 0x29

    const v4, 0x7f0e007b

    const v5, 0x7f020112

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/models/Amenities;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->Shampoo:Lcom/airbnb/android/models/Amenities;

    .line 13
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/airbnb/android/models/Amenities;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/models/Amenities;->TV:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Cable:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Internet:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/android/models/Amenities;->WirelessInternet:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/airbnb/android/models/Amenities;->AC:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HandicapAccessible:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Pool:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Kitchen:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/models/Amenities;->FreeParking:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/models/Amenities;->AllowsSmoking:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/models/Amenities;->AllowsPets:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Doorman:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Gym:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Breakfast:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HasPets:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HasPetDogs:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HasPetCats:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HasPetOther:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Elevator:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Jacuzzi:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Fireplace:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Buzzer:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Heating:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/airbnb/android/models/Amenities;->FamilyFriendly:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/airbnb/android/models/Amenities;->EventFriendly:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Washer:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Dryer:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Essentials:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Shampoo:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/models/Amenities;->$VALUES:[Lcom/airbnb/android/models/Amenities;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/models/Amenities;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/models/Amenities;->WirelessInternet:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/models/Amenities;->AC:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Heating:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/android/models/Amenities;->Kitchen:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/models/Amenities;->TOP_AMENITIES_ARRAY:[Lcom/airbnb/android/models/Amenities;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/models/Amenities;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HasPets:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HasPetDogs:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HasPetCats:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/android/models/Amenities;->HasPetOther:Lcom/airbnb/android/models/Amenities;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/models/Amenities;->HAS_PETS_AMENITIES:[Lcom/airbnb/android/models/Amenities;

    .line 91
    new-instance v0, Lcom/airbnb/android/models/Amenities$1;

    invoke-direct {v0}, Lcom/airbnb/android/models/Amenities$1;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/Amenities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .registers 6
    .param p3, "id"    # I
    .param p4, "stringId"    # I
    .param p5, "drawableResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/airbnb/android/models/Amenities;->mId:I

    .line 63
    iput p4, p0, Lcom/airbnb/android/models/Amenities;->mStringId:I

    .line 64
    iput p5, p0, Lcom/airbnb/android/models/Amenities;->mDrawableId:I

    .line 65
    return-void
.end method

.method private static createHashMapIfNeeded()V
    .registers 6

    .prologue
    .line 73
    sget-object v4, Lcom/airbnb/android/models/Amenities;->mSparseArray:Landroid/util/SparseArray;

    if-nez v4, :cond_1f

    .line 74
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    sput-object v4, Lcom/airbnb/android/models/Amenities;->mSparseArray:Landroid/util/SparseArray;

    .line 75
    invoke-static {}, Lcom/airbnb/android/models/Amenities;->values()[Lcom/airbnb/android/models/Amenities;

    move-result-object v1

    .local v1, "arr$":[Lcom/airbnb/android/models/Amenities;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_11
    if-ge v2, v3, :cond_1f

    aget-object v0, v1, v2

    .line 76
    .local v0, "amenity":Lcom/airbnb/android/models/Amenities;
    sget-object v4, Lcom/airbnb/android/models/Amenities;->mSparseArray:Landroid/util/SparseArray;

    iget v5, v0, Lcom/airbnb/android/models/Amenities;->mId:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 79
    .end local v0    # "amenity":Lcom/airbnb/android/models/Amenities;
    :cond_1f
    return-void
.end method

.method public static getAmenitiesWithoutPets()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Amenities;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {}, Lcom/airbnb/android/models/Amenities;->values()[Lcom/airbnb/android/models/Amenities;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .local v4, "rtn":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/android/models/Amenities;>;"
    sget-object v0, Lcom/airbnb/android/models/Amenities;->HAS_PETS_AMENITIES:[Lcom/airbnb/android/models/Amenities;

    .local v0, "arr$":[Lcom/airbnb/android/models/Amenities;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_11
    if-ge v1, v2, :cond_1b

    aget-object v3, v0, v1

    .line 114
    .local v3, "pet":Lcom/airbnb/android/models/Amenities;
    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 116
    .end local v3    # "pet":Lcom/airbnb/android/models/Amenities;
    :cond_1b
    return-object v4
.end method

.method public static getAmenityForId(I)Lcom/airbnb/android/models/Amenities;
    .registers 2
    .param p0, "id"    # I

    .prologue
    .line 68
    invoke-static {}, Lcom/airbnb/android/models/Amenities;->createHashMapIfNeeded()V

    .line 69
    sget-object v0, Lcom/airbnb/android/models/Amenities;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Amenities;

    return-object v0
.end method

.method public static getTopAmenities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/android/models/Amenities;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/airbnb/android/models/Amenities;->TOP_AMENITIES_ARRAY:[Lcom/airbnb/android/models/Amenities;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/Amenities;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/airbnb/android/models/Amenities;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/Amenities;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/Amenities;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/airbnb/android/models/Amenities;->$VALUES:[Lcom/airbnb/android/models/Amenities;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/Amenities;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/Amenities;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/models/Amenities;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    return-void
.end method
