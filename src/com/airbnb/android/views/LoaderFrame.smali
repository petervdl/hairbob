.class public Lcom/airbnb/android/views/LoaderFrame;
.super Landroid/widget/FrameLayout;
.source "LoaderFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/LoaderFrame$LoaderFrameDisplay;
    }
.end annotation


# instance fields
.field private mLoader:Lcom/airbnb/android/views/PropertySpinnerLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x2

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v1, Lcom/airbnb/android/views/PropertySpinnerLoader;

    invoke-direct {v1, p1}, Lcom/airbnb/android/views/PropertySpinnerLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/airbnb/android/views/LoaderFrame;->mLoader:Lcom/airbnb/android/views/PropertySpinnerLoader;

    .line 23
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 26
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/airbnb/android/views/LoaderFrame;->setClickable(Z)V

    .line 27
    iget-object v1, p0, Lcom/airbnb/android/views/LoaderFrame;->mLoader:Lcom/airbnb/android/views/PropertySpinnerLoader;

    invoke-virtual {p0, v1, v0}, Lcom/airbnb/android/views/LoaderFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/LoaderFrame;)Lcom/airbnb/android/views/PropertySpinnerLoader;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/LoaderFrame;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/airbnb/android/views/LoaderFrame;->mLoader:Lcom/airbnb/android/views/PropertySpinnerLoader;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x258

    .line 31
    invoke-virtual {p0}, Lcom/airbnb/android/views/LoaderFrame;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 32
    invoke-virtual {p0}, Lcom/airbnb/android/views/LoaderFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 35
    :cond_14
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/airbnb/android/views/LoaderFrame$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/LoaderFrame$1;-><init>(Lcom/airbnb/android/views/LoaderFrame;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 42
    return-void
.end method

.method public setVisibility(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 53
    if-nez p1, :cond_a

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/LoaderFrame;->setClickable(Z)V

    .line 54
    return-void

    .line 53
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public startAnimation()V
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/LoaderFrame;->setVisibility(I)V

    .line 46
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/LoaderFrame;->setAlpha(F)V

    .line 47
    iget-object v0, p0, Lcom/airbnb/android/views/LoaderFrame;->mLoader:Lcom/airbnb/android/views/PropertySpinnerLoader;

    invoke-virtual {v0}, Lcom/airbnb/android/views/PropertySpinnerLoader;->startAnimation()V

    .line 48
    return-void
.end method
