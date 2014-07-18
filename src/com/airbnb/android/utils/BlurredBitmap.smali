.class public Lcom/airbnb/android/utils/BlurredBitmap;
.super Ljava/lang/Object;
.source "BlurredBitmap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_BLUR_EDGE_SIZE:I = 0x0

.field private static final DEFAULT_BLUR_RADIUS:F = 11.0f

.field private static final MAX_RADIUS:F = 25.0f

.field private static sRS:Landroid/support/v8/renderscript/RenderScript;


# instance fields
.field private mBlurTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFinished:Z

.field private mKey:Ljava/lang/String;

.field private mResult:Landroid/graphics/Bitmap;

.field private final mSrc:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    if-nez p2, :cond_e

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot blur a null bitmap."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_e
    iput-object p2, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mSrc:Landroid/graphics/Bitmap;

    .line 52
    invoke-direct {p0, p1}, Lcom/airbnb/android/utils/BlurredBitmap;->buildKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mKey:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$002(Lcom/airbnb/android/utils/BlurredBitmap;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/BlurredBitmap;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mIsFinished:Z

    return p1
.end method

.method static synthetic access$102(Lcom/airbnb/android/utils/BlurredBitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/BlurredBitmap;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mResult:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/airbnb/android/utils/BlurredBitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/BlurredBitmap;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mSrc:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300()Landroid/support/v8/renderscript/RenderScript;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/airbnb/android/utils/BlurredBitmap;->sRS:Landroid/support/v8/renderscript/RenderScript;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/RenderScript;
    .registers 1
    .param p0, "x0"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 28
    sput-object p0, Lcom/airbnb/android/utils/BlurredBitmap;->sRS:Landroid/support/v8/renderscript/RenderScript;

    return-object p0
.end method

.method static synthetic access$400(Lcom/airbnb/android/utils/BlurredBitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "x0"    # Lcom/airbnb/android/utils/BlurredBitmap;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/utils/BlurredBitmap;->convert(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/airbnb/android/utils/BlurredBitmap;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/BlurredBitmap;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/airbnb/android/utils/BlurredBitmap;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/BlurredBitmap;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mBlurTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private buildKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_blur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private convert(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    const/4 v5, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 197
    .local v1, "convertedBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 198
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 199
    .local v2, "paint":Landroid/graphics/Paint;
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    invoke-virtual {v0, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    return-object v1
.end method

.method public static fetchAndBlur(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 5
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 213
    const v0, 0x7f0200db

    const/high16 v1, 0x41300000

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/airbnb/android/utils/BlurredBitmap;->fetchAndBlur(Ljava/lang/String;Landroid/widget/ImageView;IFI)V

    .line 214
    return-void
.end method

.method public static fetchAndBlur(Ljava/lang/String;Landroid/widget/ImageView;I)V
    .registers 5
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "defaultImageId"    # I

    .prologue
    .line 227
    const/high16 v0, 0x41300000

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/airbnb/android/utils/BlurredBitmap;->fetchAndBlur(Ljava/lang/String;Landroid/widget/ImageView;IFI)V

    .line 228
    return-void
.end method

.method public static fetchAndBlur(Ljava/lang/String;Landroid/widget/ImageView;IFI)V
    .registers 12
    .param p0, "imageUrl"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "defaultImageId"    # I
    .param p3, "blurRadius"    # F
    .param p4, "blurEdgeSize"    # I

    .prologue
    .line 245
    sget-object v6, Lcom/airbnb/android/AirbnbApplication;->sImageLoader:Lcom/android/volley/toolbox/ImageLoader;

    new-instance v0, Lcom/airbnb/android/utils/BlurredBitmap$3;

    move-object v1, p1

    move-object v2, p0

    move v3, p3

    move v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/utils/BlurredBitmap$3;-><init>(Landroid/widget/ImageView;Ljava/lang/String;FII)V

    invoke-virtual {v6, p0, v0}, Lcom/android/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/android/volley/toolbox/ImageLoader$ImageListener;)Lcom/android/volley/toolbox/ImageLoader$ImageContainer;

    .line 269
    return-void
.end method


# virtual methods
.method public declared-synchronized blur(Landroid/content/Context;FILcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # F
    .param p3, "blurEdgeSize"    # I
    .param p4, "callback"    # Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;

    .prologue
    .line 92
    monitor-enter p0

    if-nez p4, :cond_f

    .line 93
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Cannot retrieve a blurred bitmap without a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    .line 92
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 96
    :cond_f
    const/4 v1, 0x1

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1a

    :try_start_14
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->canDeviceRunRenderscript()Z

    move-result v1

    if-nez v1, :cond_21

    .line 97
    :cond_1a
    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mSrc:Landroid/graphics/Bitmap;

    invoke-interface {p4, v1}, Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;->bitmapBlurComplete(Landroid/graphics/Bitmap;)V
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_c

    .line 193
    :goto_1f
    monitor-exit p0

    return-void

    .line 101
    :cond_21
    const/high16 v1, 0x41c80000

    cmpl-float v1, p2, v1

    if-lez v1, :cond_30

    .line 102
    :try_start_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Cannot blur with a radius > 25.0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_30
    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 106
    invoke-static {p1}, Lcom/airbnb/android/utils/BitmapLruCache;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/BitmapLruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/utils/BitmapLruCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_44

    .line 108
    invoke-interface {p4, v0}, Lcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;->bitmapBlurComplete(Landroid/graphics/Bitmap;)V

    goto :goto_1f

    .line 113
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_44
    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mBlurTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_52

    .line 114
    const-class v2, Lcom/airbnb/android/utils/BlurredBitmap;

    monitor-enter v2
    :try_end_4b
    .catchall {:try_start_27 .. :try_end_4b} :catchall_c

    .line 115
    :try_start_4b
    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mBlurTask:Landroid/os/AsyncTask;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 116
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_6d

    .line 119
    :cond_52
    :try_start_52
    new-instance v1, Lcom/airbnb/android/utils/BlurredBitmap$2;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/airbnb/android/utils/BlurredBitmap$2;-><init>(Lcom/airbnb/android/utils/BlurredBitmap;Landroid/content/Context;FLcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;)V

    iput-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mBlurTask:Landroid/os/AsyncTask;

    .line 192
    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mBlurTask:Landroid/os/AsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    instance-of v3, v1, Landroid/os/AsyncTask;

    if-nez v3, :cond_70

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_6c
    .catchall {:try_start_52 .. :try_end_6c} :catchall_c

    goto :goto_1f

    .line 116
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    :try_start_6f
    throw v1

    .line 192
    :cond_70
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_c

    goto :goto_1f
.end method

.method public declared-synchronized blurBlocking(Landroid/content/Context;FI)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # F
    .param p3, "blurEdgeSize"    # I

    .prologue
    .line 64
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mIsFinished:Z

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 66
    .local v0, "block":Ljava/lang/Object;
    new-instance v1, Lcom/airbnb/android/utils/BlurredBitmap$1;

    invoke-direct {v1, p0, v0}, Lcom/airbnb/android/utils/BlurredBitmap$1;-><init>(Lcom/airbnb/android/utils/BlurredBitmap;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/airbnb/android/utils/BlurredBitmap;->blur(Landroid/content/Context;FILcom/airbnb/android/utils/BlurredBitmap$BitmapBlurCallback;)V

    .line 79
    iget-boolean v1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mIsFinished:Z
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_23

    if-nez v1, :cond_1a

    .line 81
    :try_start_15
    monitor-enter v0
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_16} :catch_21
    .catchall {:try_start_15 .. :try_end_16} :catchall_23

    .line 82
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 83
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1e

    .line 88
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v1, p0, Lcom/airbnb/android/utils/BlurredBitmap;->mResult:Landroid/graphics/Bitmap;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_23

    monitor-exit p0

    return-object v1

    .line 83
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw v1
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_21} :catch_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_23

    .line 84
    :catch_21
    move-exception v1

    goto :goto_1a

    .line 64
    .end local v0    # "block":Ljava/lang/Object;
    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public canBlur()Z
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->canDeviceRunRenderscript()Z

    move-result v0

    return v0
.end method
