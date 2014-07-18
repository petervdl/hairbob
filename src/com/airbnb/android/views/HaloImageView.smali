.class public Lcom/airbnb/android/views/HaloImageView;
.super Lcom/airbnb/android/views/AirImageView;
.source "HaloImageView.java"


# static fields
.field private static final sRandomColorPool:[I


# instance fields
.field private DEFAULT_IMAGE:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mCenterAbove:Z

.field private mCircularShader:Landroid/graphics/Shader;

.field private mHasDefaultResource:Z

.field private mId:I

.field private mSelectorPaint:Landroid/graphics/Paint;

.field private mWhitePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/airbnb/android/views/HaloImageView;->sRandomColorPool:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f0a002d
        0x7f0a0027
        0x7f0a000b
        0x7f0a0029
        0x7f0a000e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/AirImageView;-><init>(Landroid/content/Context;)V

    .line 60
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/airbnb/android/views/HaloImageView;->DEFAULT_IMAGE:I

    .line 64
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_12

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/airbnb/android/views/HaloImageView;->init(Landroid/util/AttributeSet;)V

    .line 67
    :cond_12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/AirImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/airbnb/android/views/HaloImageView;->DEFAULT_IMAGE:I

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 72
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/HaloImageView;->init(Landroid/util/AttributeSet;)V

    .line 74
    :cond_11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/AirImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    const v0, 0x7f0200c6

    iput v0, p0, Lcom/airbnb/android/views/HaloImageView;->DEFAULT_IMAGE:I

    .line 78
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_11

    .line 79
    invoke-direct {p0, p2}, Lcom/airbnb/android/views/HaloImageView;->init(Landroid/util/AttributeSet;)V

    .line 81
    :cond_11
    return-void
.end method

.method private createCircleBitmap(Landroid/graphics/Bitmap;)V
    .registers 13
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v10, 0x3

    const/high16 v6, 0x3f000000

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v9, v3

    .line 272
    .local v9, "w":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v8, v3

    .line 273
    .local v8, "h":F
    mul-float v1, v6, v9

    .line 274
    .local v1, "cx":F
    mul-float v2, v6, v8

    .line 275
    .local v2, "cy":F
    new-array v4, v10, [I

    fill-array-data v4, :array_3a

    .line 276
    .local v4, "colors":[I
    new-array v5, v10, [F

    fill-array-data v5, :array_44

    .line 278
    .local v5, "positions":[F
    new-instance v0, Landroid/graphics/RadialGradient;

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-float/2addr v3, v6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 279
    .local v0, "gradient":Landroid/graphics/RadialGradient;
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, p1, v3, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 280
    .local v7, "bitmapShader":Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/ComposeShader;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v7, v0, v6}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iput-object v3, p0, Lcom/airbnb/android/views/HaloImageView;->mCircularShader:Landroid/graphics/Shader;

    .line 281
    return-void

    .line 275
    :array_3a
    .array-data 4
        -0x1
        -0x1
        0x0
    .end array-data

    .line 276
    :array_44
    .array-data 4
        0x0
        0x3f7d70a4
        0x3f800000
    .end array-data
.end method

.method private drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v6, 0x3f000000

    .line 165
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->isInEditMode()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 172
    :goto_8
    return-void

    .line 168
    :cond_9
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 169
    .local v2, "w":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getPaddingTop()I

    move-result v4

    sub-int v0, v3, v4

    .line 170
    .local v0, "h":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    mul-float/2addr v4, v6

    sub-float v1, v3, v4

    .line 171
    .local v1, "radius":F
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v6

    invoke-virtual {p1, v3, v4, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_8
.end method

.method private getColorId(J)I
    .registers 6
    .param p1, "userId"    # J

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    .line 258
    const-wide/16 p1, 0x0

    .line 261
    :cond_8
    sget-object v0, Lcom/airbnb/android/views/HaloImageView;->sRandomColorPool:[I

    long-to-int v1, p1

    sget-object v2, Lcom/airbnb/android/views/HaloImageView;->sRandomColorPool:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    aget v0, v0, v1

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .registers 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 84
    if-eqz p1, :cond_8e

    .line 85
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/airbnb/android/R$styleable;->HaloImageView:[I

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 88
    .local v3, "drawBorder":Z
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 89
    .local v1, "borderColor":I
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 90
    .local v2, "borderThickness":F
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/airbnb/android/views/HaloImageView;->mCenterAbove:Z

    .line 92
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 94
    .local v4, "drawSelector":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    if-eqz v3, :cond_63

    .line 97
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 98
    iget-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mWhitePaint:Landroid/graphics/Paint;

    .line 103
    iget-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00a4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mWhitePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 107
    :cond_63
    if-eqz v4, :cond_8e

    .line 108
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mSelectorPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mSelectorPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v5, p0, Lcom/airbnb/android/views/HaloImageView;->mSelectorPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x3f800000

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_97

    .end local v2    # "borderThickness":F
    :goto_8b
    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "borderColor":I
    .end local v3    # "drawBorder":Z
    .end local v4    # "drawSelector":Z
    :cond_8e
    iget v5, p0, Lcom/airbnb/android/views/HaloImageView;->DEFAULT_IMAGE:I

    invoke-virtual {p0, v5}, Lcom/airbnb/android/views/HaloImageView;->setDefaultImageResId(I)V

    .line 117
    invoke-virtual {p0, v8}, Lcom/airbnb/android/views/HaloImageView;->setFadeEnabled(Z)V

    .line 118
    return-void

    .line 111
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "borderColor":I
    .restart local v2    # "borderThickness":F
    .restart local v3    # "drawBorder":Z
    .restart local v4    # "drawSelector":Z
    :cond_97
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    goto :goto_8b
.end method

.method private setImageDefault(J)V
    .registers 4
    .param p1, "userId"    # J

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/HaloImageView;->setUserId(J)V

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private setUserId(J)V
    .registers 4
    .param p1, "userId"    # J

    .prologue
    .line 265
    long-to-int v0, p1

    iput v0, p0, Lcom/airbnb/android/views/HaloImageView;->mId:I

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/HaloImageView;->mHasDefaultResource:Z

    .line 267
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    .line 122
    invoke-super {p0}, Lcom/airbnb/android/views/AirImageView;->onAttachedToWindow()V

    .line 124
    iget-boolean v2, p0, Lcom/airbnb/android/views/HaloImageView;->mCenterAbove:Z

    if-eqz v2, :cond_26

    .line 125
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 127
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_27

    .line 128
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 129
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/HaloImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_26
    return-void

    .line 132
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_27
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HaloImageView centerAbove can only be used with a relative layout, not "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_46

    const-string/jumbo v2, "null"

    :goto_42
    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_42
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_7

    .line 162
    :cond_6
    :goto_6
    return-void

    .line 144
    :cond_7
    iget-object v2, p0, Lcom/airbnb/android/views/HaloImageView;->mCircularShader:Landroid/graphics/Shader;

    if-eqz v2, :cond_34

    .line 145
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 146
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    .line 147
    .local v0, "defaultShader":Landroid/graphics/Shader;
    iget-object v2, p0, Lcom/airbnb/android/views/HaloImageView;->mCircularShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 148
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 149
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    .end local v0    # "defaultShader":Landroid/graphics/Shader;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :goto_24
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/airbnb/android/views/HaloImageView;->mSelectorPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_41

    .line 158
    iget-object v2, p0, Lcom/airbnb/android/views/HaloImageView;->mSelectorPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2}, Lcom/airbnb/android/views/HaloImageView;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 151
    :cond_34
    iget-object v2, p0, Lcom/airbnb/android/views/HaloImageView;->mWhitePaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_3d

    .line 152
    iget-object v2, p0, Lcom/airbnb/android/views/HaloImageView;->mWhitePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2}, Lcom/airbnb/android/views/HaloImageView;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 155
    :cond_3d
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_24

    .line 159
    :cond_41
    iget-object v2, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_6

    .line 160
    iget-object v2, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2}, Lcom/airbnb/android/views/HaloImageView;->drawCircle(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_6
.end method

.method public setBorder(IF)V
    .registers 5
    .param p1, "color"    # I
    .param p2, "thickness"    # F

    .prologue
    .line 196
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 197
    iget-object v0, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v0, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object v0, p0, Lcom/airbnb/android/views/HaloImageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 200
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->invalidate()V

    .line 201
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 178
    if-eqz p1, :cond_8

    .line 179
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/HaloImageView;->createCircleBitmap(Landroid/graphics/Bitmap;)V

    .line 181
    :cond_8
    return-void
.end method

.method public setImageResource(I)V
    .registers 5
    .param p1, "resId"    # I

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/airbnb/android/views/HaloImageView;->mHasDefaultResource:Z

    if-nez v0, :cond_20

    .line 206
    iget v0, p0, Lcom/airbnb/android/views/HaloImageView;->DEFAULT_IMAGE:I

    if-ne v0, p1, :cond_21

    .line 207
    iget v0, p0, Lcom/airbnb/android/views/HaloImageView;->DEFAULT_IMAGE:I

    iget v1, p0, Lcom/airbnb/android/views/HaloImageView;->mId:I

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lcom/airbnb/android/views/HaloImageView;->getColorId(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/HaloImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/HaloImageView;->mHasDefaultResource:Z

    .line 213
    :cond_1b
    :goto_1b
    if-lez p1, :cond_20

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/android/views/HaloImageView;->mCircularShader:Landroid/graphics/Shader;

    .line 217
    :cond_20
    return-void

    .line 209
    :cond_21
    if-lez p1, :cond_1b

    .line 210
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirImageView;->setImageResource(I)V

    goto :goto_1b
.end method

.method public setImageUriForUser(Ljava/lang/String;I)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 236
    int-to-long v0, p2

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageDefault(J)V

    .line 240
    :goto_a
    return-void

    .line 238
    :cond_b
    iget v0, p0, Lcom/airbnb/android/views/HaloImageView;->DEFAULT_IMAGE:I

    invoke-super {p0, p1, v0}, Lcom/airbnb/android/views/AirImageView;->setImageUri(Ljava/lang/String;I)V

    goto :goto_a
.end method

.method public setImageUrlForReferree(Lcom/airbnb/android/models/Referree;)V
    .registers 4
    .param p1, "referree"    # Lcom/airbnb/android/models/Referree;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/airbnb/android/models/Referree;->hasProfilePic()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 227
    invoke-virtual {p1}, Lcom/airbnb/android/models/Referree;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setUserId(J)V

    .line 228
    invoke-virtual {p1}, Lcom/airbnb/android/models/Referree;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 232
    :goto_16
    return-void

    .line 230
    :cond_17
    if-nez p1, :cond_1f

    const-wide/16 v0, 0x0

    :goto_1b
    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageDefault(J)V

    goto :goto_16

    :cond_1f
    invoke-virtual {p1}, Lcom/airbnb/android/models/Referree;->getId()J

    move-result-wide v0

    goto :goto_1b
.end method

.method public setImageUrlForUser(Lcom/airbnb/android/models/User;)V
    .registers 4
    .param p1, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 243
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->hasProfilePic()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 244
    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setUserId(J)V

    .line 245
    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getPictureUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/HaloImageView;->setImageUrl(Ljava/lang/String;)V

    .line 249
    :goto_16
    return-void

    .line 247
    :cond_17
    if-nez p1, :cond_1f

    const-wide/16 v0, 0x0

    :goto_1b
    invoke-direct {p0, v0, v1}, Lcom/airbnb/android/views/HaloImageView;->setImageDefault(J)V

    goto :goto_16

    :cond_1f
    invoke-virtual {p1}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v0

    goto :goto_1b
.end method

.method public setStaticDrawable(I)V
    .registers 4
    .param p1, "resourceId"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/airbnb/android/views/HaloImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    .local v0, "drawableBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/HaloImageView;->setStaticImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    return-void
.end method

.method public setStaticImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/HaloImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/HaloImageView;->setDefaultImageResId(I)V

    .line 187
    return-void
.end method

.method public setTransientImageResource(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/airbnb/android/views/HaloImageView;->setImageResource(I)V

    .line 222
    return-void
.end method
