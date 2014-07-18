.class public final enum Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
.super Ljava/lang/Enum;
.source "BaseListingTransitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/interfaces/BaseListingTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PropertyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Apartment:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum BedAndBreakfast:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Boat:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Cabin:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Car:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Castle:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Cave:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Chalet:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Country:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Dorm:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Earthhouse:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum House:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Hut:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Igloo:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Island:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Lighthouse:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Loft:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Other:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum ParkingSpace:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Plane:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum RV:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Tent:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Tipi:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Train:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Treehouse:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Van:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Villa:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Village:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

.field public static final enum Yurt:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;


# instance fields
.field public mIconId:I

.field public mLocationPromptId:I

.field public mRoomsAndBedsPromptId:I

.field public mServerDescKey:I

.field public mShowWhenCollapsed:Z

.field public mShowWhenExpanded:Z

.field public mTitleId:I

.field public mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 55
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Apartment"

    const/4 v2, 0x0

    const v3, 0x7f020118

    const v4, 0x7f0e0447

    const v5, 0x7f0e0419

    const v6, 0x7f0e046b

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Apartment:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 57
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "House"

    const/4 v2, 0x1

    const v3, 0x7f02013b

    const v4, 0x7f0e0452

    const v5, 0x7f0e0424

    const v6, 0x7f0e0476

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->House:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 59
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "BedAndBreakfast"

    const/4 v2, 0x2

    const v3, 0x7f02011b

    const v4, 0x7f0e0448

    const v5, 0x7f0e041a

    const v6, 0x7f0e046c

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->BedAndBreakfast:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 61
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Cabin"

    const/4 v2, 0x3

    const/4 v3, 0x0

    const v4, 0x7f0e044a

    const v5, 0x7f0e041c

    const v6, 0x7f0e046e

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Cabin:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 62
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Castle"

    const/4 v2, 0x4

    const/4 v3, 0x0

    const v4, 0x7f0e044c

    const v5, 0x7f0e041e

    const v6, 0x7f0e0470

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Castle:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 63
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Treehouse"

    const/4 v2, 0x5

    const/4 v3, 0x0

    const v4, 0x7f0e0462

    const v5, 0x7f0e0431

    const v6, 0x7f0e0483

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Treehouse:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 64
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Boat"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const v4, 0x7f0e0449

    const v5, 0x7f0e041b

    const v6, 0x7f0e046d

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Boat:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 65
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Dorm"

    const/4 v2, 0x7

    const/4 v3, 0x0

    const v4, 0x7f0e0450

    const v5, 0x7f0e0422

    const v6, 0x7f0e0474

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x9

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Dorm:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 66
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Lighthouse"

    const/16 v2, 0x8

    const/4 v3, 0x0

    const v4, 0x7f0e0456

    const v5, 0x7f0e0428

    const v6, 0x7f0e047a

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xa

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Lighthouse:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 68
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Villa"

    const/16 v2, 0x9

    const/4 v3, 0x0

    const v4, 0x7f0e0464

    const v5, 0x7f0e0433

    const v6, 0x7f0e0485

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xb

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Villa:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 69
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Igloo"

    const/16 v2, 0xa

    const/4 v3, 0x0

    const v4, 0x7f0e0454

    const v5, 0x7f0e0426

    const v6, 0x7f0e0478

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xc

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Igloo:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 70
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Country"

    const/16 v2, 0xb

    const/4 v3, 0x0

    const v4, 0x7f0e044f

    const v5, 0x7f0e0421

    const v6, 0x7f0e0473

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xd

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Country:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 71
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Village"

    const/16 v2, 0xc

    const/4 v3, 0x0

    const v4, 0x7f0e0465

    const v5, 0x7f0e0434

    const v6, 0x7f0e0486

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xe

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Village:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 72
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Yurt"

    const/16 v2, 0xd

    const/4 v3, 0x0

    const v4, 0x7f0e0466

    const v5, 0x7f0e0435

    const v6, 0x7f0e0487

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xf

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Yurt:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 73
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Tipi"

    const/16 v2, 0xe

    const/4 v3, 0x0

    const v4, 0x7f0e045f

    const v5, 0x7f0e042f

    const v6, 0x7f0e0481

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x10

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Tipi:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 74
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Cave"

    const/16 v2, 0xf

    const/4 v3, 0x0

    const v4, 0x7f0e044d

    const v5, 0x7f0e041f

    const v6, 0x7f0e0471

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x12

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Cave:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 75
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Island"

    const/16 v2, 0x10

    const/4 v3, 0x0

    const v4, 0x7f0e0455

    const v5, 0x7f0e0427

    const v6, 0x7f0e0479

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x13

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Island:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 76
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Chalet"

    const/16 v2, 0x11

    const/4 v3, 0x0

    const v4, 0x7f0e044e

    const v5, 0x7f0e0420

    const v6, 0x7f0e0472

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x16

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Chalet:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 77
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Earthhouse"

    const/16 v2, 0x12

    const/4 v3, 0x0

    const v4, 0x7f0e0451

    const v5, 0x7f0e0423

    const v6, 0x7f0e0475

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Earthhouse:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 79
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Hut"

    const/16 v2, 0x13

    const/4 v3, 0x0

    const v4, 0x7f0e0453

    const v5, 0x7f0e0425

    const v6, 0x7f0e0477

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x18

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Hut:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 80
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Train"

    const/16 v2, 0x14

    const/4 v3, 0x0

    const v4, 0x7f0e0461

    const v5, 0x7f0e0430

    const v6, 0x7f0e0482

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x19

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Train:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 81
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Plane"

    const/16 v2, 0x15

    const/4 v3, 0x0

    const v4, 0x7f0e045a

    const v5, 0x7f0e042c

    const v6, 0x7f0e047e

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x1c

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Plane:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 82
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "ParkingSpace"

    const/16 v2, 0x16

    const/4 v3, 0x0

    const v4, 0x7f0e0459

    const v5, 0x7f0e042b

    const v6, 0x7f0e047d

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x1d

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->ParkingSpace:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 84
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Car"

    const/16 v2, 0x17

    const/4 v3, 0x0

    const v4, 0x7f0e044b

    const v5, 0x7f0e041d

    const v6, 0x7f0e046f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Car:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 85
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Van"

    const/16 v2, 0x18

    const/4 v3, 0x0

    const v4, 0x7f0e0463

    const v5, 0x7f0e0432

    const v6, 0x7f0e0484

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Van:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 86
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "RV"

    const/16 v2, 0x19

    const/4 v3, 0x0

    const v4, 0x7f0e0446

    const v5, 0x7f0e042d

    const v6, 0x7f0e047f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x20

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->RV:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 87
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Tent"

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const v4, 0x7f0e045e

    const v5, 0x7f0e042e

    const v6, 0x7f0e0480

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x22

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Tent:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 88
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Loft"

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const v4, 0x7f0e0457

    const v5, 0x7f0e0429

    const v6, 0x7f0e047b

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x23

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Loft:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 89
    new-instance v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const-string/jumbo v1, "Other"

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const v4, 0x7f0e0458

    const v5, 0x7f0e042a

    const v6, 0x7f0e047c

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x21

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;-><init>(Ljava/lang/String;IIIIIZZIZ)V

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Other:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    .line 54
    const/16 v0, 0x1d

    new-array v0, v0, [Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Apartment:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->House:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->BedAndBreakfast:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Cabin:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Castle:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Treehouse:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Boat:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Dorm:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Lighthouse:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Villa:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Igloo:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Country:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Village:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Yurt:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Tipi:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Cave:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Island:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Chalet:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Earthhouse:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Hut:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Train:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Plane:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->ParkingSpace:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Car:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Van:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->RV:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Tent:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Loft:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->Other:Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->$VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZZIZ)V
    .registers 11
    .param p3, "iconId"    # I
    .param p4, "titleId"    # I
    .param p5, "locationPromptId"    # I
    .param p6, "roomsAndBedsPromptId"    # I
    .param p7, "showWhenCollapsed"    # Z
    .param p8, "showWhenExpanded"    # Z
    .param p9, "serverDescKey"    # I
    .param p10, "visible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZZIZ)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mIconId:I

    .line 107
    iput p4, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mTitleId:I

    .line 108
    iput p5, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mLocationPromptId:I

    .line 109
    iput p6, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mRoomsAndBedsPromptId:I

    .line 110
    iput-boolean p7, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mShowWhenCollapsed:Z

    .line 111
    iput-boolean p8, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mShowWhenExpanded:Z

    .line 112
    iput p9, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mServerDescKey:I

    .line 113
    iput-boolean p10, p0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mVisible:Z

    .line 115
    return-void
.end method

.method public static getType(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 118
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v0

    .line 119
    .local v0, "values":[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_b

    .line 120
    :cond_9
    const/4 v1, 0x0

    .line 122
    :goto_a
    return-object v1

    :cond_b
    aget-object v1, v0, p0

    goto :goto_a
.end method

.method public static getTypeFromKey(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    .registers 7
    .param p0, "propertyTypeId"    # I

    .prologue
    .line 126
    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    move-result-object v4

    .line 127
    .local v4, "values":[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    move-object v0, v4

    .local v0, "arr$":[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_7
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 128
    .local v3, "type":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    iget v5, v3, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->mServerDescKey:I

    if-ne v5, p0, :cond_10

    .line 132
    .end local v3    # "type":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    :goto_f
    return-object v3

    .line 127
    .restart local v3    # "type":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 132
    .end local v3    # "type":Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    :cond_13
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->$VALUES:[Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    invoke-virtual {v0}, [Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/interfaces/BaseListingTransitions$PropertyType;

    return-object v0
.end method
