.class final enum Lcom/airbnb/android/views/RangeSeekBar$NumberType;
.super Ljava/lang/Enum;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/RangeSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NumberType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/views/RangeSeekBar$NumberType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/views/RangeSeekBar$NumberType;

.field public static final enum BIG_DECIMAL:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

.field public static final enum BYTE:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

.field public static final enum DOUBLE:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

.field public static final enum FLOAT:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

.field public static final enum INTEGER:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

.field public static final enum LONG:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

.field public static final enum SHORT:Lcom/airbnb/android/views/RangeSeekBar$NumberType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 581
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    const-string/jumbo v1, "LONG"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->LONG:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    .line 582
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    const-string/jumbo v1, "DOUBLE"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->DOUBLE:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    .line 583
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    const-string/jumbo v1, "INTEGER"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->INTEGER:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    .line 584
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    const-string/jumbo v1, "FLOAT"

    invoke-direct {v0, v1, v6}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->FLOAT:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    .line 585
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    const-string/jumbo v1, "SHORT"

    invoke-direct {v0, v1, v7}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->SHORT:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    .line 586
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    const-string/jumbo v1, "BYTE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->BYTE:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    .line 587
    new-instance v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    const-string/jumbo v1, "BIG_DECIMAL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    .line 580
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    sget-object v1, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->LONG:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->DOUBLE:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->INTEGER:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->FLOAT:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->SHORT:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->BYTE:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->$VALUES:[Lcom/airbnb/android/views/RangeSeekBar$NumberType;

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
    .line 580
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromNumber(Ljava/lang/Number;)Lcom/airbnb/android/views/RangeSeekBar$NumberType;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Number;",
            ">(TE;)",
            "Lcom/airbnb/android/views/RangeSeekBar$NumberType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "value":Ljava/lang/Number;, "TE;"
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 591
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->LONG:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    .line 609
    :goto_6
    return-object v0

    .line 593
    :cond_7
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_e

    .line 594
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->DOUBLE:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    goto :goto_6

    .line 596
    :cond_e
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    .line 597
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->INTEGER:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    goto :goto_6

    .line 599
    :cond_15
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1c

    .line 600
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->FLOAT:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    goto :goto_6

    .line 602
    :cond_1c
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_23

    .line 603
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->SHORT:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    goto :goto_6

    .line 605
    :cond_23
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_2a

    .line 606
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->BYTE:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    goto :goto_6

    .line 608
    :cond_2a
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_31

    .line 609
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->BIG_DECIMAL:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    goto :goto_6

    .line 611
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Number class \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/views/RangeSeekBar$NumberType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 580
    const-class v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/views/RangeSeekBar$NumberType;
    .registers 1

    .prologue
    .line 580
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->$VALUES:[Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    invoke-virtual {v0}, [Lcom/airbnb/android/views/RangeSeekBar$NumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    return-object v0
.end method


# virtual methods
.method public toNumber(D)Ljava/lang/Number;
    .registers 6
    .param p1, "value"    # D

    .prologue
    .line 615
    sget-object v0, Lcom/airbnb/android/views/RangeSeekBar$1;->$SwitchMap$com$airbnb$android$views$RangeSeekBar$NumberType:[I

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5c

    .line 631
    new-instance v0, Ljava/lang/InstantiationError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "can\'t convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to a Number object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :pswitch_2c
    new-instance v0, Ljava/lang/Long;

    double-to-long v1, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 629
    :goto_32
    return-object v0

    .line 619
    :pswitch_33
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_32

    .line 621
    :pswitch_38
    new-instance v0, Ljava/lang/Integer;

    double-to-int v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_32

    .line 623
    :pswitch_3f
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1, p2}, Ljava/lang/Float;-><init>(D)V

    goto :goto_32

    .line 625
    :pswitch_45
    new-instance v0, Ljava/lang/Short;

    double-to-int v1, p1

    int-to-short v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_32

    .line 627
    :pswitch_4d
    new-instance v0, Ljava/lang/Byte;

    double-to-int v1, p1

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_32

    .line 629
    :pswitch_55
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_32

    .line 615
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_33
        :pswitch_38
        :pswitch_3f
        :pswitch_45
        :pswitch_4d
        :pswitch_55
    .end packed-switch
.end method
