.class public Lcom/airbnb/android/views/CropImageView;
.super Landroid/view/View;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/CropImageView$1;,
        Lcom/airbnb/android/views/CropImageView$ScaleListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFirstDraw:Z

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMidX:F

.field private mMidY:F

.field private mMinScaleFactor:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPosX:F

.field private mPosY:F

.field private mRect:Landroid/graphics/RectF;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/CropImageView;->mActivePointerId:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    .line 45
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/CropImageView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/CropImageView;->mActivePointerId:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    .line 50
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/CropImageView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/airbnb/android/views/CropImageView;->mActivePointerId:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    .line 55
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/CropImageView;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/CropImageView;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/CropImageView;

    .prologue
    .line 15
    iget v0, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/views/CropImageView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/CropImageView;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$132(Lcom/airbnb/android/views/CropImageView;F)F
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/views/CropImageView;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iget v0, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$202(Lcom/airbnb/android/views/CropImageView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/CropImageView;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/airbnb/android/views/CropImageView;->mMidX:F

    return p1
.end method

.method static synthetic access$302(Lcom/airbnb/android/views/CropImageView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/CropImageView;
    .param p1, "x1"    # F

    .prologue
    .line 15
    iput p1, p0, Lcom/airbnb/android/views/CropImageView;->mMidY:F

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/views/CropImageView;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/CropImageView;

    .prologue
    .line 15
    iget v0, p0, Lcom/airbnb/android/views/CropImageView;->mMinScaleFactor:F

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/android/views/CropImageView;->mPaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/airbnb/android/views/CropImageView$ScaleListener;

    invoke-direct {v2, p0, v3}, Lcom/airbnb/android/views/CropImageView$ScaleListener;-><init>(Lcom/airbnb/android/views/CropImageView;Lcom/airbnb/android/views/CropImageView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/airbnb/android/views/CropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 62
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/views/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/CropImageView;->setDrawingCacheEnabled(Z)V

    .line 65
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/airbnb/android/views/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getBitmapHeight()I
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBitmapWidth()I
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .registers 8

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 244
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 245
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 246
    .local v4, "top":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->getWidth()I

    move-result v3

    .line 247
    .local v3, "right":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    .line 249
    .local v1, "bottom":I
    sub-int v5, v3, v2

    sub-int v6, v1, v4

    invoke-static {v0, v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method public getSelectedRect()Landroid/graphics/RectF;
    .registers 7

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->getWidth()I

    move-result v3

    int-to-float v0, v3

    .line 223
    .local v0, "cw":F
    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 224
    .local v1, "hw":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 225
    .local v2, "rect":Landroid/graphics/RectF;
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 226
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 227
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 228
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 230
    return-object v2
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 76
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_9

    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 131
    :goto_8
    return-void

    .line 81
    :cond_9
    iget-boolean v3, p0, Lcom/airbnb/android/views/CropImageView;->mFirstDraw:Z

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-lez v3, :cond_7e

    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_7e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    if-lez v3, :cond_7e

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    if-lez v3, :cond_7e

    .line 84
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mMinScaleFactor:F

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mMidX:F

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mMidY:F

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosX:F

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosY:F

    .line 91
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/airbnb/android/views/CropImageView;->mFirstDraw:Z

    .line 93
    :cond_7e
    iget v3, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mMinScaleFactor:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 97
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 98
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mPosX:F

    iget v5, p0, Lcom/airbnb/android/views/CropImageView;->mPosY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 99
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    iget v5, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    iget v6, p0, Lcom/airbnb/android/views/CropImageView;->mMidX:F

    iget v7, p0, Lcom/airbnb/android/views/CropImageView;->mMidY:F

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 101
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v8, v8, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 102
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v0, v3

    .line 105
    .local v0, "cw":F
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_122

    .line 106
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float v2, v3, v4

    .line 107
    .local v2, "offset":F
    iget v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosX:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosX:F

    .line 113
    .end local v2    # "offset":F
    :cond_db
    :goto_db
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v1, v3

    .line 114
    .local v1, "hw":F
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v8

    if-lez v3, :cond_13a

    .line 115
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float v2, v3, v4

    .line 116
    .restart local v2    # "offset":F
    iget v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosY:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosY:F

    .line 122
    .end local v2    # "offset":F
    :cond_f6
    :goto_f6
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 123
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mPosX:F

    iget v5, p0, Lcom/airbnb/android/views/CropImageView;->mPosY:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 124
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    iget v5, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    iget v6, p0, Lcom/airbnb/android/views/CropImageView;->mMidX:F

    iget v7, p0, Lcom/airbnb/android/views/CropImageView;->mMidY:F

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 126
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/airbnb/android/views/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/airbnb/android/views/CropImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_8

    .line 108
    .end local v1    # "hw":F
    :cond_122
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_db

    .line 109
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float v3, v0, v3

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float v2, v3, v4

    .line 110
    .restart local v2    # "offset":F
    iget v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosX:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosX:F

    goto :goto_db

    .line 117
    .end local v2    # "offset":F
    .restart local v1    # "hw":F
    :cond_13a
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpg-float v3, v3, v1

    if-gez v3, :cond_f6

    .line 118
    iget-object v3, p0, Lcom/airbnb/android/views/CropImageView;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v1, v3

    iget v4, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float v2, v3, v4

    .line 119
    .restart local v2    # "offset":F
    iget v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosY:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/airbnb/android/views/CropImageView;->mPosY:F

    goto :goto_f6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v10, -0x1

    .line 136
    iget-object v9, p0, Lcom/airbnb/android/views/CropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 139
    .local v0, "action":I
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_8a

    .line 203
    :cond_11
    :goto_11
    :pswitch_11
    return v8

    .line 141
    :pswitch_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 142
    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 144
    .local v7, "y":F
    iput v6, p0, Lcom/airbnb/android/views/CropImageView;->mLastTouchX:F

    .line 145
    iput v7, p0, Lcom/airbnb/android/views/CropImageView;->mLastTouchY:F

    .line 146
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/airbnb/android/views/CropImageView;->mActivePointerId:I

    goto :goto_11

    .line 151
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_25
    iget v9, p0, Lcom/airbnb/android/views/CropImageView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 152
    .local v5, "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 153
    .restart local v6    # "x":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 156
    .restart local v7    # "y":F
    iget-object v9, p0, Lcom/airbnb/android/views/CropImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v9}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v9

    if-nez v9, :cond_56

    .line 157
    iget v9, p0, Lcom/airbnb/android/views/CropImageView;->mLastTouchX:F

    sub-float v1, v6, v9

    .line 158
    .local v1, "dx":F
    iget v9, p0, Lcom/airbnb/android/views/CropImageView;->mLastTouchY:F

    sub-float v2, v7, v9

    .line 163
    .local v2, "dy":F
    iget v9, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float/2addr v1, v9

    .line 164
    iget v9, p0, Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F

    div-float/2addr v2, v9

    .line 166
    iget v9, p0, Lcom/airbnb/android/views/CropImageView;->mPosX:F

    add-float/2addr v9, v1

    iput v9, p0, Lcom/airbnb/android/views/CropImageView;->mPosX:F

    .line 167
    iget v9, p0, Lcom/airbnb/android/views/CropImageView;->mPosY:F

    add-float/2addr v9, v2

    iput v9, p0, Lcom/airbnb/android/views/CropImageView;->mPosY:F

    .line 169
    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->invalidate()V

    .line 172
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_56
    iput v6, p0, Lcom/airbnb/android/views/CropImageView;->mLastTouchX:F

    .line 173
    iput v7, p0, Lcom/airbnb/android/views/CropImageView;->mLastTouchY:F

    goto :goto_11

    .line 179
    .end local v5    # "pointerIndex":I
    .end local v6    # "x":F
    .end local v7    # "y":F
    :pswitch_5b
    iput v10, p0, Lcom/airbnb/android/views/CropImageView;->mActivePointerId:I

    goto :goto_11

    .line 184
    :pswitch_5e
    iput v10, p0, Lcom/airbnb/android/views/CropImageView;->mActivePointerId:I

    goto :goto_11

    .line 189
    :pswitch_61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v5, v9, 0x8

    .line 190
    .restart local v5    # "pointerIndex":I
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 191
    .local v4, "pointerId":I
    iget v9, p0, Lcom/airbnb/android/views/CropImageView;->mActivePointerId:I

    if-ne v4, v9, :cond_11

    .line 194
    if-nez v5, :cond_76

    move v3, v8

    .line 195
    .local v3, "newPointerIndex":I
    :cond_76
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    iput v9, p0, Lcom/airbnb/android/views/CropImageView;->mLastTouchX:F

    .line 196
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    iput v9, p0, Lcom/airbnb/android/views/CropImageView;->mLastTouchY:F

    .line 197
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/airbnb/android/views/CropImageView;->mActivePointerId:I

    goto :goto_11

    .line 139
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_12
        :pswitch_5b
        :pswitch_25
        :pswitch_5e
        :pswitch_11
        :pswitch_11
        :pswitch_61
    .end packed-switch
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/airbnb/android/views/CropImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/android/views/CropImageView;->mFirstDraw:Z

    .line 71
    invoke-virtual {p0}, Lcom/airbnb/android/views/CropImageView;->invalidate()V

    .line 72
    return-void
.end method
