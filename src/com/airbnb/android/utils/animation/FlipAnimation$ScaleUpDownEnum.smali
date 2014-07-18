.class public final enum Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;
.super Ljava/lang/Enum;
.source "FlipAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/animation/FlipAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleUpDownEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

.field public static final enum SCALE_CYCLE:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

.field public static final enum SCALE_DOWN:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

.field public static final enum SCALE_NONE:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

.field public static final enum SCALE_UP:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    const-string/jumbo v1, "SCALE_UP"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_UP:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    .line 96
    new-instance v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    const-string/jumbo v1, "SCALE_DOWN"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_DOWN:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    .line 100
    new-instance v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    const-string/jumbo v1, "SCALE_CYCLE"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_CYCLE:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    .line 104
    new-instance v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    const-string/jumbo v1, "SCALE_NONE"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_NONE:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    .line 88
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    sget-object v1, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_UP:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_DOWN:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_CYCLE:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->SCALE_NONE:Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->$VALUES:[Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->$VALUES:[Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    invoke-virtual {v0}, [Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;

    return-object v0
.end method


# virtual methods
.method public getScale(FF)F
    .registers 10
    .param p1, "max"    # F
    .param p2, "iter"    # F

    .prologue
    const/high16 v6, 0x40000000

    const/high16 v1, 0x3f800000

    .line 114
    sget-object v2, Lcom/airbnb/android/utils/animation/FlipAnimation$1;->$SwitchMap$com$airbnb$android$utils$animation$FlipAnimation$ScaleUpDownEnum:[I

    invoke-virtual {p0}, Lcom/airbnb/android/utils/animation/FlipAnimation$ScaleUpDownEnum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_36

    .line 132
    :goto_f
    return v1

    .line 116
    :pswitch_10
    sub-float/2addr v1, p1

    mul-float/2addr v1, p2

    add-float/2addr v1, p1

    goto :goto_f

    .line 119
    :pswitch_14
    sub-float v2, v1, p1

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    goto :goto_f

    .line 122
    :pswitch_19
    float-to-double v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2c

    const/4 v0, 0x1

    .line 124
    .local v0, "halfWay":Z
    :goto_21
    if-eqz v0, :cond_2e

    .line 125
    sub-float/2addr v1, p1

    const/high16 v2, 0x3f000000

    sub-float v2, p2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v6

    add-float/2addr v1, p1

    goto :goto_f

    .line 122
    .end local v0    # "halfWay":Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_21

    .line 127
    .restart local v0    # "halfWay":Z
    :cond_2e
    sub-float v2, v1, p1

    mul-float v3, p2, v6

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    goto :goto_f

    .line 114
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_10
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method
