.class public Lcom/airbnb/android/views/AirImageView;
.super Lcom/android/volley/toolbox/NetworkImageView;
.source "AirImageView.java"


# static fields
.field public static final PARALLAX_COEFFICIENT:F = 0.65f

.field public static final PROPERTY_IMAGE_INV_RATIO:F = 0.6666667f


# instance fields
.field private intrinsicRatio:F

.field private mUri:Ljava/lang/String;

.field private mUriLoaderTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;)V

    .line 24
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/airbnb/android/views/AirImageView;->intrinsicRatio:F

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/airbnb/android/views/AirImageView;->intrinsicRatio:F

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/toolbox/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/airbnb/android/views/AirImageView;->intrinsicRatio:F

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/AirImageView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/AirImageView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/airbnb/android/views/AirImageView;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public static getImage(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)V
    .registers 4
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/android/volley/toolbox/ImageLoader$ImageListener;

    .prologue
    .line 111
    if-nez p0, :cond_e

    .line 112
    new-instance v0, Lcom/android/volley/VolleyError;

    const-string/jumbo v1, "Image url is null"

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/volley/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    .line 116
    :goto_d
    return-void

    .line 114
    :cond_e
    sget-object v0, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_d
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/airbnb/android/views/AirImageView;->mUriLoaderTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_a

    .line 94
    iget-object v0, p0, Lcom/airbnb/android/views/AirImageView;->mUriLoaderTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 97
    :cond_a
    invoke-super {p0}, Lcom/android/volley/toolbox/NetworkImageView;->onDetachedFromWindow()V

    .line 98
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/airbnb/android/views/AirImageView;->intrinsicRatio:F

    .line 122
    return-void
.end method

.method public setImageUri(Ljava/lang/String;I)V
    .registers 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "defaultResId"    # I

    .prologue
    const/4 v4, 0x0

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 52
    invoke-virtual {p0, p2}, Lcom/airbnb/android/views/AirImageView;->setImageResource(I)V

    .line 89
    :goto_a
    return-void

    .line 56
    :cond_b
    iput-object p1, p0, Lcom/airbnb/android/views/AirImageView;->mUri:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, v4}, Lcom/airbnb/android/views/AirImageView;->setDefaultImageResId(I)V

    .line 58
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/airbnb/android/utils/BitmapLruCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_22

    .line 60
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/AirImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_a

    .line 62
    :cond_22
    new-instance v1, Lcom/airbnb/android/views/AirImageView$1;

    invoke-direct {v1, p0, p2}, Lcom/airbnb/android/views/AirImageView$1;-><init>(Lcom/airbnb/android/views/AirImageView;I)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    instance-of v4, v1, Landroid/os/AsyncTask;

    if-nez v4, :cond_39

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/views/AirImageView$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    :goto_36
    iput-object v1, p0, Lcom/airbnb/android/views/AirImageView;->mUriLoaderTask:Landroid/os/AsyncTask;

    goto :goto_a

    :cond_39
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    goto :goto_36
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 102
    const/4 p1, 0x0

    .line 105
    :cond_7
    if-eqz p1, :cond_11

    iget-object v0, p0, Lcom/airbnb/android/views/AirImageView;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 106
    :cond_11
    sget-object v0, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    invoke-super {p0, p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader;)V

    .line 108
    :cond_16
    return-void
.end method

.method public updateParallaxState()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/airbnb/android/views/AirImageView;->intrinsicRatio:F

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Lcom/airbnb/android/views/AirImageView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float v1, v7, v8

    .line 132
    .local v1, "extraPixels":F
    cmpl-float v7, v1, v9

    if-nez v7, :cond_15

    .line 148
    :goto_14
    return-void

    .line 135
    :cond_15
    invoke-static {p0}, Lcom/airbnb/android/utils/MiscUtils;->getScreenLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 136
    .local v2, "location":Landroid/graphics/Rect;
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v7

    iget v4, v7, Landroid/graphics/Point;->y:I

    .line 137
    .local v4, "screenSize":I
    invoke-virtual {p0}, Lcom/airbnb/android/views/AirImageView;->getHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 138
    .local v0, "domain":I
    iget v7, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/airbnb/android/views/AirImageView;->getHeight()I

    move-result v8

    add-int v3, v7, v8

    .line 139
    .local v3, "positionInDomain":I
    int-to-float v7, v3

    int-to-float v8, v0

    div-float v5, v7, v8

    .line 142
    .local v5, "scrollProportion":F
    const/high16 v7, 0x3f800000

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 143
    const/high16 v7, 0x3f000000

    sub-float v7, v5, v7

    mul-float/2addr v7, v1

    float-to-int v6, v7

    .line 147
    .local v6, "scrollPx":I
    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/AirImageView;->setScrollY(I)V

    goto :goto_14
.end method
