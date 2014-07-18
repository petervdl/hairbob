.class Lcom/airbnb/android/activities/OfficialIdActivity$2$1;
.super Lcom/airbnb/android/utils/ImageCompressAndRotateTask;
.source "OfficialIdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/OfficialIdActivity$2;->onPostExecute(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/activities/OfficialIdActivity$2;

.field final synthetic val$newFrontImageFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/OfficialIdActivity$2;Ljava/io/File;Ljava/io/File;)V
    .registers 4
    .param p2, "x0"    # Ljava/io/File;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/airbnb/android/activities/OfficialIdActivity$2$1;->this$1:Lcom/airbnb/android/activities/OfficialIdActivity$2;

    iput-object p3, p0, Lcom/airbnb/android/activities/OfficialIdActivity$2$1;->val$newFrontImageFile:Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/airbnb/android/utils/ImageCompressAndRotateTask;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/io/File;)V
    .registers 4
    .param p1, "newBackImageFile"    # Ljava/io/File;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/airbnb/android/activities/OfficialIdActivity$2$1;->this$1:Lcom/airbnb/android/activities/OfficialIdActivity$2;

    iget-object v0, v0, Lcom/airbnb/android/activities/OfficialIdActivity$2;->this$0:Lcom/airbnb/android/activities/OfficialIdActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/OfficialIdActivity$2$1;->val$newFrontImageFile:Ljava/io/File;

    # invokes: Lcom/airbnb/android/activities/OfficialIdActivity;->uploadImages(Ljava/io/File;Ljava/io/File;)V
    invoke-static {v0, v1, p1}, Lcom/airbnb/android/activities/OfficialIdActivity;->access$500(Lcom/airbnb/android/activities/OfficialIdActivity;Ljava/io/File;Ljava/io/File;)V

    .line 370
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 366
    check-cast p1, Ljava/io/File;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/OfficialIdActivity$2$1;->onPostExecute(Ljava/io/File;)V

    return-void
.end method
