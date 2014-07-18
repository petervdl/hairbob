.class public Lcom/airbnb/android/views/LoopingViewPager;
.super Landroid/widget/FrameLayout;
.source "LoopingViewPager.java"


# instance fields
.field mCurtainImageView:Landroid/widget/ImageView;

.field private mLoopingEnabled:Z

.field private mPageChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPeekEnabled:Z

.field mViewPager:Lcom/airbnb/android/views/ClickableViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/LoopingViewPager;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/LoopingViewPager;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/LoopingViewPager;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/views/LoopingViewPager;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/LoopingViewPager;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager;->mPageChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/views/LoopingViewPager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/views/LoopingViewPager;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/airbnb/android/views/LoopingViewPager;->mLoopingEnabled:Z

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030186

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "content":Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setOffscreenPageLimit(I)V

    .line 58
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setClipChildren(Z)V

    .line 60
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    new-instance v2, Lcom/airbnb/android/views/LoopingViewPager$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/views/LoopingViewPager$1;-><init>(Lcom/airbnb/android/views/LoopingViewPager;)V

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/ClickableViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 124
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/airbnb/android/adapters/LoopingPagerAdapter;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v0}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;

    return-object v0
.end method

.method public getViewPager()Lcom/airbnb/android/views/ClickableViewPager;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    return-object v0
.end method

.method public setAdapter(Lcom/airbnb/android/adapters/LoopingPagerAdapter;)V
    .registers 3
    .param p1, "pagerAdapter"    # Lcom/airbnb/android/adapters/LoopingPagerAdapter;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/ClickableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 132
    invoke-virtual {p1}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->isLoopingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/android/views/LoopingViewPager;->mLoopingEnabled:Z

    .line 133
    iget-boolean v0, p0, Lcom/airbnb/android/views/LoopingViewPager;->mPeekEnabled:Z

    invoke-virtual {p1, v0}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->setPeekEnabled(Z)V

    .line 134
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2
    .param p1, "pageChangedListner"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/airbnb/android/views/LoopingViewPager;->mPageChangedListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 46
    return-void
.end method

.method public setPeekEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/airbnb/android/views/LoopingViewPager;->mPeekEnabled:Z

    .line 139
    iget-object v2, p0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/airbnb/android/views/LoopingViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0068

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :goto_15
    invoke-virtual {v2, v1}, Lcom/airbnb/android/views/ClickableViewPager;->setPageMargin(I)V

    .line 142
    iget-object v1, p0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v1}, Lcom/airbnb/android/views/ClickableViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 143
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-eqz v0, :cond_25

    .line 144
    check-cast v0, Lcom/airbnb/android/adapters/LoopingPagerAdapter;

    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    invoke-virtual {v0, p1}, Lcom/airbnb/android/adapters/LoopingPagerAdapter;->setPeekEnabled(Z)V

    .line 146
    :cond_25
    return-void

    .line 139
    :cond_26
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public setViewPagerClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/views/LoopingViewPager;->mViewPager:Lcom/airbnb/android/views/ClickableViewPager;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/views/ClickableViewPager;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method
