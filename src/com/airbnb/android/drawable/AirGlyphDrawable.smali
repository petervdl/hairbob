.class public Lcom/airbnb/android/drawable/AirGlyphDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AirGlyphDrawable.java"


# static fields
.field private static final MAX_TEXT_SIZE:F = 100.0f

.field private static final MIN_TEXT_SIZE:F = 5.0f

.field private static final TEXT_SIZE_STEP:F = 0.9f


# instance fields
.field private mIcon:Ljava/lang/String;

.field private mPadding:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconId"    # I

    .prologue
    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    .line 27
    iget-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    iget-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/airbnb/android/utils/FontManager$Font;->AirGlyphs:Lcom/airbnb/android/utils/FontManager$Font;

    invoke-static {v1, p1}, Lcom/airbnb/android/utils/FontManager;->getTypeface(Lcom/airbnb/android/utils/FontManager$Font;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 29
    iget-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    const v1, -0x6a6a6b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mIcon:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPadding:Landroid/graphics/Rect;

    .line 33
    return-void
.end method

.method private getTextBounds()Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 79
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mIcon:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mIcon:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 37
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .local v3, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0, v3}, Lcom/airbnb/android/drawable/AirGlyphDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v1, v8

    .line 41
    .local v1, "cw":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-float v0, v8

    .line 46
    .local v0, "ch":F
    const/high16 v5, 0x42c80000

    .line 48
    .local v5, "textSize":F
    :cond_20
    iget-object v8, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 49
    invoke-direct {p0}, Lcom/airbnb/android/drawable/AirGlyphDrawable;->getTextBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 50
    .local v4, "textBounds":Landroid/graphics/Rect;
    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    int-to-float v6, v8

    .line 51
    .local v6, "w":F
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v2, v8

    .line 52
    .local v2, "h":F
    cmpl-float v8, v6, v1

    if-gtz v8, :cond_3d

    cmpl-float v8, v2, v0

    if-lez v8, :cond_47

    :cond_3d
    const v8, 0x3f666666

    mul-float/2addr v5, v8

    const/high16 v8, 0x40a00000

    cmpl-float v8, v5, v8

    if-gtz v8, :cond_20

    .line 54
    :cond_47
    const/high16 v8, 0x3f000000

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v2

    mul-float v7, v8, v9

    .line 55
    .local v7, "y":F
    iget-object v8, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mIcon:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 66
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 71
    return-void
.end method

.method public setIconColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    return-void
.end method

.method public setPadding(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/airbnb/android/drawable/AirGlyphDrawable;->mPadding:Landroid/graphics/Rect;

    .line 91
    return-void
.end method
