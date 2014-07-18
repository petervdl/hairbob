.class final Lcom/airbnb/android/utils/PhotoUtils$1;
.super Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
.source "PhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/utils/PhotoUtils;->compressAndUploadGroupsPhotos(Landroid/app/Activity;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/app/Activity;)V
    .registers 3
    .param p1, "x0"    # Ljava/io/File;

    .prologue
    .line 55
    iput-object p2, p0, Lcom/airbnb/android/utils/PhotoUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/io/File;)V
    .registers 5
    .param p1, "newImageFile"    # Ljava/io/File;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/utils/PhotoUtils$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/airbnb/android/utils/PhotoUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/airbnb/android/services/GroupPhotoUploadService;->intentForUpload(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/utils/PhotoUtils$1;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
