.class Lcom/airbnb/android/fragments/SlideUpTransparentFragment$2;
.super Ljava/lang/Object;
.source "SlideUpTransparentFragment.java"

# interfaces
.implements Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$2;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_37

    .line 120
    iget-object v3, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$2;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$2;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mContentScrollPosition:I
    invoke-static {v0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$000(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x41a00000

    # getter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->PX_PER_DP:F
    invoke-static {}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$200()F

    move-result v5

    mul-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gez v0, :cond_38

    move v0, v1

    :goto_1d
    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mShouldScrollFragment:Z
    invoke-static {v3, v0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$102(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;Z)Z

    .line 121
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$2;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownX:F
    invoke-static {v0, v3}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$302(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;F)F

    .line 122
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$2;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownY:F
    invoke-static {v0, v3}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$402(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;F)F

    .line 123
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$2;->this$0:Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    # setter for: Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mCanStillBeTapEvent:Z
    invoke-static {v0, v1}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->access$502(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;Z)Z

    .line 125
    :cond_37
    return v2

    :cond_38
    move v0, v2

    .line 120
    goto :goto_1d
.end method
