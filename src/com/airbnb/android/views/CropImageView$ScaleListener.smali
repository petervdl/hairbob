.class Lcom/airbnb/android/views/CropImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/views/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/CropImageView;


# direct methods
.method private constructor <init>(Lcom/airbnb/android/views/CropImageView;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/airbnb/android/views/CropImageView$ScaleListener;->this$0:Lcom/airbnb/android/views/CropImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/android/views/CropImageView;Lcom/airbnb/android/views/CropImageView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/airbnb/android/views/CropImageView;
    .param p2, "x1"    # Lcom/airbnb/android/views/CropImageView$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/CropImageView$ScaleListener;-><init>(Lcom/airbnb/android/views/CropImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/airbnb/android/views/CropImageView$ScaleListener;->this$0:Lcom/airbnb/android/views/CropImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    # *= operator for: Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F
    invoke-static {v0, v1}, Lcom/airbnb/android/views/CropImageView;->access$132(Lcom/airbnb/android/views/CropImageView;F)F

    .line 211
    iget-object v0, p0, Lcom/airbnb/android/views/CropImageView$ScaleListener;->this$0:Lcom/airbnb/android/views/CropImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    # setter for: Lcom/airbnb/android/views/CropImageView;->mMidX:F
    invoke-static {v0, v1}, Lcom/airbnb/android/views/CropImageView;->access$202(Lcom/airbnb/android/views/CropImageView;F)F

    .line 212
    iget-object v0, p0, Lcom/airbnb/android/views/CropImageView$ScaleListener;->this$0:Lcom/airbnb/android/views/CropImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    # setter for: Lcom/airbnb/android/views/CropImageView;->mMidY:F
    invoke-static {v0, v1}, Lcom/airbnb/android/views/CropImageView;->access$302(Lcom/airbnb/android/views/CropImageView;F)F

    .line 214
    iget-object v0, p0, Lcom/airbnb/android/views/CropImageView$ScaleListener;->this$0:Lcom/airbnb/android/views/CropImageView;

    iget-object v1, p0, Lcom/airbnb/android/views/CropImageView$ScaleListener;->this$0:Lcom/airbnb/android/views/CropImageView;

    # getter for: Lcom/airbnb/android/views/CropImageView;->mMinScaleFactor:F
    invoke-static {v1}, Lcom/airbnb/android/views/CropImageView;->access$400(Lcom/airbnb/android/views/CropImageView;)F

    move-result v1

    iget-object v2, p0, Lcom/airbnb/android/views/CropImageView$ScaleListener;->this$0:Lcom/airbnb/android/views/CropImageView;

    # getter for: Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F
    invoke-static {v2}, Lcom/airbnb/android/views/CropImageView;->access$100(Lcom/airbnb/android/views/CropImageView;)F

    move-result v2

    const/high16 v3, 0x41200000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    # setter for: Lcom/airbnb/android/views/CropImageView;->mScaleFactor:F
    invoke-static {v0, v1}, Lcom/airbnb/android/views/CropImageView;->access$102(Lcom/airbnb/android/views/CropImageView;F)F

    .line 216
    iget-object v0, p0, Lcom/airbnb/android/views/CropImageView$ScaleListener;->this$0:Lcom/airbnb/android/views/CropImageView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/CropImageView;->invalidate()V

    .line 217
    const/4 v0, 0x1

    return v0
.end method
