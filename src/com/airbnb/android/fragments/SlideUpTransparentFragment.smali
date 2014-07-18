.class public abstract Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "SlideUpTransparentFragment.java"


# static fields
.field private static final FLING_DOWN_ANIMATION_DURATION:I = 0xc8

.field private static final MAX_DISTANCE_CLOSE_ENOUGH:I = 0x14

.field private static final MAX_TAP_MOVE_DISTANCE:I = 0x14

.field private static final MIN_FLING_DISTANCE:I = 0x32

.field private static final MIN_FLING_SPEED:I = 0xfa

.field private static final MIN_PUSH_DOWN_DISTANCE:I = 0x96

.field private static final MIN_PUSH_DOWN_RATIO:F = 0.4f

.field private static PX_PER_DP:F


# instance fields
.field private mCanStillBeTapEvent:Z

.field private mContentScrollPosition:I

.field private mDownX:F

.field private mDownY:F

.field private mHeaderHeights:F

.field private mLastSetY:F

.field protected mListView:Landroid/widget/ListView;

.field protected mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

.field protected mScrollViewContentContainer:Landroid/widget/LinearLayout;

.field private mShouldScrollFragment:Z

.field private mSlideUpActivity:Lcom/airbnb/android/activities/SlideUpTransparentActivity;

.field protected mStickyButton:Lcom/airbnb/android/views/StickyButton;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    .line 41
    const/high16 v0, -0x40800000

    iput v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mHeaderHeights:F

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mLastSetY:F

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mContentScrollPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    .prologue
    .line 24
    iget v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mContentScrollPosition:I

    return v0
.end method

.method static synthetic access$002(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;I)I
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mContentScrollPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mShouldScrollFragment:Z

    return v0
.end method

.method static synthetic access$102(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mShouldScrollFragment:Z

    return p1
.end method

.method static synthetic access$200()F
    .registers 1

    .prologue
    .line 24
    sget v0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->PX_PER_DP:F

    return v0
.end method

.method static synthetic access$300(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    .prologue
    .line 24
    iget v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownX:F

    return v0
.end method

.method static synthetic access$302(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownX:F

    return p1
.end method

.method static synthetic access$400(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    .prologue
    .line 24
    iget v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownY:F

    return v0
.end method

.method static synthetic access$402(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mDownY:F

    return p1
.end method

.method static synthetic access$500(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mCanStillBeTapEvent:Z

    return v0
.end method

.method static synthetic access$502(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mCanStillBeTapEvent:Z

    return p1
.end method

.method static synthetic access$600(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)Lcom/airbnb/android/activities/SlideUpTransparentActivity;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mSlideUpActivity:Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    .prologue
    .line 24
    iget v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mLastSetY:F

    return v0
.end method

.method static synthetic access$702(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;F)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mLastSetY:F

    return p1
.end method

.method static synthetic access$800(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)F
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/SlideUpTransparentFragment;

    .prologue
    .line 24
    iget v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mHeaderHeights:F

    return v0
.end method

.method private makeOnTouchListener()Landroid/view/View$OnTouchListener;
    .registers 2

    .prologue
    .line 170
    new-instance v0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$5;-><init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V

    return-object v0
.end method


# virtual methods
.method public getTransparentHeaderHeight()F
    .registers 4

    .prologue
    .line 69
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 70
    .local v0, "screenHeight":I
    int-to-float v1, v0

    const v2, 0x3f2ac083

    mul-float/2addr v1, v2

    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    iput-object v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mSlideUpActivity:Lcom/airbnb/android/activities/SlideUpTransparentActivity;

    .line 59
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->getTransparentHeaderHeight()F

    move-result v0

    iput v0, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mHeaderHeights:F

    .line 61
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->PX_PER_DP:F

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/AirFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 85
    const v5, 0x7f0300ed

    const/4 v8, 0x0

    invoke-virtual {p1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 86
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f0802a2

    invoke-static {v3, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mListView:Landroid/widget/ListView;

    .line 87
    const v5, 0x7f0802a3

    invoke-static {v3, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/VerboseScrollView;

    iput-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    .line 88
    const v5, 0x7f0802a4

    invoke-static {v3, v5}, Lbutterknife/ButterKnife;->findById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mScrollViewContentContainer:Landroid/widget/LinearLayout;

    .line 89
    const v5, 0x7f0802a6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/android/views/StickyButton;

    iput-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    .line 91
    iget-object v8, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->useListView()Z

    move-result v5

    if-eqz v5, :cond_a2

    move v5, v6

    :goto_43
    invoke-virtual {v8, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 92
    iget-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->useListView()Z

    move-result v8

    if-eqz v8, :cond_a4

    :goto_4e
    invoke-virtual {v5, v7}, Lcom/airbnb/android/views/VerboseScrollView;->setVisibility(I)V

    .line 94
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->useListView()Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 96
    iget-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->makeOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    iget-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mListView:Landroid/widget/ListView;

    new-instance v6, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$1;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$1;-><init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 148
    :goto_6a
    invoke-static {}, Lcom/airbnb/android/utils/MiscUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int v4, v5, v6

    .line 149
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 150
    .local v0, "dimenWidth":I
    if-ge v0, v4, :cond_d8

    move v1, v0

    .line 151
    .local v1, "newWidth":I
    :goto_89
    iget-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    invoke-virtual {v5}, Lcom/airbnb/android/views/VerboseScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    iget-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mStickyButton:Lcom/airbnb/android/views/StickyButton;

    invoke-virtual {v5}, Lcom/airbnb/android/views/StickyButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    iget-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 155
    return-object v3

    .end local v0    # "dimenWidth":I
    .end local v1    # "newWidth":I
    .end local v4    # "width":I
    :cond_a2
    move v5, v7

    .line 91
    goto :goto_43

    :cond_a4
    move v7, v6

    .line 92
    goto :goto_4e

    .line 114
    :cond_a6
    iget-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    invoke-direct {p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->makeOnTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/VerboseScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    iget-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    new-instance v6, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$2;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$2;-><init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/VerboseScrollView;->setOnInterceptTouchEventListener(Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;)V

    .line 128
    iget-object v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    new-instance v6, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$3;

    invoke-direct {v6, p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$3;-><init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V

    invoke-virtual {v5, v6}, Lcom/airbnb/android/views/VerboseScrollView;->setOnScrollListener(Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;)V

    .line 136
    iget v5, p0, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->mHeaderHeights:F

    invoke-virtual {p0, v3, v5}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment;->setTransparentHeaderHeight(Landroid/view/View;F)V

    .line 138
    const v5, 0x7f0802a1

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, "transparentBackground":Landroid/view/View;
    new-instance v5, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$4;

    invoke-direct {v5, p0}, Lcom/airbnb/android/fragments/SlideUpTransparentFragment$4;-><init>(Lcom/airbnb/android/fragments/SlideUpTransparentFragment;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6a

    .end local v2    # "transparentBackground":Landroid/view/View;
    .restart local v0    # "dimenWidth":I
    .restart local v4    # "width":I
    :cond_d8
    move v1, v4

    .line 150
    goto :goto_89
.end method

.method protected setTransparentHeaderHeight(Landroid/view/View;F)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "height"    # F

    .prologue
    .line 159
    const v1, 0x7f0802a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 160
    .local v0, "transparentHeader":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v2, p2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    return-void
.end method

.method public abstract useListView()Z
.end method
