.class public Lcom/airbnb/android/services/GroupPhotoUploadService;
.super Landroid/app/IntentService;
.source "GroupPhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadEvent;,
        Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadStartedEvent;,
        Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;
    }
.end annotation


# static fields
.field private static final INTENT_EXTRA_PHOTO_PATH:Ljava/lang/String; = "photo_path"

.field private static final MAX_IMAGE_SIZE:I = 0x800

.field private static final NOTIFICATION_ID:I = 0x2a

.field private static final NOTIFICATION_IMAGE_SIZE:I = 0x100

.field public static sIsCurrentlyUploading:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mPhoto:Lcom/airbnb/android/models/Photo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/android/services/GroupPhotoUploadService;->sIsCurrentlyUploading:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 76
    const-string/jumbo v0, "Groups Photo Upload Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService;->mLock:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/services/GroupPhotoUploadService;)Lcom/airbnb/android/models/Photo;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/GroupPhotoUploadService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService;->mPhoto:Lcom/airbnb/android/models/Photo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/services/GroupPhotoUploadService;Lcom/airbnb/android/models/Photo;)Lcom/airbnb/android/models/Photo;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/GroupPhotoUploadService;
    .param p1, "x1"    # Lcom/airbnb/android/models/Photo;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/airbnb/android/services/GroupPhotoUploadService;->mPhoto:Lcom/airbnb/android/models/Photo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/services/GroupPhotoUploadService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/GroupPhotoUploadService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/airbnb/android/services/GroupPhotoUploadService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static intentForUpload(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "photoPath"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/services/GroupPhotoUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "photo_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    return-object v0
.end method


# virtual methods
.method loadScaledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 9
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 174
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 175
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 176
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 178
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 179
    .local v3, "srcWidth":I
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 180
    .local v2, "srcHeight":I
    invoke-static {v3, v2, p2, p3, v4}, Lcom/airbnb/android/utils/ImageUtils;->getInSampleSize(IIIIZ)I

    move-result v4

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 182
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 184
    :try_start_18
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v4

    .line 186
    :goto_1c
    return-object v4

    .line 185
    :catch_1d
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v4, 0x0

    goto :goto_1c
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 16
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v13, 0x800

    const/16 v12, 0x100

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 83
    const-string/jumbo v8, "photo_path"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "photoPath":Ljava/lang/String;
    sput-boolean v10, Lcom/airbnb/android/services/GroupPhotoUploadService;->sIsCurrentlyUploading:Z

    .line 86
    iget-object v8, p0, Lcom/airbnb/android/services/GroupPhotoUploadService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/airbnb/android/services/GroupPhotoUploadService$1;

    invoke-direct {v9, p0}, Lcom/airbnb/android/services/GroupPhotoUploadService$1;-><init>(Lcom/airbnb/android/services/GroupPhotoUploadService;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v2, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v8, 0x7f0e0525

    invoke-virtual {p0, v8}, Lcom/airbnb/android/services/GroupPhotoUploadService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 96
    const v8, 0x7f0e0524

    invoke-virtual {p0, v8}, Lcom/airbnb/android/services/GroupPhotoUploadService;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 97
    const v8, 0x7f0200f5

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 98
    invoke-virtual {v2, v11, v11, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 99
    invoke-virtual {v2, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 102
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const/high16 v9, 0x8000000

    invoke-static {p0, v11, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 104
    invoke-virtual {p0, v4, v12, v12}, Lcom/airbnb/android/services/GroupPhotoUploadService;->loadScaledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 105
    .local v6, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_55

    .line 106
    invoke-virtual {v2, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 109
    :cond_55
    const/16 v8, 0x2a

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/airbnb/android/services/GroupPhotoUploadService;->startForeground(ILandroid/app/Notification;)V

    .line 112
    invoke-virtual {p0, v4, v13, v13}, Lcom/airbnb/android/services/GroupPhotoUploadService;->loadScaledBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 113
    .local v7, "uploadBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_b9

    .line 115
    :try_start_64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "upload"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ".jpg"

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 116
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 117
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x50

    invoke-virtual {v7, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_8f} :catch_b2

    .line 128
    .end local v3    # "out":Ljava/io/FileOutputStream;
    :goto_8f
    new-instance v5, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;

    new-instance v8, Lcom/airbnb/android/services/GroupPhotoUploadService$2;

    invoke-direct {v8, p0}, Lcom/airbnb/android/services/GroupPhotoUploadService$2;-><init>(Lcom/airbnb/android/services/GroupPhotoUploadService;)V

    invoke-direct {v5, p0, v1, v8}, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;-><init>(Lcom/airbnb/android/services/GroupPhotoUploadService;Ljava/io/File;Lcom/airbnb/android/requests/RequestListener;)V

    .line 151
    .local v5, "request":Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;
    invoke-virtual {v5}, Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;->execute()V

    .line 153
    iget-object v9, p0, Lcom/airbnb/android/services/GroupPhotoUploadService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 156
    :try_start_9f
    iget-object v8, p0, Lcom/airbnb/android/services/GroupPhotoUploadService;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_a4
    .catch Ljava/lang/InterruptedException; {:try_start_9f .. :try_end_a4} :catch_c2
    .catchall {:try_start_9f .. :try_end_a4} :catchall_bf

    .line 159
    :goto_a4
    :try_start_a4
    monitor-exit v9
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_bf

    .line 161
    sput-boolean v11, Lcom/airbnb/android/services/GroupPhotoUploadService;->sIsCurrentlyUploading:Z

    .line 163
    iget-object v8, p0, Lcom/airbnb/android/services/GroupPhotoUploadService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/airbnb/android/services/GroupPhotoUploadService$3;

    invoke-direct {v9, p0}, Lcom/airbnb/android/services/GroupPhotoUploadService$3;-><init>(Lcom/airbnb/android/services/GroupPhotoUploadService;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return-void

    .line 119
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "request":Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;
    :catch_b2
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_8f

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    :cond_b9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v1    # "file":Ljava/io/File;
    goto :goto_8f

    .line 159
    .restart local v5    # "request":Lcom/airbnb/android/services/GroupPhotoUploadService$GroupPhotoUploadRequest;
    :catchall_bf
    move-exception v8

    :try_start_c0
    monitor-exit v9
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_bf

    throw v8

    .line 157
    :catch_c2
    move-exception v8

    goto :goto_a4
.end method
