.class public abstract Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
.super Landroid/os/AsyncTask;
.source "ImageCompressAndRotateTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_IMAGE_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ImageCompressAndRotateTask"


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private final mImageFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .param p1, "imageFile"    # Ljava/io/File;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->mImageFile:Ljava/io/File;

    .line 27
    return-void
.end method

.method private static shrinkFirst(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .registers 10
    .param p0, "imageFile"    # Ljava/io/File;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v6, 0x1

    .line 82
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "src":Ljava/lang/String;
    move v1, p1

    .line 84
    .local v1, "maxWidth":I
    move v0, p2

    .line 86
    .local v0, "maxHeight":I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 88
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 89
    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 91
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 92
    .local v5, "srcWidth":I
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 93
    .local v4, "srcHeight":I
    invoke-static {v5, v4, v1, v0, v6}, Lcom/airbnb/android/utils/ImageUtils;->getInSampleSize(IIIIZ)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 95
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 96
    invoke-static {v3, v2}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .registers 3

    :try_start_0
    iput-object p1, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/io/File;
    .registers 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 32
    const/4 v6, 0x0

    .line 33
    .local v6, "smallBitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 36
    .local v4, "rotatedBitmap":Landroid/graphics/Bitmap;
    :try_start_2
    iget-object v7, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->mImageFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/airbnb/android/utils/ImageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v5

    .line 39
    .local v5, "rotationDegrees":I
    iget-object v7, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->mImageFile:Ljava/io/File;

    const/16 v8, 0x400

    const/16 v9, 0x400

    invoke-static {v7, v8, v9}, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->shrinkFirst(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 42
    invoke-static {v6, v5}, Lcom/airbnb/android/utils/ImageUtils;->rotateIfNeeded(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->mImageFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".rotated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "newImageFilePath":Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "fos":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {v4, v7, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 48
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 51
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_48} :catch_49
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_48} :catch_56
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_48} :catch_63

    .line 69
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v2    # "newImageFilePath":Ljava/lang/String;
    .end local v5    # "rotationDegrees":I
    :goto_48
    return-object v7

    .line 53
    :catch_49
    move-exception v0

    .line 54
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImageCompressAndRotateTask"

    const-string/jumbo v8, "IOException when compress and rotate image, returning original image instead"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v7, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->mImageFile:Ljava/io/File;

    goto :goto_48

    .line 57
    .end local v0    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "ImageCompressAndRotateTask"

    const-string/jumbo v8, "NullPointerException when compress and rotate image, returning original image instead"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v7, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->mImageFile:Ljava/io/File;

    goto :goto_48

    .line 61
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_63
    move-exception v3

    .line 62
    .local v3, "oom":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v7, "ImageCompressAndRotateTask"

    const-string/jumbo v8, "OutOfMemory when compress and rotate image, returning original image instead"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-eqz v6, :cond_72

    .line 64
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    :cond_72
    if-eqz v4, :cond_77

    .line 67
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    :cond_77
    iget-object v7, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->mImageFile:Ljava/io/File;

    goto :goto_48
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "ImageCompressAndRotateTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_16

    .line 16
    :goto_9
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->doInBackground([Ljava/lang/Void;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_16
    move-exception v0

    const/4 v0, 0x0

    :try_start_18
    const-string/jumbo v1, "ImageCompressAndRotateTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_1f} :catch_16

    goto :goto_9
.end method

.method protected abstract onPostExecute(Ljava/io/File;)V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "ImageCompressAndRotateTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_12

    .line 16
    :goto_9
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->onPostExecute(Ljava/io/File;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_12
    move-exception v0

    const/4 v0, 0x0

    :try_start_14
    const-string/jumbo v1, "ImageCompressAndRotateTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1b} :catch_12

    goto :goto_9
.end method
