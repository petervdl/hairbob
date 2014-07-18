.class Lcom/airbnb/android/views/LoopingViewPager$1;
.super Ljava/lang/Object;
.source "LoopingViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/LoopingViewPager;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/LoopingViewPager;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/LoopingViewPager;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hideViewPagerAndScroll(I)V
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    # getter for: Lcom/airbnb/android/views/LoopingViewPager;->mLoopingEnabled:Z
    invoke-static {v0}, Lcom/airbnb/android/views/LoopingViewPager;->access$100(Lcom/airbnb/android/views/LoopingViewPager;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 80
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v0, v0, Lcom/airbnb/android/views/LoopingViewPager;->mCurtainImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v2, v2, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-static {v2}, Lcom/airbnb/android/utils/MiscUtils;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v0, v0, Lcom/airbnb/android/views/LoopingViewPager;->mCurtainImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v0, v0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v0, p1, v3}, Lcom/airbnb/android/views/ClickableViewPager;->setCurrentItem(IZ)V

    .line 88
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v0, v0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    new-instance v1, Lcom/airbnb/android/views/LoopingViewPager$1$1;

    invoke-direct {v1, p0}, Lcom/airbnb/android/views/LoopingViewPager$1$1;-><init>(Lcom/airbnb/android/views/LoopingViewPager$1;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/ClickableViewPager;->post(Ljava/lang/Runnable;)Z

    .line 97
    :cond_37
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x2

    .line 101
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    # getter for: Lcom/airbnb/android/views/LoopingViewPager;->mPageChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v1}, Lcom/airbnb/android/views/LoopingViewPager;->access$000(Lcom/airbnb/android/views/LoopingViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 102
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    # getter for: Lcom/airbnb/android/views/LoopingViewPager;->mPageChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v1}, Lcom/airbnb/android/views/LoopingViewPager;->access$000(Lcom/airbnb/android/views/LoopingViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 105
    :cond_12
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    # getter for: Lcom/airbnb/android/views/LoopingViewPager;->mLoopingEnabled:Z
    invoke-static {v1}, Lcom/airbnb/android/views/LoopingViewPager;->access$100(Lcom/airbnb/android/views/LoopingViewPager;)Z

    move-result v1

    if-eqz v1, :cond_3c

    if-eqz p1, :cond_1e

    if-ne p1, v2, :cond_3c

    .line 106
    :cond_1e
    if-nez p1, :cond_3c

    .line 107
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v1, v1, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getCurrentItem()I

    move-result v0

    .line 110
    .local v0, "pos":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_3d

    .line 112
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v1, v1, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-direct {p0, v1}, Lcom/airbnb/android/views/LoopingViewPager$1;->hideViewPagerAndScroll(I)V

    .line 121
    .end local v0    # "pos":I
    :cond_3c
    :goto_3c
    return-void

    .line 115
    .restart local v0    # "pos":I
    :cond_3d
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    iget-object v1, v1, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_3c

    .line 117
    invoke-direct {p0, v2}, Lcom/airbnb/android/views/LoopingViewPager$1;->hideViewPagerAndScroll(I)V

    goto :goto_3c
.end method

.method public onPageScrolled(IFI)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    # getter for: Lcom/airbnb/android/views/LoopingViewPager;->mPageChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/airbnb/android/views/LoopingViewPager;->access$000(Lcom/airbnb/android/views/LoopingViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 72
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    # getter for: Lcom/airbnb/android/views/LoopingViewPager;->mPageChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/airbnb/android/views/LoopingViewPager;->access$000(Lcom/airbnb/android/views/LoopingViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 74
    :cond_11
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    # getter for: Lcom/airbnb/android/views/LoopingViewPager;->mPageChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/airbnb/android/views/LoopingViewPager;->access$000(Lcom/airbnb/android/views/LoopingViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 65
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager$1;->this$0:Lcom/airbnb/android/views/LoopingViewPager;

    # getter for: Lcom/airbnb/android/views/LoopingViewPager;->mPageChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Lcom/airbnb/android/views/LoopingViewPager;->access$000(Lcom/airbnb/android/views/LoopingViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 67
    :cond_11
    return-void
.end method
