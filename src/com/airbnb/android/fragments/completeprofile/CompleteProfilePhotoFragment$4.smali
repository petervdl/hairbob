.class Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$4;
.super Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;
.source "CompleteProfilePhotoFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->onPhotoCapture(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)V
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    invoke-direct {p0}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    iget-object v1, p0, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$4;->this$0:Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;

    # getter for: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->mFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->access$100(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->showCropFragment(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;->access$200(Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 259
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 255
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/completeprofile/CompleteProfilePhotoFragment$4;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
