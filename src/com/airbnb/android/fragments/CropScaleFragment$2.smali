.class Lcom/airbnb/android/fragments/CropScaleFragment$2;
.super Ljava/lang/Object;
.source "CropScaleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CropScaleFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CropScaleFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CropScaleFragment;)V
    .registers 2

    .prologue
    .line 97
    iput-object p1, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v3, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    # getter for: Lcom/airbnb/android/fragments/CropScaleFragment;->mLoaderFrame:Lcom/airbnb/android/views/LoaderFrame;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CropScaleFragment;->access$100(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/views/LoaderFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/views/LoaderFrame;->startAnimation()V

    .line 102
    iget-object v3, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    # getter for: Lcom/airbnb/android/fragments/CropScaleFragment;->mCropImageView:Lcom/airbnb/android/views/CropImageView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CropScaleFragment;->access$200(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/views/CropImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/views/CropImageView;->getBitmapWidth()I

    move-result v2

    .line 103
    .local v2, "width":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    # getter for: Lcom/airbnb/android/fragments/CropScaleFragment;->mCropImageView:Lcom/airbnb/android/views/CropImageView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CropScaleFragment;->access$200(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/views/CropImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/views/CropImageView;->getBitmapHeight()I

    move-result v0

    .line 104
    .local v0, "height":I
    iget-object v3, p0, Lcom/airbnb/android/fragments/CropScaleFragment$2;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    # getter for: Lcom/airbnb/android/fragments/CropScaleFragment;->mCropImageView:Lcom/airbnb/android/views/CropImageView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/CropScaleFragment;->access$200(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/views/CropImageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/android/views/CropImageView;->getSelectedRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 106
    .local v1, "rect":Landroid/graphics/RectF;
    new-instance v3, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;-><init>(Lcom/airbnb/android/fragments/CropScaleFragment$2;II)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    instance-of v5, v3, Landroid/os/AsyncTask;

    if-nez v5, :cond_3a

    invoke-virtual {v3, v4}, Lcom/airbnb/android/fragments/CropScaleFragment$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    :goto_39
    return-void

    .line 106
    :cond_3a
    check-cast v3, Landroid/os/AsyncTask;

    invoke-static {v3, v4}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_39
.end method
