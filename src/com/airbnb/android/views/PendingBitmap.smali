.class public Lcom/airbnb/android/views/PendingBitmap;
.super Landroid/view/View;
.source "PendingBitmap.java"


# instance fields
.field private mCenter:Landroid/graphics/Point;

.field private mOffset:Landroid/graphics/Point;

.field private mPendingPhotoAnimDurationMS:I

.field private mPendingPhotoIndicator:Landroid/graphics/Bitmap;

.field private mPendingPhotoPaint:Landroid/graphics/Paint;

.field private mScreenSpace:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/PendingBitmap;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/PendingBitmap;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/views/PendingBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/PendingBitmap;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private computeLayout()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_54

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/airbnb/android/views/PendingBitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/airbnb/android/views/PendingBitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/airbnb/android/views/PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/airbnb/android/views/PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/airbnb/android/views/PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/airbnb/android/views/PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/airbnb/android/views/PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/airbnb/android/views/PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/airbnb/android/views/PendingBitmap;->mCenter:Landroid/graphics/Point;

    .line 93
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/airbnb/android/views/PendingBitmap;->mOffset:Landroid/graphics/Point;

    .line 95
    :cond_54
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoPaint:Landroid/graphics/Paint;

    .line 39
    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/views/PendingBitmap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoAnimDurationMS:I

    .line 45
    new-instance v1, Lcom/airbnb/android/views/PendingBitmap$1;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/views/PendingBitmap$1;-><init>(Lcom/airbnb/android/views/PendingBitmap;Landroid/content/res/Resources;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    instance-of v3, v1, Landroid/os/AsyncTask;

    if-nez v3, :cond_41

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/PendingBitmap$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    :goto_40
    return-void

    .line 45
    :cond_41
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_40
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    if-eqz v1, :cond_54

    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_54

    .line 64
    const/high16 v1, 0x43b40000

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoAnimDurationMS:I

    int-to-long v4, v4

    rem-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoAnimDurationMS:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 66
    .local v0, "degrees":F
    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mScreenSpace:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 68
    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/airbnb/android/views/PendingBitmap;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 69
    iget-object v1, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoIndicator:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/airbnb/android/views/PendingBitmap;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/airbnb/android/views/PendingBitmap;->mOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/airbnb/android/views/PendingBitmap;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/airbnb/android/views/PendingBitmap;->mOffset:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/airbnb/android/views/PendingBitmap;->mPendingPhotoPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 73
    .end local v0    # "degrees":F
    :cond_54
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 77
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 78
    invoke-direct {p0}, Lcom/airbnb/android/views/PendingBitmap;->computeLayout()V

    .line 79
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 84
    invoke-direct {p0}, Lcom/airbnb/android/views/PendingBitmap;->computeLayout()V

    .line 85
    return-void
.end method
