.class public Lcom/airbnb/android/utils/ShakeFeedbackHelper;
.super Ljava/lang/Object;
.source "ShakeFeedbackHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;
    }
.end annotation


# static fields
.field private static final KEYBOARD_DISMISS_DELAY:I = 0x3e8

.field private static final LOGCAT_COMMAND:Ljava/lang/String; = "logcat -v threadtime -d"

.field private static final LOGCAT_FILENAME:Ljava/lang/String; = "logcat.txt"

.field private static final MINIMUM_FEEDBACK_TITLE_LENGTH:I = 0x4

.field private static final SCREENSHOT_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final SCREENSHOT_PREFIX:Ljava/lang/String; = "screenshot_"

.field private static final SCREENSHOT_QUALITY:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mActivity:Landroid/app/Activity;

.field private mSensorListener:Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const-class v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/DebugSettings;->isShakeFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 72
    iput-object p1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    .line 73
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 74
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 76
    new-instance v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;-><init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper$1;)V

    iput-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mSensorListener:Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;

    .line 77
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mSensorListener:Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;

    new-instance v1, Lcom/airbnb/android/utils/ShakeFeedbackHelper$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$1;-><init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;->setOnShakeListener(Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener$OnShakeListener;)V

    .line 84
    :cond_39
    return-void
.end method

.method static synthetic access$100(Lcom/airbnb/android/utils/ShakeFeedbackHelper;)V
    .registers 1
    .param p0, "x0"    # Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->showFeedbackDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/airbnb/android/utils/ShakeFeedbackHelper;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/utils/ShakeFeedbackHelper;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/utils/ShakeFeedbackHelper;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/airbnb/android/utils/ShakeFeedbackHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->sendFeedback(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private varargs appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 8
    .param p1, "builder"    # Ljava/lang/StringBuilder;
    .param p2, "content"    # [Ljava/lang/String;

    .prologue
    .line 283
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_d

    aget-object v3, v0, v1

    .line 284
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 286
    .end local v3    # "s":Ljava/lang/String;
    :cond_d
    const-string/jumbo v4, "<br />"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    return-void
.end method

