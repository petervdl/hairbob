.class public final enum Lcom/airbnb/android/models/PaymentInstrument$CardType;
.super Ljava/lang/Enum;
.source "PaymentInstrument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/models/PaymentInstrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/PaymentInstrument$CardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field public static final enum Amex:Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field public static final enum Discover:Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field public static final enum GoogleWallet:Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field public static final enum JCB15:Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field public static final enum JCB16:Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field public static final enum MC:Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field public static final enum Unknown:Lcom/airbnb/android/models/PaymentInstrument$CardType;

.field public static final enum Visa:Lcom/airbnb/android/models/PaymentInstrument$CardType;


# instance fields
.field private mCCFormat:Ljava/lang/String;

.field public mCCVImage:I

.field public mCCVLength:I

.field public mIcon:I

.field public mKey:Ljava/lang/String;

.field private mLength:I

.field public mName:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    .line 41
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    const-string/jumbo v1, "Amex"

    const/4 v2, 0x0

    const-string/jumbo v3, "american_express"

    const v4, 0x7f020072

    const v5, 0x7f020078

    const v6, 0x7f0e007f

    const/16 v7, 0xf

    const-string/jumbo v8, "465"

    const/4 v9, 0x4

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/android/models/PaymentInstrument$CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Amex:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 42
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    const-string/jumbo v1, "MC"

    const/4 v2, 0x1

    const-string/jumbo v3, "master"

    const v4, 0x7f020075

    const v5, 0x7f020077

    const v6, 0x7f0e0493

    const/16 v7, 0x10

    const-string/jumbo v8, "4444"

    const/4 v9, 0x3

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/android/models/PaymentInstrument$CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->MC:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 43
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    const-string/jumbo v1, "Visa"

    const/4 v2, 0x2

    const-string/jumbo v3, "visa"

    const v4, 0x7f020076

    const v5, 0x7f020077

    const v6, 0x7f0e0805

    const/16 v7, 0x10

    const-string/jumbo v8, "4444"

    const/4 v9, 0x3

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/android/models/PaymentInstrument$CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Visa:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 44
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    const-string/jumbo v1, "GoogleWallet"

    const/4 v2, 0x3

    const-string/jumbo v3, "google"

    const v4, 0x7f0200d1

    const v5, 0x7f020077

    const v6, 0x7f0e021a

    const/4 v7, 0x0

    const-string/jumbo v8, "0"

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/android/models/PaymentInstrument$CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->GoogleWallet:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 45
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    const-string/jumbo v1, "Discover"

    const/4 v2, 0x4

    const-string/jumbo v3, "discover"

    const v4, 0x7f020073

    const v5, 0x7f020077

    const v6, 0x7f0e0169

    const/16 v7, 0x10

    const-string/jumbo v8, "4444"

    const/4 v9, 0x3

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/android/models/PaymentInstrument$CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Discover:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 46
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    const-string/jumbo v1, "JCB15"

    const/4 v2, 0x5

    const-string/jumbo v3, "jcb"

    const v4, 0x7f020074

    const v5, 0x7f020077

    const v6, 0x7f0e036b

    const/16 v7, 0xf

    const-string/jumbo v8, "465"

    const/4 v9, 0x3

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/android/models/PaymentInstrument$CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->JCB15:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 47
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    const-string/jumbo v1, "JCB16"

    const/4 v2, 0x6

    const-string/jumbo v3, "jcb"

    const v4, 0x7f020074

    const v5, 0x7f020077

    const v6, 0x7f0e036b

    const/16 v7, 0x10

    const-string/jumbo v8, "4444"

    const/4 v9, 0x3

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/android/models/PaymentInstrument$CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->JCB16:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 48
    new-instance v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    const-string/jumbo v1, "Unknown"

    const/4 v2, 0x7

    const-string/jumbo v3, "unknown"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0e079f

    const/4 v7, 0x0

    const-string/jumbo v8, "0"

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/airbnb/android/models/PaymentInstrument$CardType;-><init>(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Unknown:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/airbnb/android/models/PaymentInstrument$CardType;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Amex:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->MC:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Visa:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->GoogleWallet:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Discover:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->JCB15:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->JCB16:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Unknown:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->$VALUES:[Lcom/airbnb/android/models/PaymentInstrument$CardType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIILjava/lang/String;I)V
    .registers 10
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "ccvImage"    # I
    .param p6, "name"    # I
    .param p7, "length"    # I
    .param p8, "ccFormat"    # Ljava/lang/String;
    .param p9, "ccvLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mKey:Ljava/lang/String;

    .line 60
    iput p4, p0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mIcon:I

    .line 61
    iput p5, p0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mCCVImage:I

    .line 62
    iput p6, p0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mName:I

    .line 63
    iput p9, p0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mCCVLength:I

    .line 64
    iput-object p8, p0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mCCFormat:Ljava/lang/String;

    .line 65
    iput p7, p0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mLength:I

    .line 66
    return-void
.end method

.method public static getCardType(Ljava/lang/String;)Lcom/airbnb/android/models/PaymentInstrument$CardType;
    .registers 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/airbnb/android/models/PaymentInstrument$CardType;->values()[Lcom/airbnb/android/models/PaymentInstrument$CardType;

    move-result-object v4

    .line 70
    .local v4, "types":[Lcom/airbnb/android/models/PaymentInstrument$CardType;
    move-object v0, v4

    .local v0, "arr$":[Lcom/airbnb/android/models/PaymentInstrument$CardType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_17

    aget-object v1, v0, v2

    .line 71
    .local v1, "card":Lcom/airbnb/android/models/PaymentInstrument$CardType;
    iget-object v5, v1, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mKey:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 76
    .end local v1    # "card":Lcom/airbnb/android/models/PaymentInstrument$CardType;
    :goto_13
    return-object v1

    .line 70
    .restart local v1    # "card":Lcom/airbnb/android/models/PaymentInstrument$CardType;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 76
    .end local v1    # "card":Lcom/airbnb/android/models/PaymentInstrument$CardType;
    :cond_17
    sget-object v1, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Unknown:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    goto :goto_13
.end method

.method public static getCardTypeFromCCNumber(Ljava/lang/String;)Lcom/airbnb/android/models/PaymentInstrument$CardType;
    .registers 7
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x2

    const/16 v3, 0x31

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_a6

    .line 137
    :cond_15
    :goto_15
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Unknown:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    :goto_17
    return-object v0

    .line 83
    :pswitch_18
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Visa:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    goto :goto_17

    .line 85
    :pswitch_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_15

    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_b6

    goto :goto_15

    .line 92
    :pswitch_29
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->MC:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    goto :goto_17

    .line 97
    :pswitch_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_15

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_c4

    :pswitch_39
    goto :goto_15

    .line 101
    :pswitch_3a
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Amex:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    goto :goto_17

    .line 103
    :pswitch_3d
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->JCB16:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    goto :goto_17

    .line 108
    :pswitch_40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_4d

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_d0

    .line 115
    :cond_4d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_15

    .line 116
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_15

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_15

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_15

    .line 117
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Discover:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    goto :goto_17

    .line 111
    :pswitch_68
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->Discover:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    goto :goto_17

    .line 122
    :pswitch_6b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_15

    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_15

    const/16 v0, 0x33

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_15

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v3, v0, :cond_15

    .line 124
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->JCB15:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    goto :goto_17

    .line 129
    :pswitch_88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_15

    .line 130
    const/16 v0, 0x38

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_15

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_15

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v5, v0, :cond_15

    .line 131
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->JCB15:Lcom/airbnb/android/models/PaymentInstrument$CardType;

    goto/16 :goto_17

    .line 81
    :pswitch_data_a6
    .packed-switch 0x31
        :pswitch_88
        :pswitch_6b
        :pswitch_2c
        :pswitch_18
        :pswitch_1b
        :pswitch_40
    .end packed-switch

    .line 86
    :pswitch_data_b6
    .packed-switch 0x31
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch

    .line 98
    :pswitch_data_c4
    .packed-switch 0x34
        :pswitch_3a
        :pswitch_3d
        :pswitch_39
        :pswitch_3a
    .end packed-switch

    .line 109
    :pswitch_data_d0
    .packed-switch 0x35
        :pswitch_68
    .end packed-switch
.end method

.method private static isValidCCNumber(Ljava/lang/String;)Z
    .registers 9
    .param p0, "cardNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 142
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_11

    :cond_f
    move v4, v5

    .line 159
    :cond_10
    :goto_10
    return v4

    .line 146
    :cond_11
    const/4 v2, 0x0

    .line 147
    .local v2, "sum":I
    const/4 v1, 0x0

    .line 148
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_19
    if-ltz v0, :cond_36

    .line 149
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    .line 150
    .local v3, "v":I
    rem-int/lit8 v6, v1, 0x2

    if-ne v6, v4, :cond_34

    .line 151
    mul-int/lit8 v3, v3, 0x2

    .line 152
    div-int/lit8 v6, v3, 0xa

    add-int/2addr v2, v6

    .line 153
    rem-int/lit8 v6, v3, 0xa

    add-int/2addr v2, v6

    .line 157
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    .line 148
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 155
    :cond_34
    add-int/2addr v2, v3

    goto :goto_2f

    .line 159
    .end local v3    # "v":I
    :cond_36
    rem-int/lit8 v6, v2, 0xa

    if-eqz v6, :cond_10

    move v4, v5

    goto :goto_10
.end method

.method public static isValidCCNumber(Ljava/lang/String;Lcom/airbnb/android/models/PaymentInstrument$CardType;)Z
    .registers 4
    .param p0, "ccNumber"    # Ljava/lang/String;
    .param p1, "mCardType"    # Lcom/airbnb/android/models/PaymentInstrument$CardType;

    .prologue
    .line 163
    const-string/jumbo v0, "[^\\d]"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 165
    if-eqz p1, :cond_26

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p1, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mLength:I

    if-eq v0, v1, :cond_1c

    iget v0, p1, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mLength:I

    if-nez v0, :cond_24

    :cond_1c
    invoke-static {p0}, Lcom/airbnb/android/models/PaymentInstrument$CardType;->isValidCCNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    .line 169
    :goto_23
    return v0

    .line 166
    :cond_24
    const/4 v0, 0x0

    goto :goto_23

    .line 169
    :cond_26
    invoke-static {p0}, Lcom/airbnb/android/models/PaymentInstrument$CardType;->isValidCCNumber(Ljava/lang/String;)Z

    move-result v0

    goto :goto_23
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/PaymentInstrument$CardType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/PaymentInstrument$CardType;
    .registers 1

    .prologue
    .line 40
    sget-object v0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->$VALUES:[Lcom/airbnb/android/models/PaymentInstrument$CardType;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/PaymentInstrument$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/PaymentInstrument$CardType;

    return-object v0
.end method


# virtual methods
.method public formatCC(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "cc"    # Ljava/lang/String;

    .prologue
    .line 173
    const-string/jumbo v5, "[^\\d]"

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v2, "formatted":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 178
    .local v0, "currIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    :try_start_15
    iget-object v5, p0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mCCFormat:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_53

    .line 179
    if-lez v3, :cond_25

    .line 180
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    :cond_25
    iget-object v5, p0, Lcom/airbnb/android/models/PaymentInstrument$CardType;->mCCFormat:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 184
    .local v4, "num":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v6, v0, v4

    if-lt v5, v6, :cond_48

    .line 185
    add-int v5, v0, v4

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 186
    add-int/2addr v0, v4

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 188
    :cond_48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_53} :catch_5c

    .line 196
    .end local v4    # "num":I
    :cond_53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "cc":Ljava/lang/String;
    :goto_5b
    return-object p1

    .line 192
    .restart local p1    # "cc":Ljava/lang/String;
    :catch_5c
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_5b
.end method
