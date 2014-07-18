.class public Lcom/airbnb/android/drawable/SlashLine;
.super Landroid/graphics/drawable/Drawable;
.source "SlashLine.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:F


# direct methods
.method public constructor <init>(IF)V
    .registers 5
    .param p1, "color"    # I
    .param p2, "width"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/android/drawable/SlashLine;->mPaint:Landroid/graphics/Paint;

    .line 14
    iget-object v0, p0, Lcom/airbnb/android/drawable/SlashLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    iget-object v0, p0, Lcom/airbnb/android/drawable/SlashLine;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object v0, p0, Lcom/airbnb/android/drawable/SlashLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    iput p2, p0, Lcom/airbnb/android/drawable/SlashLine;->mWidth:F

    .line 18
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/airbnb/android/drawable/SlashLine;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 23
    .local v7, "width":I
    invoke-virtual {p0}, Lcom/airbnb/android/drawable/SlashLine;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 24
    .local v6, "height":I
    iget v1, p0, Lcom/airbnb/android/drawable/SlashLine;->mWidth:F

    int-to-float v0, v6

    iget v2, p0, Lcom/airbnb/android/drawable/SlashLine;->mWidth:F

    add-float/2addr v2, v0

    int-to-float v0, v7

    iget v3, p0, Lcom/airbnb/android/drawable/SlashLine;->mWidth:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/airbnb/android/drawable/SlashLine;->mWidth:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/airbnb/android/drawable/SlashLine;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 25
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 3
    .param p1, "alpha"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/drawable/SlashLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 3
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/airbnb/android/drawable/SlashLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 40
    return-void
.end method