.method private getLogcat()Ljava/io/File;
    .registers 11

    .prologue
    .line 297
    iget-object v8, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    .line 298
    .local v2, "externalCache":Ljava/io/File;
    if-nez v2, :cond_12

    .line 299
    sget-object v8, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "unable to save logcat since external cache directory isn\'t available"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v4, 0x0

    .line 326
    :goto_11
    return-object v4

    .line 304
    :cond_12
    new-instance v4, Ljava/io/File;

    const-string/jumbo v8, "logcat.txt"

    invoke-direct {v4, v2, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 305
    .local v4, "logcatFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 306
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 309
    :cond_23
    const/4 v6, 0x0

    .line 311
    .local v6, "writer":Ljava/io/FileWriter;
    :try_start_24
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_66

    .line 313
    .end local v6    # "writer":Ljava/io/FileWriter;
    .local v7, "writer":Ljava/io/FileWriter;
    :try_start_29
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string/jumbo v9, "logcat -v threadtime -d"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 314
    .local v5, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 316
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    const-string/jumbo v3, ""

    .line 317
    .local v3, "line":Ljava/lang/String;
    :goto_45
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 318
    invoke-virtual {v7, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_55} :catch_56

    goto :goto_45

    .line 322
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "process":Ljava/lang/Process;
    :catch_56
    move-exception v1

    move-object v6, v7

    .line 323
    .end local v7    # "writer":Ljava/io/FileWriter;
    .local v1, "e":Ljava/io/IOException;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    :goto_58
    sget-object v8, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Error writing logcat output to file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    .line 321
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "writer":Ljava/io/FileWriter;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "process":Ljava/lang/Process;
    .restart local v7    # "writer":Ljava/io/FileWriter;
    :cond_61
    :try_start_61
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_56

    move-object v6, v7

    .line 324
    .end local v7    # "writer":Ljava/io/FileWriter;
    .restart local v6    # "writer":Ljava/io/FileWriter;
    goto :goto_11

    .line 322
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "process":Ljava/lang/Process;
    :catch_66
    move-exception v1

    goto :goto_58
.end method

.method private getScreenshot()Ljava/io/File;
    .registers 15

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 336
    iget-object v10, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    .line 337
    .local v8, "rootView":Landroid/view/View;
    invoke-virtual {v8, v11}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 338
    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 339
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v8, v13}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 340
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 343
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    new-array v11, v11, [I

    const v12, 0x1010054

    aput v12, v11, v13

    invoke-virtual {v10, v11}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 344
    .local v9, "ta":Landroid/content/res/TypedArray;
    iget-object v10, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v9, v13, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 347
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 348
    invoke-virtual {v8, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 351
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v6, "fileName":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "screenshot_"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "yyyyMMdd-hhmmss"

    invoke-direct {v3, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 354
    .local v3, "df":Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v10, ".jpg"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :try_start_6d
    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 359
    .local v5, "file":Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 360
    .local v7, "fos":Ljava/io/FileOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v1, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 361
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 362
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8e} :catch_8f

    .line 369
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_8e
    return-object v5

    .line 365
    :catch_8f
    move-exception v4

    .line 366
    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Error creating screenshot"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    const/4 v5, 0x0

    goto :goto_8e
.end method

.method private onWifi()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 263
    iget-object v5, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    const-string/jumbo v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 264
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_1e

    .line 265
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 266
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1e

    .line 267
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 268
    .local v0, "connectionType":I
    if-ne v0, v3, :cond_1c

    .line 271
    .end local v0    # "connectionType":I
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :goto_1b
    return v3

    .restart local v0    # "connectionType":I
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1c
    move v3, v4

    .line 268
    goto :goto_1b

    .end local v0    # "connectionType":I
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1e
    move v3, v4

    .line 271
    goto :goto_1b
.end method

.method private sendFeedback(Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 181
    .local v7, "filesToSend":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->getScreenshot()Ljava/io/File;

    move-result-object v14

    .line 182
    .local v14, "screenshot":Ljava/io/File;
    if-eqz v14, :cond_e

    .line 183
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->getLogcat()Ljava/io/File;

    move-result-object v11

    .line 188
    .local v11, "logcat":Ljava/io/File;
    if-eqz v11, :cond_21

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_21

    .line 189
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v3, "body":Ljava/lang/StringBuilder;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6b

    .line 197
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>Description:</b>"

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 198
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p2, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 199
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<br />"

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 202
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 203
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v13, :cond_cd

    .line 206
    :try_start_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 207
    .local v9, "info":Landroid/content/pm/PackageInfo;
    if-eqz v9, :cond_cd

    .line 208
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>Version:</b> "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v18, v0

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 209
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>Version Code:</b> "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    iget v0, v9, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    :try_end_cd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77 .. :try_end_cd} :catch_21d

    .line 217
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    :cond_cd
    :goto_cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/airbnb/android/AirbnbApi;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/AirbnbApi;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/airbnb/android/AirbnbApi;->getCurrentUser()Lcom/airbnb/android/models/User;

    move-result-object v15

    .line 218
    .local v15, "user":Lcom/airbnb/android/models/User;
    if-eqz v15, :cond_ff

    .line 219
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>User:</b> "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v15}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 221
    :cond_ff
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>Activity:</b> "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ".class"

    const-string/jumbo v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 222
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>OS Version:</b> "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string/jumbo v18, " (SDK "

    aput-object v18, v16, v17

    const/16 v17, 0x3

    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string/jumbo v18, ")"

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 223
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>Manufacturer:</b> "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 224
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>Device:</b> "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 225
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>Model:</b> "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 226
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v16, 0x0

    const-string/jumbo v18, "<b>Network:</b> "

    aput-object v18, v17, v16

    const/16 v18, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->onWifi()Z

    move-result v16

    if-eqz v16, :cond_22c

    const-string/jumbo v16, "Wifi"

    :goto_1d3
    aput-object v16, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 227
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "<b>Language:</b> "

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->appendLine(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 230
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v6, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_207
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_230

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 232
    .local v5, "file":Ljava/io/File;
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_207

    .line 211
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v15    # "user":Lcom/airbnb/android/models/User;
    :catch_21d
    move-exception v4

    .line 212
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v16, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "error getting package info"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_cd

    .line 226
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15    # "user":Lcom/airbnb/android/models/User;
    :cond_22c
    const-string/jumbo v16, "Cellular"

    goto :goto_1d3

    .line 236
    .restart local v6    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_230
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v16, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v10, "intent":Landroid/content/Intent;
    const-string/jumbo v16, "text/html"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v16, "android.intent.extra.EMAIL"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string/jumbo v19, "androidbetafeedback@airbnb.com"

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string/jumbo v16, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string/jumbo v16, "android.intent.extra.TEXT"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 241
    const-string/jumbo v16, "android.intent.extra.STREAM"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 243
    const/4 v2, 0x0

    .line 245
    .local v2, "best":Landroid/content/pm/ResolveInfo;
    if-eqz v13, :cond_2c5

    .line 246
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v10, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 247
    .local v12, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_28e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2c5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 248
    .local v9, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string/jumbo v17, ".gm"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2c4

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "gmail"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_28e

    .line 249
    :cond_2c4
    move-object v2, v9

    .line 254
    .end local v9    # "info":Landroid/content/pm/ResolveInfo;
    .end local v12    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2c5
    if-eqz v2, :cond_2ee

    .line 255
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 260
    :goto_2ed
    return-void

    .line 258
    :cond_2ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const v18, 0x7f0e01dc

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v10, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2ed
.end method

.method private showFeedbackDialog()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 111
    iget-object v7, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0301ce

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "dialogView":Landroid/view/View;
    const v7, 0x7f0804f4

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 113
    .local v6, "title":Landroid/widget/EditText;
    const v7, 0x7f0804f5

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 115
    .local v1, "description":Landroid/widget/EditText;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e01d8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/high16 v8, 0x1040000

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0e01da

    new-instance v9, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;

    invoke-direct {v9, p0, v6, v1}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$2;-><init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 139
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 141
    const/4 v7, -0x1

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 142
    .local v4, "sendButton":Landroid/widget/Button;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    new-instance v5, Lcom/airbnb/android/utils/ShakeFeedbackHelper$3;

    invoke-direct {v5, p0, v6, v4}, Lcom/airbnb/android/utils/ShakeFeedbackHelper$3;-><init>(Lcom/airbnb/android/utils/ShakeFeedbackHelper;Landroid/widget/EditText;Landroid/widget/Button;)V

    .line 163
    .local v5, "textChangedListener":Landroid/text/TextWatcher;
    invoke-virtual {v6, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 164
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 165
    return-void
.end method


# virtual methods
.method public start()V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/airbnb/android/utils/DebugSettings;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/utils/DebugSettings;->isShakeFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 91
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mSensorListener:Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;

    iget-object v2, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 96
    :cond_16
    return-void

    .line 92
    :cond_17
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isProduction()Z

    move-result v0

    if-nez v0, :cond_16

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "start() was called, but shake feedback is not enabled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_b

    .line 103
    iget-object v0, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/airbnb/android/utils/ShakeFeedbackHelper;->mSensorListener:Lcom/airbnb/android/utils/ShakeFeedbackHelper$ShakeEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 105
    :cond_b
    return-void
.end method
