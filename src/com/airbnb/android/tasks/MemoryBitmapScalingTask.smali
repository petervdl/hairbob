.class public Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;
.super Landroid/os/AsyncTask;
.source "MemoryBitmapScalingTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;->TAG:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    :goto_2
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string/jumbo v1, "MemoryBitmapScalingTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_9} :catch_14

    .line 17
    :goto_9
    invoke-virtual {p0, p1}, Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_14
    move-exception v0

    const/4 v0, 0x0

    :try_start_16
    const-string/jumbo v1, "MemoryBitmapScalingTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_1d} :catch_14

    goto :goto_9
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .registers 14
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 22
    array-length v8, p1

    const/4 v10, 0x4

    if-eq v8, v10, :cond_8

    move-object v0, v9

    .line 53
    :cond_7
    :goto_7
    return-object v0

    .line 26
    :cond_8
    const/4 v8, 0x0

    aget-object v7, p1, v8

    check-cast v7, Landroid/graphics/Bitmap;

    .line 27
    .local v7, "src":Landroid/graphics/Bitmap;
    aget-object v8, p1, v11

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 28
    .local v3, "maxWidth":I
    const/4 v8, 0x2

    aget-object v8, p1, v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 29
    .local v2, "maxHeight":I
    const/4 v8, 0x3

    aget-object v0, p1, v8

    check-cast v0, Ljava/lang/String;

    .line 31
    .local v0, "dst":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    .local v6, "scaledBitmapFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_36

    :cond_34
    move-object v0, v9

    .line 33
    goto :goto_7

    .line 36
    :cond_36
    const/4 v5, 0x0

    .line 37
    .local v5, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-static {v7, v3, v2, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 40
    :try_start_3b
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 41
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 42
    .local v4, "out":Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v5, v8, v9, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_53} :catch_60

    .line 47
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :goto_53
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_7

    .line 50
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7

    .line 43
    :catch_60
    move-exception v1

    .line 44
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v8, Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53
.end method
