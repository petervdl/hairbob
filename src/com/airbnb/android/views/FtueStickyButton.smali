.class public Lcom/airbnb/android/views/FtueStickyButton;
.super Lcom/airbnb/android/views/StickyButton;
.source "FtueStickyButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/StickyButton;-><init>(Landroid/content/Context;)V

    .line 13
    invoke-direct {p0}, Lcom/airbnb/android/views/FtueStickyButton;->init()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/StickyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/views/FtueStickyButton;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/StickyButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/views/FtueStickyButton;->init()V

    .line 24
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/views/FtueStickyButton;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/airbnb/android/views/FtueStickyButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 29
    invoke-virtual {p0}, Lcom/airbnb/android/views/FtueStickyButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301d8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/FtueStickyButton;->addView(Landroid/view/View;)V

    .line 30
    return-void
.end method
