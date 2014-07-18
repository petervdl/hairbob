.class public final enum Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
.super Ljava/lang/Enum;
.source "TextEditFieldDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Fields"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum Description:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum Details:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum Directions:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum GettingAround:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum GuestAccess:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum GuestInteraction:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum HouseManual:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum HouseRules:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum NeighborhoodOverview:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum OtherThingsToNote:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

.field public static final enum Title:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;


# instance fields
.field public mHint:I

.field public mJsonKey:Ljava/lang/String;

.field public mMaxCharactersId:I

.field public mMaxWordsId:I

.field public mTitle:I

.field public mToolTipExamplesId:I

.field public mToolTipHelpId:I

.field public mToolTipTitleId:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 46
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "Title"

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    const v4, 0x7f0e04e1

    const v5, 0x7f0e0522

    const v6, 0x7f0c000e

    const/4 v7, 0x0

    const v8, 0x7f0e078d

    const v9, 0x7f0e078c

    const v10, 0x7f07000d

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Title:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 49
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "Description"

    const/4 v2, 0x1

    const-string/jumbo v3, "summary"

    const v4, 0x7f0e04df

    const v5, 0x7f0e0519

    const/4 v6, 0x0

    const v7, 0x7f0c0014

    const v8, 0x7f0e0788

    const v9, 0x7f0e0787

    const v10, 0x7f07000c

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Description:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 52
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "Details"

    const/4 v2, 0x2

    const-string/jumbo v3, "space"

    const v4, 0x7f0e04e0

    const v5, 0x7f0e048e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0e076c

    const/4 v9, 0x0

    const v10, 0x7f070005

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Details:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 54
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "GuestAccess"

    const/4 v2, 0x3

    const-string/jumbo v3, "access"

    const v4, 0x7f0e04d9

    const v5, 0x7f0e0412

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0e0779

    const/4 v9, 0x0

    const v10, 0x7f070008

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->GuestAccess:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 56
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "GuestInteraction"

    const/4 v2, 0x4

    const-string/jumbo v3, "interaction"

    const v4, 0x7f0e04da

    const v5, 0x7f0e0414

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0e077c

    const/4 v9, 0x0

    const v10, 0x7f070009

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->GuestInteraction:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 59
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "NeighborhoodOverview"

    const/4 v2, 0x5

    const-string/jumbo v3, "neighborhood_overview"

    const v4, 0x7f0e04dd

    const v5, 0x7f0e043b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0e0783

    const/4 v9, 0x0

    const v10, 0x7f07000b

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->NeighborhoodOverview:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 62
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "GettingAround"

    const/4 v2, 0x6

    const-string/jumbo v3, "transit"

    const v4, 0x7f0e04d8

    const v5, 0x7f0e0439

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0e0775

    const/4 v9, 0x0

    const v10, 0x7f070007

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->GettingAround:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 65
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "OtherThingsToNote"

    const/4 v2, 0x7

    const-string/jumbo v3, "notes"

    const v4, 0x7f0e04de

    const v5, 0x7f0e0410

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0e0785

    const v9, 0x7f0e0784

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->OtherThingsToNote:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 68
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "HouseRules"

    const/16 v2, 0x8

    const-string/jumbo v3, "house_rules"

    const v4, 0x7f0e04dc

    const v5, 0x7f0e040e

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7f0e0780

    const/4 v9, 0x0

    const v10, 0x7f07000a

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->HouseRules:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 70
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "HouseManual"

    const/16 v2, 0x9

    const-string/jumbo v3, "house_manual"

    const v4, 0x7f0e04db

    const v5, 0x7f0e04e4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->HouseManual:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 71
    new-instance v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const-string/jumbo v1, "Directions"

    const/16 v2, 0xa

    const-string/jumbo v3, "directions"

    const v4, 0x7f0e04d7

    const v5, 0x7f0e04c9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;-><init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Directions:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    .line 45
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Title:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Description:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Details:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->GuestAccess:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->GuestInteraction:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->NeighborhoodOverview:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->GettingAround:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->OtherThingsToNote:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->HouseRules:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->HouseManual:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->Directions:Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->$VALUES:[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIIIII)V
    .registers 11
    .param p3, "jsonKey"    # Ljava/lang/String;
    .param p4, "title"    # I
    .param p5, "hint"    # I
    .param p6, "maxCharactersId"    # I
    .param p7, "maxWordsId"    # I
    .param p8, "tooltipTitleId"    # I
    .param p9, "tooltipHelpId"    # I
    .param p10, "tooltipExamplesId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIIIII)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 83
    iput-object p3, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mJsonKey:Ljava/lang/String;

    .line 84
    iput p4, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mTitle:I

    .line 85
    iput p5, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mHint:I

    .line 86
    iput p6, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mMaxCharactersId:I

    .line 87
    iput p7, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mMaxWordsId:I

    .line 88
    iput p8, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mToolTipTitleId:I

    .line 89
    iput p9, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mToolTipHelpId:I

    .line 90
    iput p10, p0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->mToolTipExamplesId:I

    .line 91
    return-void
.end method

.method public static getType(I)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 94
    invoke-static {}, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->values()[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    move-result-object v0

    .line 95
    .local v0, "values":[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
    if-ltz p0, :cond_9

    array-length v1, v0

    if-lt p0, v1, :cond_b

    .line 96
    :cond_9
    const/4 v1, 0x0

    .line 98
    :goto_a
    return-object v1

    :cond_b
    aget-object v1, v0, p0

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->$VALUES:[Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/managelisting/TextEditFieldDialogFragment$Fields;

    return-object v0
.end method
