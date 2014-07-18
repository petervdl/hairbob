.class Lcom/airbnb/android/activities/OfficialIdActivity$2;
.super Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
.source "OfficialIdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/OfficialIdActivity;->uploadId()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/OfficialIdActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/io/File;)V
    .registers 3
    .param p2, "x0"    # Ljava/io/File;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity$2;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    invoke-direct {p0, p2}, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/io/File;)V
    .registers 7
    .param p1, "newFrontImageFile"    # Ljava/io/File;

    .prologue
    .line 364
    iget-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity$2;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mOfficialIdType:Ljava/lang/String;
    invoke-static {v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$300(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PASSPORT"

    if-eq v2, v3, :cond_2e

    .line 365
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity$2;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    # getter for: Lcom/airbnb/android/activities/OfficialIdActivity;->mIdBackUriString:Ljava/lang/String;
    invoke-static {v2}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$400(Lcom/airbnb/android/activities/OfficialIdActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "backIdImage":Ljava/io/File;
    new-instance v0, Lcom/airbnb/android/activities/OfficialIdActivity$2$1;

    invoke-direct {v0, p0, v1, p1}, Lcom/airbnb/android/activities/OfficialIdActivity$2$1;-><init>(Lcom/airbnb/android/activities/OfficialIdActivity$2;Ljava/io/File;Ljava/io/File;)V

    .line 372
    .local v0, "backCompressTask":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    instance-of v4, v0, Landroid/os/AsyncTask;

    if-nez v4, :cond_28

    invoke-virtual {v0, v2, v3}, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 377
    .end local v0    # "backCompressTask":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    .end local v1    # "backIdImage":Ljava/io/File;
    :goto_27
    return-void

    .line 372
    .restart local v0    # "backCompressTask":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    .restart local v1    # "backIdImage":Ljava/io/File;
    :cond_28
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "backCompressTask":Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
    invoke-static {v0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_27

    .line 374
    .end local v1    # "backIdImage":Ljava/io/File;
    :cond_2e
    iget-object v2, p0, Lcom/airbnb/android/activities/OfficialIdActivity$2;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    const/4 v3, 0x0

    # invokes: Lcom/airbnb/android/activities/OfficialIdActivity;->uploadImages(Ljava/io/File;Ljava/io/File;)V
    invoke-static {v2, p1, v3}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$500(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/io/File;Ljava/io/File;)V

    goto :goto_27
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 360
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/OfficialIdActivity$2;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
