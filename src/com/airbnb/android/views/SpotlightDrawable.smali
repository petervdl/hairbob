.class public Lcom/airbnb/android/views/SpotlightDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SpotlightDrawable.java"


# static fields
.field private static DK_GREY:I

.field private static LT_GREY:I


# instance fields
.field private final mBackground:Landroid/graphics/Paint;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCenterX:F

.field private final mCenterY:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRadius:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/high16 v0, 0x66000000

    sput v0, Lcom/airbnb/android/views/SpotlightDrawable;->LT_GREY:I

    .line 18
    const/high16 v0, -0x41000000

    sput v0, Lcom/airbnb/android/views/SpotlightDrawable;->DK_GREY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFF)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F
    .param p4, "radius"    # F

    .prologue
    const/4 v3, 0x1

    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 29
    iput p2, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mCenterX:F

    .line 30
    iput p3, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mCenterY:F

    .line 31
    iput p4, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mRadius:F

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mPaint:Landroid/graphics/Paint;

    .line 33
    iget-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    iget-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mBackground:Landroid/graphics/Paint;

    .line 39
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_49

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 45
    new-instance v8, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 46
    .local v8, "bcanvas":Landroid/graphics/Canvas;
    iget-object v9, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mBackground:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v4, v2

    sget v5, Lcom/airbnb/android/views/SpotlightDrawable;->LT_GREY:I

    sget v6, Lcom/airbnb/android/views/SpotlightDrawable;->DK_GREY:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 47
    iget-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mBackground:Landroid/graphics/Paint;

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 48
    iget v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mRadius:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_49

    .line 49
    iget v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mCenterX:F

    iget v2, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mCenterY:F

    iget v3, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mRadius:F

    iget-object v4, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 52
    .end local v8    # "bcanvas":Landroid/graphics/Canvas;
    :cond_49
    iget-object v0, p0, Lcom/airbnb/android/views/SpotlightDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 53
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .param p1, "alpha"    # I

    .prologue
    .line 62
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 66
    return-void
.end method
