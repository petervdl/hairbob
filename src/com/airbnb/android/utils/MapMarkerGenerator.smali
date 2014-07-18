.class public Lcom/airbnb/android/utils/MapMarkerGenerator;
.super Ljava/lang/Object;
.source "MapMarkerGenerator.java"


# static fields
.field private static mPaint:Landroid/graphics/Paint;

.field private static sClusterMarkerCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPriceMarkerCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/utils/MapMarkerGenerator;->sPriceMarkerCache:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/utils/MapMarkerGenerator;->sClusterMarkerCache:Ljava/util/HashMap;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x1a1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    .line 22
    sget-object v0, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    sget-object v0, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMarkerBoundingBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "markerText"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 27
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->sPriceMarkerCache:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 28
    .local v1, "cachedReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_25

    .line 29
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 30
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 44
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_24
    return-object v7

    .line 33
    :cond_25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0071

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 34
    .local v3, "markerTextSize":I
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, v3

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 37
    .local v6, "textBounds":Landroid/graphics/Rect;
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, p1, v10, v8, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0070

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 39
    .local v5, "padding":I
    neg-int v7, v5

    neg-int v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b006f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 42
    .local v4, "markerWidth":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 44
    .local v2, "markerHeight":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_24
.end method

.method private static getBubblePath(Landroid/content/Context;II)Landroid/graphics/Path;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v7, 0x0

    .line 83
    mul-int/lit8 v5, p2, 0x3

    div-int/lit8 v0, v5, 0x4

    .line 84
    .local v0, "bubbleHeight":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b006f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v1, v5, 0x3

    .line 85
    .local v1, "bubbleTailWidth":I
    div-int/lit8 v3, p1, 0x2

    .line 86
    .local v3, "halfWidth":I
    div-int/lit8 v2, v1, 0x2

    .line 88
    .local v2, "halfTailWidth":I
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 89
    .local v4, "path":Landroid/graphics/Path;
    invoke-virtual {v4, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 90
    int-to-float v5, p1

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    int-to-float v5, p1

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    add-int v5, v3, v2

    int-to-float v5, v5

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 93
    int-to-float v5, v3

    int-to-float v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    sub-int v5, v3, v2

    int-to-float v5, v5

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 95
    int-to-float v5, v0

    invoke-virtual {v4, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 96
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 98
    return-object v4
.end method

.method public static getGroupsMeetupMarker(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 104
    .local v1, "diameter":I
    const/high16 v4, 0x3f000000

    int-to-float v5, v1

    mul-float v3, v4, v5

    .line 106
    .local v3, "radius":F
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 107
    .local v2, "marker":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-object v4, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    sget-object v4, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 111
    return-object v2
.end method

.method public static getPriceMarker(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 48
    const v0, 0x7f0a002b

    const v1, 0x7f0a002c

    invoke-static {p0, p1, v0, v1}, Lcom/airbnb/android/utils/MapMarkerGenerator;->getPriceMarker(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getPriceMarker(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "markerColor"    # I
    .param p3, "strokeColor"    # I

    .prologue
    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "cacheKey":Ljava/lang/String;
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->sPriceMarkerCache:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 57
    .local v2, "cachedReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/Bitmap;>;"
    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2f

    .line 58
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 79
    :goto_2e
    return-object v7

    .line 61
    :cond_2f
    invoke-static {p0, p1, v1}, Lcom/airbnb/android/utils/MapMarkerGenerator;->calculateMarkerBoundingBox(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 62
    .local v0, "boundingBox":Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Rect;->right:I

    .line 63
    .local v6, "markerWidth":I
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 65
    .local v5, "markerHeight":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 66
    .local v4, "marker":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 68
    .local v3, "canvas":Landroid/graphics/Canvas;
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    invoke-static {p0, v6, v5}, Lcom/airbnb/android/utils/MapMarkerGenerator;->getBubblePath(Landroid/content/Context;II)Landroid/graphics/Path;

    move-result-object v7

    sget-object v8, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 70
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0062

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    invoke-static {p0, v6, v5}, Lcom/airbnb/android/utils/MapMarkerGenerator;->getBubblePath(Landroid/content/Context;II)Landroid/graphics/Path;

    move-result-object v7

    sget-object v8, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 74
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00a4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v5, 0x2

    int-to-float v8, v8

    sget-object v9, Lcom/airbnb/android/utils/MapMarkerGenerator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    sget-object v7, Lcom/airbnb/android/utils/MapMarkerGenerator;->sPriceMarkerCache:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    .line 79
    goto/16 :goto_2e
.end method
