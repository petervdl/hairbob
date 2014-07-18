.class public Lcom/airbnb/android/views/ROTabButton;
.super Landroid/widget/LinearLayout;
.source "ROTabButton.java"


# static fields
.field private static final ALPHA_SELECTED:F = 1.0f

.field private static final ALPHA_UNSELECTED:F = 0.6f


# instance fields
.field private mContainerView:Landroid/widget/FrameLayout;

.field private mImageView:Landroid/widget/ImageView;

.field private mSelectedBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/views/ROTabButton;->setupViews()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0}, Lcom/airbnb/android/views/ROTabButton;->setupViews()V

    .line 32
    return-void
.end method

.method private setupViews()V
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/airbnb/android/views/ROTabButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301bb

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    const v0, 0x7f0804af

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/ROTabButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mContainerView:Landroid/widget/FrameLayout;

    .line 38
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mContainerView:Landroid/widget/FrameLayout;

    const v1, 0x7f0804b0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mImageView:Landroid/widget/ImageView;

    .line 39
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mContainerView:Landroid/widget/FrameLayout;

    const v1, 0x7f0804b1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mSelectedBar:Landroid/view/View;

    .line 40
    return-void
.end method


# virtual methods
.method public getIconButton()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setImageResource(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0a00a4

    invoke-static {p1, v1}, Lcom/airbnb/android/utils/ColorizedDrawable;->forIdWithColor(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method public setSelected(Z)V
    .registers 5
    .param p1, "selected"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 46
    iget-object v1, p0, Lcom/airbnb/android/views/ROTabButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 47
    if-eqz p1, :cond_1a

    const/high16 v0, 0x3f800000

    .line 48
    .local v0, "updatedAlpha":F
    :goto_c
    iget-object v1, p0, Lcom/airbnb/android/views/ROTabButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 49
    iget-object v2, p0, Lcom/airbnb/android/views/ROTabButton;->mSelectedBar:Landroid/view/View;

    if-eqz p1, :cond_1e

    const/4 v1, 0x0

    :goto_16
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    return-void

    .line 47
    .end local v0    # "updatedAlpha":F
    :cond_1a
    const v0, 0x3f19999a

    goto :goto_c

    .line 49
    .restart local v0    # "updatedAlpha":F
    :cond_1e
    const/4 v1, 0x4

    goto :goto_16
.end method

.method public setTabButtonAlpha(F)V
    .registers 3
    .param p1, "alpha"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 64
    iget-object v0, p0, Lcom/airbnb/android/views/ROTabButton;->mSelectedBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 65
    return-void
.end method
