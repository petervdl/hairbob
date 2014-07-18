.class public Lcom/airbnb/android/utils/PhotoUtils;
.super Ljava/lang/Object;
.source "PhotoUtils.java"


# static fields
.field private static final MEDIA_CURSOR_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/utils/PhotoUtils;->MEDIA_CURSOR_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressAndUploadGroupsPhotos(Landroid/app/Activity;Ljava/io/File;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "photo"    # Ljava/io/File;

    .prologue
    .line 55
    new-instance v0, Lcom/airbnb/android/utils/PhotoUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/airbnb/android/utils/PhotoUtils$1;-><init>(Ljava/io/File;Landroid/app/Activity;)V

    .line 63
    .local v0, "task":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_10

    invoke-virtual {v0, v1}, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    .end local v0    # "task":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    :goto_f
    return-void

    .line 63
    .restart local v0    # "task":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    :cond_10
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "task":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_f
.end method

.method public static compressAndUploadGroupsPhotosFromUri(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 67
    new-instance v0, Lcom/airbnb/android/utils/PhotoUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/airbnb/android/utils/PhotoUtils$2;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_10

    invoke-virtual {v0, v1}, Lcom/airbnb/android/utils/PhotoUtils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    :goto_f
    return-void

    .line 67
    :cond_10
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_f
.end method

.method public static createPhotoDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p2, "galleryListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    const/4 v4, 0x1

    .line 24
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0e0737

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e0738

    invoke-virtual {v2, v3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e06da

    invoke-virtual {v2, v3, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 30
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 31
    return-object v1
.end method

.method public static getMultiPhotoIntent()Landroid/content/Intent;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 43
    invoke-static {}, Lcom/airbnb/android/utils/BuildHelper;->isAtLeastJellyBeanMR2()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string/jumbo v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {}, Lcom/airbnb/android/utils/PhotoUtils;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1b
.end method

.method public static getPhotoIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    return-object v0
.end method
