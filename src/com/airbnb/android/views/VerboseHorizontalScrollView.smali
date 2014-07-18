.class public Lcom/airbnb/android/views/VerboseHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "VerboseHorizontalScrollView.java"


# instance fields
.field private mInterceptTouchEventListener:Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

.field private mScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->mInterceptTouchEventListener:Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

    if-eqz v0, :cond_b

    .line 46
    iget-object v0, p0, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->mInterceptTouchEventListener:Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

    invoke-interface {v0, p1}, Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 48
    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method protected onScrollChanged(IIII)V
    .registers 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 37
    iget-object v0, p0, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->mScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    if-eqz v0, :cond_c

    .line 39
    iget-object v0, p0, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->mScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    invoke-interface {v0, p1, p2}, Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;->onScroll(II)V

    .line 41
    :cond_c
    return-void
.end method

.method public setOnInterceptTouchEventListener(Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;)V
    .registers 2
    .param p1, "callback"    # Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->mInterceptTouchEventListener:Lcom/airbnb/android/views/VerboseScrollView$OnInterceptTouchEventListener;

    .line 31
    return-void
.end method

.method public setOnScrollListener(Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/airbnb/android/views/VerboseHorizontalScrollView;->mScrollListener:Lcom/airbnb/android/views/VerboseScrollView$ScrollViewOnScrollListener;

    .line 27
    return-void
.end method
