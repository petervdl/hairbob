.class public Lcom/airbnb/android/views/StaggeredHackbornGridView;
.super Lcom/airbnb/android/views/AirStaggeredGridView;
.source "StaggeredHackbornGridView.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/ViewPagerAbsListView;


# instance fields
.field private mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/airbnb/android/views/AirStaggeredGridView;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-direct {p0}, Lcom/airbnb/android/views/StaggeredHackbornGridView;->init()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/AirStaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/views/StaggeredHackbornGridView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/AirStaggeredGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/views/StaggeredHackbornGridView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 32
    new-instance v0, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    invoke-direct {v0}, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/views/StaggeredHackbornGridView;->mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    .line 33
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/airbnb/android/views/StaggeredHackbornGridView;->mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 53
    const/4 v0, 0x1

    .line 56
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirStaggeredGridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public getListView()Landroid/widget/AbsListView;
    .registers 1

    .prologue
    .line 40
    return-object p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/airbnb/android/views/StaggeredHackbornGridView;->mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->handleOnInterceptTouchEvent(Landroid/view/MotionEvent;)V

    .line 47
    invoke-super {p0, p1}, Lcom/airbnb/android/views/AirStaggeredGridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/airbnb/android/views/StaggeredHackbornGridView;->mEventHandler:Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;

    invoke-virtual {v0, p1}, Lcom/airbnb/android/utils/HackBornViewTouchEventHandler;->setCurrentViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 37
    return-void
.end method
