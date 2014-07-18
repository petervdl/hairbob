.class public Lcom/airbnb/android/utils/CameraHelper;
.super Ljava/lang/Object;
.source "CameraHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/airbnb/android/utils/CameraHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/airbnb/android/utils/CameraHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCameraFile(I)Ljava/io/File;
    .registers 7
    .param p0, "id"    # I

    .prologue
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Airbnb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "parentPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "outPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public static getCameraIntent(Ljava/io/File;)Landroid/content/Intent;
    .registers 4
    .param p0, "cameraFile"    # Ljava/io/File;

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    return-object v0
.end method

.method public static getPhotoIntent(Ljava/lang/String;Landroid/content/Context;Z)Landroid/content/Intent;
    .registers 8
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "frontCamera"    # Z

    .prologue
    .line 49
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "output"

    invoke-static {p0, p1}, Lcom/airbnb/android/utils/CameraHelper;->getTempFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v2, "android.intent.extra.sizeLimit"

    const v3, 0x13880

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    if-eqz p2, :cond_28

    .line 54
    const-string/jumbo v2, "android.intent.extras.CAMERA_FACING"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_28} :catch_29

    .line 60
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_28
    :goto_28
    return-object v1

    .line 58
    :catch_29
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/airbnb/android/utils/CameraHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "can\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x0

    goto :goto_28
.end method

.method public static getTempFile(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {p1}, Lcom/airbnb/android/utils/ExternalStorageHelper;->getCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 41
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_c

    .line 42
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 44
    :cond_c
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
.end method

.method public static isCameraAvailable(Landroid/content/Context;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 24
    .local v3, "pm":Landroid/content/pm/PackageManager;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    .local v4, "sdk":I
    const/4 v0, 0x0

    .line 27
    .local v0, "cameraAvailable":Z
    const/16 v7, 0x11

    if-lt v4, v7, :cond_2e

    .line 29
    const-string/jumbo v7, "android.hardware.camera.any"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 34
    :goto_14
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 35
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v7, 0x10000

    invoke-virtual {v3, v2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_38

    move v1, v5

    .line 36
    .local v1, "handlesIntent":Z
    :goto_29
    if-eqz v1, :cond_3a

    if-eqz v0, :cond_3a

    :goto_2d
    return v5

    .line 31
    .end local v1    # "handlesIntent":Z
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2e
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v7

    if-lez v7, :cond_36

    move v0, v5

    :goto_35
    goto :goto_14

    :cond_36
    move v0, v6

    goto :goto_35

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_38
    move v1, v6

    .line 35
    goto :goto_29

    .restart local v1    # "handlesIntent":Z
    :cond_3a
    move v5, v6

    .line 36
    goto :goto_2d
.end method
