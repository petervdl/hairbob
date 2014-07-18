.class public Lcom/airbnb/android/views/RangeSeekBar;
.super Landroid/widget/ImageView;
.source "RangeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/RangeSeekBar$1;,
        Lcom/airbnb/android/views/RangeSeekBar$NumberType;,
        Lcom/airbnb/android/views/RangeSeekBar$Thumb;,
        Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Number;",
        ">",
        "Landroid/widget/ImageView;"
    }
.end annotation


# static fields
.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final DEFAULT_BACKGROUND_COLOR:I = 0x7f0a001b

.field public static final INVALID_POINTER_ID:I = 0xff


# instance fields
.field public final DEFAULT_COLOR:I

.field private final absoluteMaxValue:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final absoluteMaxValuePrim:D

.field private final absoluteMinValue:Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final absoluteMinValuePrim:D

.field private final lineHeight:F

.field private listener:Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mActivePointerId:I

.field private mDownMotionX:F

.field private mIsDragging:Z

.field private mScaledTouchSlop:I

.field mTouchProgressOffset:F

.field private normalizedMaxValue:D

.field private normalizedMinValue:D

.field private notifyWhileDragging:Z

.field private final numberType:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

.field private final padding:F

.field private final paint:Landroid/graphics/Paint;

.field private pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

.field private final thumbHalfHeight:F

.field private final thumbHalfWidth:F

.field private final thumbImage:Landroid/graphics/Bitmap;

.field private final thumbPressedImage:Landroid/graphics/Bitmap;

.field private final thumbWidth:F


# direct methods
.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;Landroid/content/Context;)V
    .registers 8
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    .local p1, "absoluteMinValue":Ljava/lang/Number;, "TT;"
    .local p2, "absoluteMaxValue":Ljava/lang/Number;, "TT;"
    const/high16 v3, 0x3f000000

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->paint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201fe

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ff

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    .line 41
    iget-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbWidth:F

    .line 42
    iget v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbWidth:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbHalfWidth:F

    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbHalfHeight:F

    .line 44
    const v0, 0x3f19999a

    iget v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbHalfHeight:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->lineHeight:F

    .line 45
    iget v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbHalfWidth:F

    iput v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->padding:F

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMinValue:D

    .line 50
    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMaxValue:D

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->notifyWhileDragging:Z

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->DEFAULT_COLOR:I

    .line 72
    const/16 v0, 0xff

    iput v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->mActivePointerId:I

    .line 95
    iput-object p1, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    .line 96
    iput-object p2, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValuePrim:D

    .line 98
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMaxValuePrim:D

    .line 99
    invoke-static {p1}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->fromNumber(Ljava/lang/Number;)Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->numberType:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    .line 102
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/RangeSeekBar;->setFocusable(Z)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/airbnb/android/views/RangeSeekBar;->setFocusableInTouchMode(Z)V

    .line 104
    invoke-direct {p0}, Lcom/airbnb/android/views/RangeSeekBar;->init()V

    .line 105
    return-void
.end method

.method private attemptClaimDrag()V
    .registers 3

    .prologue
    .line 335
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 336
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 338
    :cond_e
    return-void
.end method

.method private drawThumb(FZLandroid/graphics/Canvas;)V
    .registers 8
    .param p1, "screenCoord"    # F
    .param p2, "pressed"    # Z
    .param p3, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 435
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    if-eqz p2, :cond_19

    iget-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbPressedImage:Landroid/graphics/Bitmap;

    :goto_4
    iget v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbHalfWidth:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f000000

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbHalfHeight:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 436
    return-void

    .line 435
    :cond_19
    iget-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    goto :goto_4
.end method

.method private evalPressedThumb(F)Lcom/airbnb/android/views/RangeSeekBar$Thumb;
    .registers 7
    .param p1, "touchX"    # F

    .prologue
    .line 446
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    const/4 v2, 0x0

    .line 447
    .local v2, "result":Lcom/airbnb/android/views/RangeSeekBar$Thumb;
    iget-wide v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, p1, v3, v4}, Lcom/airbnb/android/views/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v1

    .line 448
    .local v1, "minThumbPressed":Z
    iget-wide v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, p1, v3, v4}, Lcom/airbnb/android/views/RangeSeekBar;->isInThumbRange(FD)Z

    move-result v0

    .line 449
    .local v0, "maxThumbPressed":Z
    if-eqz v1, :cond_24

    if-eqz v0, :cond_24

    .line 452
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    const/high16 v4, 0x3f000000

    cmpl-float v3, v3, v4

    if-lez v3, :cond_21

    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MIN:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    .line 460
    :cond_20
    :goto_20
    return-object v2

    .line 452
    :cond_21
    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MAX:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    goto :goto_20

    .line 454
    :cond_24
    if-eqz v1, :cond_29

    .line 455
    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MIN:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    goto :goto_20

    .line 457
    :cond_29
    if-eqz v0, :cond_20

    .line 458
    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MAX:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    goto :goto_20
