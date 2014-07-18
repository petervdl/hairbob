.class public final enum Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;
.super Ljava/lang/Enum;
.source "AnimationFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/utils/animation/AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlipDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

.field public static final enum LEFT_RIGHT:Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

.field public static final enum RIGHT_LEFT:Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    const-string/jumbo v1, "LEFT_RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->LEFT_RIGHT:Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    .line 29
    new-instance v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    const-string/jumbo v1, "RIGHT_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->RIGHT_LEFT:Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    sget-object v1, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->LEFT_RIGHT:Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->RIGHT_LEFT:Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->$VALUES:[Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->$VALUES:[Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    invoke-virtual {v0}, [Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    return-object v0
.end method


# virtual methods
.method public getEndDegreeForFirstView()F
    .registers 3

    .prologue
    .line 47
    sget-object v0, Lcom/airbnb/android/utils/animation/AnimationFactory$1;->$SwitchMap$com$airbnb$android$utils$animation$AnimationFactory$FlipDirection:[I

    invoke-virtual {p0}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 53
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 49
    :pswitch_d
    const/high16 v0, 0x42b40000

    goto :goto_c

    .line 51
    :pswitch_10
    const/high16 v0, -0x3d4c0000

    goto :goto_c

    .line 47
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public getEndDegreeForSecondView()F
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getStartDegreeForFirstView()F
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getStartDegreeForSecondView()F
    .registers 3

    .prologue
    .line 36
    sget-object v0, Lcom/airbnb/android/utils/animation/AnimationFactory$1;->$SwitchMap$com$airbnb$android$utils$animation$AnimationFactory$FlipDirection:[I

    invoke-virtual {p0}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 42
    const/4 v0, 0x0

    :goto_c
    return v0

    .line 38
    :pswitch_d
    const/high16 v0, -0x3d4c0000

    goto :goto_c

    .line 40
    :pswitch_10
    const/high16 v0, 0x42b40000

    goto :goto_c

    .line 36
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method

.method public theOtherDirection()Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;
    .registers 3

    .prologue
    .line 62
    sget-object v0, Lcom/airbnb/android/utils/animation/AnimationFactory$1;->$SwitchMap$com$airbnb$android$utils$animation$AnimationFactory$FlipDirection:[I

    invoke-virtual {p0}, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 68
    const/4 v0, 0x0

    :goto_c
    return-object v0

    .line 64
    :pswitch_d
    sget-object v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->RIGHT_LEFT:Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    goto :goto_c

    .line 66
    :pswitch_10
    sget-object v0, Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;->LEFT_RIGHT:Lcom/airbnb/android/utils/animation/AnimationFactory$FlipDirection;

    goto :goto_c

    .line 62
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
    .end packed-switch
.end method
