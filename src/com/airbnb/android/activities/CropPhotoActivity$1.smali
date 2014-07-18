.class Lcom/airbnb/android/activities/CropPhotoActivity$1;
.super Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;
.source "CropPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/CropPhotoActivity;->scalePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/activities/CropPhotoActivity;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/CropPhotoActivity;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/airbnb/android/activities/CropPhotoActivity$1;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    invoke-direct {p0}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity$1;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    # invokes: Lcom/airbnb/android/activities/CropPhotoActivity;->hideProgressSpinner()V
    invoke-static {v0}, Lcom/airbnb/android/activities/CropPhotoActivity;->access$000(Lcom/airbnb/android/activities/CropPhotoActivity;)V

    .line 89
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity$1;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    # setter for: Lcom/airbnb/android/activities/CropPhotoActivity;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/airbnb/android/activities/CropPhotoActivity;->access$102(Lcom/airbnb/android/activities/CropPhotoActivity;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 90
    iget-object v0, p0, Lcom/airbnb/android/activities/CropPhotoActivity$1;->this$0:Lcom/airbnb/android/activities/CropPhotoActivity;

    # invokes: Lcom/airbnb/android/activities/CropPhotoActivity;->showCropFragment(Landroid/graphics/Bitmap;)V
    invoke-static {v0, p1}, Lcom/airbnb/android/activities/CropPhotoActivity;->access$200(Lcom/airbnb/android/activities/CropPhotoActivity;Landroid/graphics/Bitmap;)V

    .line 91
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/activities/CropPhotoActivity$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
