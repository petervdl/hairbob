.class public Lcom/airbnb/android/utils/ButtonMaker;
.super Ljava/lang/Object;
.source "ButtonMaker.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeButton(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "colorRes"    # I

    .prologue
    const/4 v13, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 22
    .local v7, "color":I
    new-array v10, v13, [F

    .line 23
    .local v10, "hsv":[F
    invoke-static {v7, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 24
    const v3, 0x3f333333

    aget v4, v10, v5

    mul-float/2addr v3, v4

    aput v3, v10, v5

    .line 25
    invoke-static {v10}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v8

    .line 29
    .local v8, "darkColor":I
    invoke-static {p0, v8}, Lcom/airbnb/android/utils/ButtonMaker;->makeRectangle(Landroid/content/Context;I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    .line 30
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v7}, Lcom/airbnb/android/utils/ButtonMaker;->makeRectangle(Landroid/content/Context;I)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v9

    .line 31
    .local v9, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02018d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 33
    .local v12, "pressOverlay":Landroid/graphics/drawable/Drawable;
    new-array v11, v13, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v11, v2

    aput-object v9, v11, v1

    aput-object v12, v11, v5

    .line 35
    .local v11, "layers":[Landroid/graphics/drawable/Drawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 37
    .local v0, "rtn":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 39
    return-object v0
.end method

.method private static makeRectangle(Landroid/content/Context;I)Landroid/graphics/drawable/ShapeDrawable;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "color"    # I

    .prologue
    const/4 v5, 0x0

    .line 43
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 45
    .local v2, "shape":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 46
    .local v0, "radius":F
    const/16 v3, 0x8

    new-array v1, v3, [F

    .line 47
    .local v1, "radiusArr":[F
    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 49
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v3, v1, v5, v5}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 50
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    return-object v2
.end method
