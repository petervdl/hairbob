.class public abstract Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "ROScrollViewFragmentBase.java"

# interfaces
.implements Lcom/airbnb/android/adapters/ROPagerAdapter$TabHolderScrollingContent;


# instance fields
.field private mImageFrame:Landroid/view/View;

.field private mOnScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

.field protected mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

.field private mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

.field private mTabBarFrame:Landroid/view/View;

.field protected mTabBarHeight:I

.field protected mTopImageHeight:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustScroll(I)V
    .registers 6
    .param p1, "tabBarTop"    # I

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    invoke-virtual {v0}, Lcom/airbnb/android/views/VerboseScrollView;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mTopImageHeight:I

    if-le v0, v1, :cond_13

    .line 82
    :cond_12
    :goto_12
    return-void

    .line 81
    :cond_13
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    invoke-virtual {v1}, Lcom/airbnb/android/views/VerboseScrollView;->getScrollX()I

    move-result v1

    neg-int v2, p1

    iget v3, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mTopImageHeight:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/views/VerboseScrollView;->scrollTo(II)V

    goto :goto_12
.end method

.method public abstract getFragmentLayout()I
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->onAttach(Landroid/app/Activity;)V

    .line 88
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/airbnb/android/interfaces/ROFragmentInterface;

    if-nez v0, :cond_2b

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parent fragment must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_2b
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/interfaces/ROFragmentInterface;

    iput-object v0, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->getFragmentLayout()I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getScrollViewOnScrollListener()Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mOnScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    .line 37
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getHeaderImageHeight()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mTopImageHeight:I

    .line 38
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->getTabBarHeight()I

    move-result v1

    iput v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mTabBarHeight:I

    .line 40
    const v1, 0x7f080204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/views/VerboseScrollView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    .line 41
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/VerboseScrollView;->setOverScrollMode(I)V

    .line 42
    const v1, 0x7f080466

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mImageFrame:Landroid/view/View;

    .line 43
    const v1, 0x7f080467

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mTabBarFrame:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mImageFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mTopImageHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mTabBarFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mROFragmentInterface:Lcom/airbnb/android/interfaces/ROFragmentInterface;

    invoke-interface {v1}, Lcom/airbnb/android/interfaces/ROFragmentInterface;->isSingleTab()Z

    move-result v1

    if-eqz v1, :cond_6d

    const/4 v1, 0x0

    :goto_5d
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->getUserVisibleHint()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 49
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mOnScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    invoke-virtual {v1, v2}, Lcom/airbnb/android/views/VerboseScrollView;->setOnScrollListener(Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;)V

    .line 54
    :goto_6c
    return-object v0

    .line 46
    :cond_6d
    iget v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mTabBarHeight:I

    goto :goto_5d

    .line 51
    :cond_70
    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    invoke-virtual {v1, v3}, Lcom/airbnb/android/views/VerboseScrollView;->setOnScrollListener(Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;)V

    goto :goto_6c
.end method

.method public setUserVisibleHint(Z)V
    .registers 4
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/AirFragment;->setUserVisibleHint(Z)V

    .line 63
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    if-eqz v0, :cond_21

    .line 64
    if-eqz p1, :cond_22

    .line 65
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 66
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/airbnb/android/utils/KeyboardUtils;->dismissSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 68
    :cond_1a
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    iget-object v1, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mOnScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/VerboseScrollView;->setOnScrollListener(Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;)V

    .line 73
    :cond_21
    :goto_21
    return-void

    .line 70
    :cond_22
    iget-object v0, p0, Lcom/airbnb/android/fragments/ROScrollViewFragmentBase;->mScrollView:Lcom/airbnb/android/views/VerboseScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/android/views/VerboseScrollView;->setOnScrollListener(Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;)V

    goto :goto_21
.end method
