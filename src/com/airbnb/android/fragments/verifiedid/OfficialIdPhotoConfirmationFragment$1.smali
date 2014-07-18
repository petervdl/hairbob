.class Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment$1;
.super Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;
.source "OfficialIdPhotoConfirmationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;)V
    .registers 2

    .prologue
    .line 72
    iput-object p1, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;

    invoke-direct {p0}, Lcom/airbnb/android/tasks/LocalBitmapForDisplayScalingTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 77
    iget-object v0, p0, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment$1;->this$0:Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;

    # getter for: Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->mIdPhotoPreview:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;->access$000(Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    :cond_11
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/airbnb/android/fragments/verifiedid/OfficialIdPhotoConfirmationFragment$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