.end method

.method private final init()V
    .registers 2

    .prologue
    .line 108
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->mScaledTouchSlop:I

    .line 109
    return-void
.end method

.method private isInThumbRange(FD)Z
    .registers 6
    .param p1, "touchX"    # F
    .param p2, "normalizedThumbValue"    # D

    .prologue
    .line 473
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    invoke-direct {p0, p2, p3}, Lcom/airbnb/android/views/RangeSeekBar;->normalizedToScreen(D)F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbHalfWidth:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private normalizedToScreen(D)F
    .registers 8
    .param p1, "normalizedCoord"    # D

    .prologue
    .line 532
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    iget v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->padding:F

    float-to-double v0, v0

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000

    iget v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->padding:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method private normalizedToValue(D)Ljava/lang/Number;
    .registers 10
    .param p1, "normalized"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->numberType:Lcom/airbnb/android/views/RangeSeekBar$NumberType;

    iget-wide v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValuePrim:D

    iget-wide v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v5, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v3, v5

    mul-double/2addr v3, p1

    add-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/RangeSeekBar$NumberType;->toNumber(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method private final onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 306
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 308
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 309
    .local v1, "pointerId":I
    iget v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->mActivePointerId:I

    if-ne v1, v3, :cond_21

    .line 313
    if-nez v2, :cond_22

    const/4 v0, 0x1

    .line 314
    .local v0, "newPointerIndex":I
    :goto_15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->mDownMotionX:F

    .line 315
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->mActivePointerId:I

    .line 317
    .end local v0    # "newPointerIndex":I
    :cond_21
    return-void

    .line 313
    :cond_22
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private screenToNormalized(F)D
    .registers 11
    .param p1, "screenCoord"    # F

    .prologue
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    const/high16 v8, 0x40000000

    const-wide/16 v3, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getWidth()I

    move-result v2

    .line 544
    .local v2, "width":I
    int-to-float v5, v2

    iget v6, p0, Lcom/airbnb/android/views/RangeSeekBar;->padding:F

    mul-float/2addr v6, v8

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_11

    .line 550
    :goto_10
    return-wide v3

    .line 549
    :cond_11
    iget v5, p0, Lcom/airbnb/android/views/RangeSeekBar;->padding:F

    sub-float v5, p1, v5

    int-to-float v6, v2

    iget v7, p0, Lcom/airbnb/android/views/RangeSeekBar;->padding:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    float-to-double v0, v5

    .line 550
    .local v0, "result":D
    const-wide/high16 v5, 0x3ff0000000000000L

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    goto :goto_10
.end method

.method private final trackTouchEvent(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 320
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    iget v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 321
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 323
    .local v1, "x":F
    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MIN:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 324
    invoke-direct {p0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/views/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 329
    :cond_1b
    :goto_1b
    return-void

    .line 326
    :cond_1c
    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MAX:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 327
    invoke-direct {p0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->screenToNormalized(F)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/airbnb/android/views/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_1b
.end method

.method private valueToNormalized(Ljava/lang/Number;)D
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)D"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    const-wide/16 v0, 0x0

    .line 517
    iget-wide v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    cmpl-double v2, v0, v2

    if-nez v2, :cond_c

    .line 521
    :goto_b
    return-wide v0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_b
.end method


# virtual methods
.method public getAbsoluteMaxValue()Ljava/lang/Number;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMaxValue:Ljava/lang/Number;

    return-object v0
.end method

.method public getAbsoluteMinValue()Ljava/lang/Number;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    iget-object v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValue:Ljava/lang/Number;

    return-object v0
.end method

.method public getSelectedMaxValue()Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    iget-wide v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->normalizedToValue(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedMinValue()Ljava/lang/Number;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    iget-wide v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->normalizedToValue(D)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public isNotifyWhileDragging()Z
    .registers 2

    .prologue
    .line 112
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    iget-boolean v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->notifyWhileDragging:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    const/high16 v6, 0x3f000000

    .line 375
    monitor-enter p0

    :try_start_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 378
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->padding:F

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->lineHeight:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->padding:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/airbnb/android/views/RangeSeekBar;->lineHeight:F

    add-float/2addr v4, v5

    mul-float/2addr v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 379
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    iget-object v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 381
    iget-object v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 382
    iget-object v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 385
    iget-wide v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/views/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 386
    iget-wide v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/views/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 389
    iget-object v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->DEFAULT_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    iget-object v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 393
    iget-wide v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMinValue:D

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/views/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MIN:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/airbnb/android/views/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;)V

    .line 396
    iget-wide v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMaxValue:D

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/views/RangeSeekBar;->normalizedToScreen(D)F

    move-result v1

    sget-object v2, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->MAX:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    iget-object v3, p0, Lcom/airbnb/android/views/RangeSeekBar;->pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    invoke-virtual {v2, v3}, Lcom/airbnb/android/views/RangeSeekBar$Thumb;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/airbnb/android/views/RangeSeekBar;->drawThumb(FZLandroid/graphics/Canvas;)V
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_8d

    .line 397
    monitor-exit p0

    return-void

    .line 375
    .end local v0    # "rect":Landroid/graphics/RectF;
    :catchall_8d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 359
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    monitor-enter p0

    const/16 v1, 0xc8

    .line 360
    .local v1, "width":I
    :try_start_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_d

    .line 361
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 363
    :cond_d
    iget-object v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->thumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 364
    .local v0, "height":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_21

    .line 365
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 367
    :cond_21
    invoke-virtual {p0, v1, v0}, Lcom/airbnb/android/views/RangeSeekBar;->setMeasuredDimension(II)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    .line 368
    monitor-exit p0

    return-void

    .line 359
    .end local v0    # "height":I
    :catchall_26
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcelable;

    .prologue
    .line 418
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 419
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "SUPER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 420
    const-string/jumbo v1, "MIN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMinValue:D

    .line 421
    const-string/jumbo v1, "MAX"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMaxValue:D

    .line 422
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .prologue
    .line 405
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "SUPER"

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 407
    const-string/jumbo v1, "MIN"

    iget-wide v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMinValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 408
    const-string/jumbo v1, "MAX"

    iget-wide v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMaxValue:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 409
    return-object v0
.end method

.method onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 344
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->mIsDragging:Z

    .line 345
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    .prologue
    .line 351
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->mIsDragging:Z

    .line 352
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 302
    :goto_8
    return v4

    .line 214
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 215
    .local v0, "action":I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_f6

    :cond_12
    :goto_12
    :pswitch_12
    move v4, v5

    .line 302
    goto :goto_8

    .line 219
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->mActivePointerId:I

    .line 220
    iget v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 221
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->mDownMotionX:F

    .line 223
    iget v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->mDownMotionX:F

    invoke-direct {p0, v4}, Lcom/airbnb/android/views/RangeSeekBar;->evalPressedThumb(F)Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    move-result-object v4

    iput-object v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    .line 226
    iget-object v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    if-nez v4, :cond_3d

    .line 227
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_8

    .line 230
    :cond_3d
    invoke-virtual {p0, v5}, Lcom/airbnb/android/views/RangeSeekBar;->setPressed(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->invalidate()V

    .line 232
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->onStartTrackingTouch()V

    .line 233
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 234
    invoke-direct {p0}, Lcom/airbnb/android/views/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_12

    .line 238
    .end local v2    # "pointerIndex":I
    :pswitch_4d
    iget-object v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    if-eqz v4, :cond_12

    .line 240
    iget-boolean v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->mIsDragging:Z

    if-eqz v4, :cond_6e

    .line 241
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 257
    :cond_58
    :goto_58
    iget-boolean v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->notifyWhileDragging:Z

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->listener:Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v4, :cond_12

    .line 258
    iget-object v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->listener:Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v7

    invoke-interface {v4, p0, v6, v7}, Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;->onRangeSeekBarValuesChanged(Lcom/airbnb/android/views/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    .line 245
    :cond_6e
    iget v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 246
    .restart local v2    # "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 248
    .local v3, "x":F
    iget v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->mDownMotionX:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, p0, Lcom/airbnb/android/views/RangeSeekBar;->mScaledTouchSlop:I

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_58

    .line 249
    invoke-virtual {p0, v5}, Lcom/airbnb/android/views/RangeSeekBar;->setPressed(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->invalidate()V

    .line 251
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->onStartTrackingTouch()V

    .line 252
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 253
    invoke-direct {p0}, Lcom/airbnb/android/views/RangeSeekBar;->attemptClaimDrag()V

    goto :goto_58

    .line 263
    .end local v2    # "pointerIndex":I
    .end local v3    # "x":F
    :pswitch_97
    iget-boolean v6, p0, Lcom/airbnb/android/views/RangeSeekBar;->mIsDragging:Z

    if-eqz v6, :cond_bd

    .line 264
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 265
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->onStopTrackingTouch()V

    .line 266
    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/RangeSeekBar;->setPressed(Z)V

    .line 276
    :goto_a4
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->pressedThumb:Lcom/airbnb/android/views/RangeSeekBar$Thumb;

    .line 277
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->invalidate()V

    .line 278
    iget-object v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->listener:Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;

    if-eqz v4, :cond_12

    .line 279
    iget-object v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->listener:Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getSelectedMinValue()Ljava/lang/Number;

    move-result-object v6

    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->getSelectedMaxValue()Ljava/lang/Number;

    move-result-object v7

    invoke-interface {v4, p0, v6, v7}, Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;->onRangeSeekBarValuesChanged(Lcom/airbnb/android/views/RangeSeekBar;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 271
    :cond_bd
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->onStartTrackingTouch()V

    .line 272
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RangeSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 273
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->onStopTrackingTouch()V

    goto :goto_a4

    .line 283
    :pswitch_c7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 285
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->mDownMotionX:F

    .line 286
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->mActivePointerId:I

    .line 287
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->invalidate()V

    goto/16 :goto_12

    .line 291
    .end local v1    # "index":I
    :pswitch_de
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RangeSeekBar;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 292
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->invalidate()V

    goto/16 :goto_12

    .line 295
    :pswitch_e6
    iget-boolean v6, p0, Lcom/airbnb/android/views/RangeSeekBar;->mIsDragging:Z

    if-eqz v6, :cond_f0

    .line 296
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->onStopTrackingTouch()V

    .line 297
    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/RangeSeekBar;->setPressed(Z)V

    .line 299
    :cond_f0
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->invalidate()V

    goto/16 :goto_12

    .line 215
    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_14
        :pswitch_97
        :pswitch_4d
        :pswitch_e6
        :pswitch_12
        :pswitch_c7
        :pswitch_de
    .end packed-switch
.end method

.method public setNormalizedMaxValue(D)V
    .registers 9
    .param p1, "value"    # D

    .prologue
    .line 494
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L

    iget-wide v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMinValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMaxValue:D

    .line 495
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->invalidate()V

    .line 496
    return-void
.end method

.method public setNormalizedMinValue(D)V
    .registers 9
    .param p1, "value"    # D

    .prologue
    .line 483
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L

    iget-wide v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMaxValue:D

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->normalizedMinValue:D

    .line 484
    invoke-virtual {p0}, Lcom/airbnb/android/views/RangeSeekBar;->invalidate()V

    .line 485
    return-void
.end method

.method public setNotifyWhileDragging(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .prologue
    .line 121
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    iput-boolean p1, p0, Lcom/airbnb/android/views/RangeSeekBar;->notifyWhileDragging:Z

    .line 122
    return-void
.end method

.method public setOnRangeSeekBarChangeListener(Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    .local p1, "listener":Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;, "Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener<TT;>;"
    iput-object p1, p0, Lcom/airbnb/android/views/RangeSeekBar;->listener:Lcom/airbnb/android/views/RangeSeekBar$OnRangeSeekBarChangeListener;

    .line 200
    return-void
.end method

.method public setSelectedMaxValue(Ljava/lang/Number;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v4, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-nez v0, :cond_11

    .line 185
    const-wide/high16 v0, 0x3ff0000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->setNormalizedMaxValue(D)V

    .line 190
    :goto_10
    return-void

    .line 188
    :cond_11
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RangeSeekBar;->valueToNormalized(Ljava/lang/Number;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->setNormalizedMaxValue(D)V

    goto :goto_10
.end method

.method public setSelectedMinValue(Ljava/lang/Number;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/airbnb/android/views/RangeSeekBar;, "Lcom/airbnb/android/views/RangeSeekBar<TT;>;"
    .local p1, "value":Ljava/lang/Number;, "TT;"
    const-wide/16 v4, 0x0

    .line 159
    iget-wide v0, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMaxValuePrim:D

    iget-wide v2, p0, Lcom/airbnb/android/views/RangeSeekBar;->absoluteMinValuePrim:D

    sub-double/2addr v0, v2

    cmpl-double v0, v4, v0

    if-nez v0, :cond_f

    .line 160
    invoke-virtual {p0, v4, v5}, Lcom/airbnb/android/views/RangeSeekBar;->setNormalizedMinValue(D)V

    .line 165
    :goto_e
    return-void

    .line 163
    :cond_f
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/RangeSeekBar;->valueToNormalized(Ljava/lang/Number;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/android/views/RangeSeekBar;->setNormalizedMinValue(D)V

    goto :goto_e
.end method
