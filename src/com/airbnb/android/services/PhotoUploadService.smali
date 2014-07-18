.class public Lcom/airbnb/android/services/PhotoUploadService;
.super Landroid/app/IntentService;
.source "PhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadEvent;,
        Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadStartedEvent;,
        Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;
    }
.end annotation


# static fields
.field private static final INTENT_EXTRA_LISTING_ID:Ljava/lang/String; = "listing_id"

.field private static final INTENT_EXTRA_PHOTO_PATH:Ljava/lang/String; = "photo_path"

.field public static final MAX_IMAGE_SIZE:I = 0x800

.field private static final NOTIFICATION_ID:I = 0x2a

.field private static final NOTIFICATION_IMAGE_SIZE:I = 0x100

.field public static sIsCurrentlyUploading:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListing:Lcom/airbnb/android/models/Listing;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/airbnb/android/services/PhotoUploadService;->sIsCurrentlyUploading:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 106
    const-string/jumbo v0, "Photo Upload Service"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService;->mLock:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/services/PhotoUploadService;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/PhotoUploadService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService;->mListing:Lcom/airbnb/android/models/Listing;

    return-object v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/services/PhotoUploadService;Lcom/airbnb/android/models/Listing;)Lcom/airbnb/android/models/Listing;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/PhotoUploadService;
    .param p1, "x1"    # Lcom/airbnb/android/models/Listing;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/airbnb/android/services/PhotoUploadService;->mListing:Lcom/airbnb/android/models/Listing;

    return-object p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/services/PhotoUploadService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/services/PhotoUploadService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/airbnb/android/services/PhotoUploadService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static intentForUpload(Landroid/content/Context;Ljava/lang/String;J)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {p0, v0, p2, p3}, Lcom/airbnb/android/services/PhotoUploadService;->intentForUpload(Landroid/content/Context;Ljava/util/List;J)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static intentForUpload(Landroid/content/Context;Ljava/util/List;J)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "listingId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/airbnb/android/services/PhotoUploadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "photo_path"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 95
    const-string/jumbo v1, "listing_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 96
    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 15
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x100

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 113
    const-string/jumbo v1, "photo_path"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 114
    .local v4, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "listing_id"

    const-wide/16 v8, -0x1

    invoke-virtual {p1, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 116
    .local v2, "listingId":J
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26

    const-wide/16 v8, 0x0

    cmp-long v1, v2, v8

    if-gez v1, :cond_2c

    .line 117
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 120
    :cond_2c
    sput-boolean v11, Lcom/airbnb/android/services/PhotoUploadService;->sIsCurrentlyUploading:Z

    .line 121
    iget-object v1, p0, Lcom/airbnb/android/services/PhotoUploadService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/airbnb/android/services/PhotoUploadService$1;

    invoke-direct {v5, p0}, Lcom/airbnb/android/services/PhotoUploadService$1;-><init>(Lcom/airbnb/android/services/PhotoUploadService;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 130
    .local v6, "notifBuilder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v1, 0x7f0e0525

    invoke-virtual {p0, v1}, Lcom/airbnb/android/services/PhotoUploadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 131
    const v1, 0x7f0e0524

    invoke-virtual {p0, v1}, Lcom/airbnb/android/services/PhotoUploadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 132
    const v1, 0x7f0200f5

    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 133
    invoke-virtual {v6, v10, v10, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 134
    invoke-virtual {v6, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 137
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x8000000

    invoke-static {p0, v10, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 139
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v12, v12}, Lcom/airbnb/android/utils/ImageUtils;->scaleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 140
    .local v7, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_7a

    .line 141
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 144
    :cond_7a
    const/16 v1, 0x2a

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Lcom/airbnb/android/services/PhotoUploadService;->startForeground(ILandroid/app/Notification;)V

    .line 146
    new-instance v0, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;

    new-instance v5, Lcom/airbnb/android/services/PhotoUploadService$2;

    invoke-direct {v5, p0}, Lcom/airbnb/android/services/PhotoUploadService$2;-><init>(Lcom/airbnb/android/services/PhotoUploadService;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;-><init>(Lcom/airbnb/android/services/PhotoUploadService;JLjava/util/List;Lcom/airbnb/android/requests/RequestListener;)V

    .line 169
    .local v0, "request":Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;
    invoke-virtual {v0}, Lcom/airbnb/android/services/PhotoUploadService$PhotoUploadRequest;->execute()V

    .line 171
    iget-object v5, p0, Lcom/airbnb/android/services/PhotoUploadService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 174
    :try_start_94
    iget-object v1, p0, Lcom/airbnb/android/services/PhotoUploadService;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_99
    .catch Ljava/lang/InterruptedException; {:try_start_94 .. :try_end_99} :catch_aa
    .catchall {:try_start_94 .. :try_end_99} :catchall_a7

    .line 177
    :goto_99
    :try_start_99
    monitor-exit v5
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_a7

    .line 179
    sput-boolean v10, Lcom/airbnb/android/services/PhotoUploadService;->sIsCurrentlyUploading:Z

    .line 181
    iget-object v1, p0, Lcom/airbnb/android/services/PhotoUploadService;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/airbnb/android/services/PhotoUploadService$3;

    invoke-direct {v5, p0, v4}, Lcom/airbnb/android/services/PhotoUploadService$3;-><init>(Lcom/airbnb/android/services/PhotoUploadService;Ljava/util/List;)V

    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 194
    return-void

    .line 177
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v5
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1

    .line 175
    :catch_aa
    move-exception v1

    goto :goto_99
.end method
