.class public Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;
.super Landroid/os/AsyncTask;
.source "LocalBitmapForDisplayScalingTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_IMAGE_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 26
    array-length v9, p1

    if-ge v9, v12, :cond_9

    move-object v5, v10

    .line 78
    :goto_8
    return-object v5

    .line 30
    :cond_9
    const/16 v3, 0x200

    .line 32
    .local v3, "maxImageSize":I
    aget-object v6, p1, v13

    check-cast v6, Ljava/lang/String;

    .line 33
    .local v6, "src":Ljava/lang/String;
    aget-object v9, p1, v11

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    .local v0, "GL_MAX_TEXTURE_SIZE":I
    array-length v9, p1

    if-le v9, v12, :cond_22

    .line 35
    aget-object v9, p1, v12

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 38
    :cond_22
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 39
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 40
    invoke-static {v6, v4}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 42
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 43
    .local v8, "srcWidth":I
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 46
    .local v7, "srcHeight":I
    if-ge v3, v0, :cond_40

    .line 48
    :goto_32
    invoke-static {v8, v7, v3, v3, v11}, Lcom/airbnb/android/utils/ImageUtils;->getInSampleSize(IIIIZ)I

    move-result v9

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 50
    invoke-virtual {p0}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_42

    move-object v5, v10

    .line 51
    goto :goto_8

    :cond_40
    move v3, v0

    .line 46
    goto :goto_32

    .line 54
    :cond_42
    iput-boolean v13, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 55
    const/4 v5, 0x0

    .line 57
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    :try_start_45
    invoke-static {v6, v4}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_48
    .catch Ljava/lang/OutOfMemoryError; {:try_start_45 .. :try_end_48} :catch_5c

    move-result-object v5

    .line 68
    :goto_49
    invoke-virtual {p0}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_73

    .line 69
    if-eqz v5, :cond_5a

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-nez v9, :cond_5a

    .line 70
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5a
    move-object v5, v10

    .line 72
    goto :goto_8

    .line 58
    :catch_5c
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    sget-object v9, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Not enough memory to create scaled bitmap"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v9, v9, 0x2

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 62
    :try_start_6b
    invoke-static {v6, v4}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6b .. :try_end_6e} :catch_70

    move-result-object v5

    goto :goto_49

    .line 63
    :catch_70
    move-exception v2

    .local v2, "e2":Ljava/lang/OutOfMemoryError;
    move-object v5, v10

    .line 64
    goto :goto_8

    .line 76
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    .end local v2    # "e2":Ljava/lang/OutOfMemoryError;
    :cond_73
    :try_start_73
    invoke-static {v6}, Lcom/airbnb/android/utils/ImageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v9

    invoke-static {v5, v9}, Lcom/airbnb/android/utils/ImageUtils;->rotateIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7a} :catch_7c

    move-result-object v5

    goto :goto_8

    .line 77
    :catch_7c
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    goto :goto_8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "LocalBitmapForDisplayScalingTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_14

    .line 17
    :goto_9
    invoke-virtual {p0, p1}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_14
    move-exception v0

    const/4 v0, 0x0

    :try_start_16
    const-string/jumbo v1, "LocalBitmapForDisplayScalingTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1d} :catch_14

    goto :goto_9
.end method
