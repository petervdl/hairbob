.class public Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;
.super Landroid/graphics/drawable/Drawable;
.source "BaseCalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/BaseCalendarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Slash"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;
    }
.end annotation


# static fields
.field public static BOTTOM_DIVISOR:F = 0.0f

.field private static final FADE_ANIM_DELAY:I = 0x64

.field private static final FADE_ANIM_DURATION:I = 0xfa

.field public static GAP_PIXELS:I

.field public static SELECTION_ALPHA:I

.field public static TOP_DIVISOR:F


# instance fields
.field private mAlpha:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mState:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 295
    const/4 v0, 0x4

    sput v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->GAP_PIXELS:I

    .line 296
    const v0, 0x3d4ccccd

    sput v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->BOTTOM_DIVISOR:F

    .line 297
    const/high16 v0, 0x3e800000

    sput v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->TOP_DIVISOR:F

    .line 298
    const v0, 0xffffff

    sput v0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->SELECTION_ALPHA:I

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;I)V
    .registers 5
    .param p1, "state"    # Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;
    .param p2, "color"    # I

    .prologue
    .line 338
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 334
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    .line 339
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 340
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 341
    iput-object p1, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mState:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    .prologue
    .line 293
    iget v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mAlpha:I

    return v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/animation/Animator;
    .registers 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 353
    iget-object v1, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v2, "color"

    new-instance v3, Landroid/animation/ArgbEvaluator;

    invoke-direct {v3}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 354
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 355
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$1;

    invoke-direct {v2, p0, p1}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$1;-><init>(Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 364
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 369
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 370
    .local v1, "path":Landroid/graphics/Path;
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 371
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 372
    .local v2, "width":I
    invoke-virtual {p0}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 373
    .local v0, "height":I
    sget-object v3, Lcom/airbnb/android/adapters/BaseCalendarAdapter$2;->$SwitchMap$com$airbnb$android$adapters$BaseCalendarAdapter$Slash$State:[I

    iget-object v4, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mState:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    invoke-virtual {v4}, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_8e

    .line 397
    :goto_26
    iget-object v3, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 398
    return-void

    .line 375
    :pswitch_2c
    int-to-float v3, v2

    sget v4, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->BOTTOM_DIVISOR:F

    mul-float/2addr v3, v4

    sget v4, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->GAP_PIXELS:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    int-to-float v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 376
    int-to-float v3, v2

    int-to-float v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 377
    int-to-float v3, v2

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 378
    int-to-float v3, v2

    sget v4, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->TOP_DIVISOR:F

    mul-float/2addr v3, v4

    sget v4, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->GAP_PIXELS:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 379
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_26

    .line 382
    :pswitch_54
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 383
    int-to-float v3, v2

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 384
    int-to-float v3, v2

    int-to-float v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 385
    int-to-float v3, v0

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 386
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_26

    .line 389
    :pswitch_68
    invoke-virtual {v1, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 390
    int-to-float v3, v2

    sget v4, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->TOP_DIVISOR:F

    mul-float/2addr v3, v4

    sget v4, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->GAP_PIXELS:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 391
    int-to-float v3, v2

    sget v4, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->BOTTOM_DIVISOR:F

    mul-float/2addr v3, v4

    sget v4, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->GAP_PIXELS:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    int-to-float v4, v0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 392
    int-to-float v3, v0

    invoke-virtual {v1, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 393
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_26

    .line 373
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_54
        :pswitch_68
    .end packed-switch
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 402
    const/4 v0, -0x1

    return v0
.end method

.method public getSlashState()Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mState:Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash$State;

    return-object v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mAlpha:I

    .line 408
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 409
    return-void
.end method

.method public setColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 350
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/airbnb/android/adapters/BaseCalendarAdapter$Slash;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 414
    return-void
.end method
