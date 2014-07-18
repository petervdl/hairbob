.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$6;
.super Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;
.source "CompleteProfilePhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->completePhotoSelection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

.field final synthetic val$outputFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Ljava/io/File;)V
    .registers 3

    .prologue
    .line 345
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$6;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    iput-object p2, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$6;->val$outputFile:Ljava/io/File;

    invoke-direct {p0}, Lcom/airbnb/android/tasks/MemoryBitmapScalingTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 345
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$6;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .registers 4
    .param p1, "dst"    # Ljava/lang/String;

    .prologue
    .line 349
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$6;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 350
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$6;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$6;->val$outputFile:Ljava/io/File;

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->uploadPhoto(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->access$400(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Ljava/io/File;)V

    .line 352
    :cond_11
    return-void
.end method
