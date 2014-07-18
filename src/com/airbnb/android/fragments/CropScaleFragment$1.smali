.class Lcom/airbnb/android/fragments/CropScaleFragment$1;
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
    .line 88
    iput-object p1, p0, Lcom/airbnb/android/fragments/CropScaleFragment$1;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/airbnb/android/fragments/CropScaleFragment$1;->this$0:Lcom/airbnb/android/fragments/CropScaleFragment;

    # getter for: Lcom/airbnb/android/fragments/CropScaleFragment;->mCropListener:Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;
    invoke-static {v0}, Lcom/airbnb/android/fragments/CropScaleFragment;->access$000(Lcom/airbnb/android/fragments/CropScaleFragment;)Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/airbnb/android/fragments/CropScaleFragment$PhotoCropListener;->onCropCancel()V

    .line 93
    return-void
.end method
