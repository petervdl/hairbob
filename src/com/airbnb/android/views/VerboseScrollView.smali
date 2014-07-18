.class public Lcom/airbnb/android/views/VerboseScrollView;
.super Landroid/widget/ScrollView;
.source "VerboseScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;,
        Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;
    }
.end annotation


# instance fields
.field private mInterceptTouchEventListener:Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

.field private mScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "intercept":Z
    iget-object v1, p0, Lcom/airbnb/android/views/VerboseScrollView;->mInterceptTouchEventListener:Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

    if-eqz v1, :cond_b

    .line 61
    iget-object v1, p0, Lcom/airbnb/android/views/VerboseScrollView;->mInterceptTouchEventListener:Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

    invoke-interface {v1, p1}, Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 64
    :cond_b
    if-nez v0, :cond_13

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_13
    const/4 v1, 0x1

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 51
    iget-object v0, p0, Lcom/airbnb/android/views/VerboseScrollView;->mScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    if-eqz v0, :cond_c

    .line 53
    iget-object v0, p0, Lcom/airbnb/android/views/VerboseScrollView;->mScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;->onScroll(II)V

    .line 55
    :cond_c
    return-void
.end method

.method public setOnInterceptTouchEventListener(Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;)V
    .registers 2
    .param p1, "callback"    # Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/airbnb/android/views/VerboseScrollView;->mInterceptTouchEventListener:Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

    .line 45
    return-void
.end method

.method public setOnScrollListener(Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/airbnb/android/views/VerboseScrollView;->mScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    .line 41
    return-void
.end method
